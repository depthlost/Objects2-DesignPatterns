Class {
	#name : #EmpleadoPasante,
	#superclass : #Empleado,
	#instVars : [
		'examenesRendidos'
	],
	#category : #'TP4-CalculoSueldo'
}

{ #category : #construction }
EmpleadoPasante class >> examenesRendidos: unNumero [
	^ self new examenesRendidos: unNumero
]

{ #category : #calculating }
EmpleadoPasante >> calcularSueldoAdicional [
	^ examenesRendidos * 100
]

{ #category : #calculating }
EmpleadoPasante >> calcularSueldoBasico [
	^ 2000
]

{ #category : #initialize }
EmpleadoPasante >> examenesRendidos: unNumero [
	examenesRendidos := unNumero
]
