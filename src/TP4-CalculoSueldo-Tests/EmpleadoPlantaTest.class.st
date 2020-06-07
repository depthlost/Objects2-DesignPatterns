Class {
	#name : #EmpleadoPlantaTest,
	#superclass : #TestCase,
	#category : #'TP4-CalculoSueldo-Tests'
}

{ #category : #tests }
EmpleadoPlantaTest >> testCalcularSueldoAdicional [
	| empleadoNoCasadoSinHijos empleadoNoCasadoConHijos empleadoCasadoSinHijos empleadoCasadoConHijos |
	empleadoNoCasadoSinHijos := EmpleadoPlanta
		estaCasado: false
		cantidadHijos: 0
		aniosAntiguedad: 1.
	empleadoNoCasadoConHijos := EmpleadoPlanta
		estaCasado: false
		cantidadHijos: 2
		aniosAntiguedad: 10.
	empleadoCasadoSinHijos := EmpleadoPlanta
		estaCasado: true
		cantidadHijos: 0
		aniosAntiguedad: 0.
	empleadoCasadoConHijos := EmpleadoPlanta
		estaCasado: true
		cantidadHijos: 2
		aniosAntiguedad: 20.
	self
		assert: empleadoNoCasadoSinHijos calcularSueldoAdicional
			equals: 100;
		assert: empleadoNoCasadoConHijos calcularSueldoAdicional
			equals: 1200;
		assert: empleadoCasadoSinHijos calcularSueldoAdicional equals: 500;
		assert: empleadoCasadoConHijos calcularSueldoAdicional equals: 2700
]

{ #category : #tests }
EmpleadoPlantaTest >> testCalcularSueldoBasico [
	self
		assert:
			(EmpleadoPlanta estaCasado: false cantidadHijos: 0 aniosAntiguedad: 0)
				calcularSueldoBasico
			equals: 3000;
		assert:
			(EmpleadoPlanta estaCasado: true cantidadHijos: 4 aniosAntiguedad: 12)
				calcularSueldoBasico
			equals: 3000
]

{ #category : #tests }
EmpleadoPlantaTest >> testCalcularSueldoDescuento [
	self
		assert:
			(EmpleadoPlanta estaCasado: false cantidadHijos: 0 aniosAntiguedad: 0)
				calcularSueldoDescuento
		equals: 3000 * 0.13.
	self
		assert:
			(EmpleadoPlanta estaCasado: true cantidadHijos: 2 aniosAntiguedad: 10)
				calcularSueldoDescuento
		equals: 3000 * 0.13 + (1700 * 0.05)
]

{ #category : #tests }
EmpleadoPlantaTest >> testSueldo [
	self
		assert:
			(EmpleadoPlanta estaCasado: false cantidadHijos: 4 aniosAntiguedad: 10)
				sueldo
			equals: 3940;
		assert:
			(EmpleadoPlanta estaCasado: true cantidadHijos: 4 aniosAntiguedad: 10)
				sueldo
			equals: 4415
]
