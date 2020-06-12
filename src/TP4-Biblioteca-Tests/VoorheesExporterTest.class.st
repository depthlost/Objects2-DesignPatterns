Class {
	#name : #VoorheesExporterTest,
	#superclass : #TestCase,
	#instVars : [
		'exporter',
		'soloUnSocio',
		'variosSocios'
	],
	#category : #'TP4-Biblioteca-Tests'
}

{ #category : #running }
VoorheesExporterTest >> setUp [
	exporter := VoorheesExporter new.
	soloUnSocio := OrderedCollection
		with: (Socio nombre: 'maria' email: 'maria@gmail.com' legajo: '12').
	variosSocios := OrderedCollection
		with: (Socio nombre: 'lisa' email: 'lisa@gmail.com' legajo: '4030')
		with: (Socio nombre: 'luis' email: 'luis@gmail.com' legajo: '2020')
		with: (Socio nombre: 'juan' email: 'juan@gmail.com' legajo: '4400')
]

{ #category : #tests }
VoorheesExporterTest >> testExport [
	"El test fue pensado como: el metodo export es correcto si tanto su resultado expresado con la clase NeoJSONReader y STON es el mismo"

	| result |
	result := exporter export: soloUnSocio.
	self
		assert: (NeoJSONReader fromString: result)
		equals: (STON fromString: result).
	result := exporter export: variosSocios.
	self
		assert: (NeoJSONReader fromString: result)
		equals: (STON fromString: result)
]
