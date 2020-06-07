Class {
	#name : #EmpleadoNoPasante,
	#superclass : #Empleado,
	#instVars : [
		'estaCasado',
		'cantidadHijos'
	],
	#category : #'TP4-CalculoSueldo'
}

{ #category : #construction }
EmpleadoNoPasante class >> estaCasado: unBoolean cantidadHijos: unInteger [
	^ self new estaCasado: unBoolean cantidadHijos: unInteger
]

{ #category : #calculating }
EmpleadoNoPasante >> calcularSueldoAdicional [
	^ (estaCasado
		ifTrue: [ 500 ]
		ifFalse: [ 0 ]) + (cantidadHijos * 100)
]

{ #category : #initialization }
EmpleadoNoPasante >> estaCasado: unBoolean cantidadHijos: unInteger [
	estaCasado := unBoolean.
	cantidadHijos := unInteger
]
