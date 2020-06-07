Class {
	#name : #EmpleadoTemporarioTest,
	#superclass : #TestCase,
	#category : #'TP4-CalculoSueldo-Tests'
}

{ #category : #tests }
EmpleadoTemporarioTest >> testCalcularSueldoAdicional [
	| empleadoNoCasadoSinHijos empleadoNoCasadoConHijos empleadoCasadoSinHijos empleadoCasadoConHijos |
	empleadoNoCasadoSinHijos := EmpleadoTemporario
		estaCasado: false
		cantidadHijos: 0
		horasTrabajadas: 0.
	empleadoNoCasadoConHijos := EmpleadoTemporario
		estaCasado: false
		cantidadHijos: 2
		horasTrabajadas: 0.
	empleadoCasadoSinHijos := EmpleadoTemporario
		estaCasado: true
		cantidadHijos: 0
		horasTrabajadas: 0.
	empleadoCasadoConHijos := EmpleadoTemporario
		estaCasado: true
		cantidadHijos: 2
		horasTrabajadas: 0.
	self
		assert: empleadoNoCasadoSinHijos calcularSueldoAdicional equals: 0;
		assert: empleadoNoCasadoConHijos calcularSueldoAdicional equals: 200;
		assert: empleadoCasadoSinHijos calcularSueldoAdicional equals: 500;
		assert: empleadoCasadoConHijos calcularSueldoAdicional equals: 700
]

{ #category : #tests }
EmpleadoTemporarioTest >> testCalcularSueldoBasico [
	| empleadoSinHoras empleadoConHoras |
	empleadoSinHoras := EmpleadoTemporario
		estaCasado: false
		cantidadHijos: 0
		horasTrabajadas: 0.
	empleadoConHoras := EmpleadoTemporario
		estaCasado: false
		cantidadHijos: 0
		horasTrabajadas: 2.
	self
		assert: empleadoSinHoras calcularSueldoBasico equals: 4000;
		assert: empleadoConHoras calcularSueldoBasico equals: 4020
]

{ #category : #tests }
EmpleadoTemporarioTest >> testCalcularSueldoDescuento [
	self
		assert:
			(EmpleadoTemporario
				estaCasado: false
				cantidadHijos: 0
				horasTrabajadas: 0) calcularSueldoDescuento
		equals: 4000 * 0.13.
	self
		assert:
			(EmpleadoTemporario
				estaCasado: true
				cantidadHijos: 2
				horasTrabajadas: 10) calcularSueldoDescuento
		equals: 4100 * 0.13 + (700 * 0.05)
]

{ #category : #tests }
EmpleadoTemporarioTest >> testSueldo [
	self
		assert:
			(EmpleadoTemporario
				estaCasado: false
				cantidadHijos: 4
				horasTrabajadas: 10) sueldo
		equals: 3947.
	self
		assert:
			(EmpleadoTemporario
				estaCasado: true
				cantidadHijos: 4
				horasTrabajadas: 10) sueldo
		equals: 4422
]
