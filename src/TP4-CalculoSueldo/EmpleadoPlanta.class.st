Class {
	#name : #EmpleadoPlanta,
	#superclass : #EmpleadoNoPasante,
	#instVars : [
		'aniosAntiguedad'
	],
	#category : #'TP4-CalculoSueldo'
}

{ #category : #construction }
EmpleadoPlanta class >> estaCasado: unBoolean cantidadHijos: unInteger aniosAntiguedad: otroInteger [
	^ (self estaCasado: unBoolean cantidadHijos: unInteger)
		aniosAntiguedad: otroInteger
]

{ #category : #initialization }
EmpleadoPlanta >> aniosAntiguedad: unInteger [
	aniosAntiguedad := unInteger
]

{ #category : #calculating }
EmpleadoPlanta >> calcularSueldoAdicional [
	^ super calcularSueldoAdicional + (aniosAntiguedad * 100)
]

{ #category : #calculating }
EmpleadoPlanta >> calcularSueldoBasico [
	^ 3000
]
