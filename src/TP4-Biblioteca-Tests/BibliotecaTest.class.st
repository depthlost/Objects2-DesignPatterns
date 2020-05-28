Class {
	#name : #BibliotecaTest,
	#superclass : #TestCase,
	#instVars : [
		'biblioteca',
		'socio1',
		'socio2'
	],
	#category : #'TP4-Biblioteca-Tests'
}

{ #category : #'as yet unclassified' }
BibliotecaTest >> resultadoJSONParaSocio: unSocio [
	^
		'[', Character cr asString,
		'	{', Character cr asString,
		'		"nombre" : "', unSocio nombre,'",',Character cr asString,
		'		"email" : "', unSocio email,'",',Character cr asString,
		'		"legajo" : "', unSocio legajo,'"',Character cr asString,
		'	}', Character cr asString,
		']'
]

{ #category : #running }
BibliotecaTest >> setUp [
	biblioteca := Biblioteca new: VoorheesExporter new.
	socio1 := Socio nombre: 'luis' email: 'luis@gmail.com' legajo: '123'.
	socio2 := Socio
		nombre: 'maria'
		email: 'maria@gmail.com'
		legajo: '234'
]

{ #category : #tests }
BibliotecaTest >> testAgregarSocio [
	self assert: biblioteca socios isEmpty.
	biblioteca agregarSocio: socio1.
	self assert: biblioteca socios size equals: 1.
	biblioteca agregarSocio: socio2.
	self assert: biblioteca socios size equals: 2
]

{ #category : #tests }
BibliotecaTest >> testExportarSocios [
	biblioteca agregarSocio: socio1.
	self
		assert: biblioteca exportarSocios
		equals: (self resultadoJSONParaSocio: socio1)
]
