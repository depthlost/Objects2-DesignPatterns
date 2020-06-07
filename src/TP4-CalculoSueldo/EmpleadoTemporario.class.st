Class {
	#name : #EmpleadoTemporario,
	#superclass : #EmpleadoNoPasante,
	#instVars : [
		'horasTrabajadas'
	],
	#category : #'TP4-CalculoSueldo'
}

{ #category : #construction }
EmpleadoTemporario class >> estaCasado: unBoolean cantidadHijos: unInteger horasTrabajadas: unFloat [
	^ (self estaCasado: unBoolean cantidadHijos: unInteger)
		horasTrabajadas: unFloat
]

{ #category : #calculating }
EmpleadoTemporario >> calcularSueldoBasico [
	^ 4000 + (horasTrabajadas * 10)
]

{ #category : #initialization }
EmpleadoTemporario >> horasTrabajadas: unFloat [
	horasTrabajadas := unFloat
]
