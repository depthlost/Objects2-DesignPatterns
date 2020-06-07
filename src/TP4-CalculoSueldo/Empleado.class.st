Class {
	#name : #Empleado,
	#superclass : #Object,
	#category : #'TP4-CalculoSueldo'
}

{ #category : #calculating }
Empleado >> calcularSueldoAdicional [
	self subclassResponsibility
]

{ #category : #calculating }
Empleado >> calcularSueldoBasico [
	self subclassResponsibility
]

{ #category : #calculating }
Empleado >> calcularSueldoDescuento [
	^ self calcularSueldoBasico * 0.13
		+ (self calcularSueldoAdicional * 0.05)
]

{ #category : #calculating }
Empleado >> sueldo [
	^ self calcularSueldoBasico + self calcularSueldoAdicional
		- self calcularSueldoDescuento
]
