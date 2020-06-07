Class {
	#name : #EmpleadoPasanteTest,
	#superclass : #TestCase,
	#instVars : [
		'empleadoSinExamenes',
		'empleadoCon2Examenes',
		'empleadoCon4Examenes'
	],
	#category : #'TP4-CalculoSueldo-Tests'
}

{ #category : #running }
EmpleadoPasanteTest >> setUp [
	empleadoSinExamenes := EmpleadoPasante examenesRendidos: 0.
	empleadoCon2Examenes := EmpleadoPasante examenesRendidos: 2.
	empleadoCon4Examenes := EmpleadoPasante examenesRendidos: 4
]

{ #category : #tests }
EmpleadoPasanteTest >> testCalcularSueldoAdicional [
	self
		assert: empleadoSinExamenes calcularSueldoAdicional equals: 0;
		assert: empleadoCon2Examenes calcularSueldoAdicional equals: 200;
		assert: empleadoCon4Examenes calcularSueldoAdicional equals: 400
]

{ #category : #tests }
EmpleadoPasanteTest >> testCalcularSueldoBasico [
	self
		assert: empleadoSinExamenes calcularSueldoBasico equals: 2000;
		assert: empleadoCon2Examenes calcularSueldoBasico equals: 2000;
		assert: empleadoCon4Examenes calcularSueldoBasico equals: 2000
]

{ #category : #tests }
EmpleadoPasanteTest >> testCalcularSueldoDescuento [
	self
		assert: empleadoSinExamenes calcularSueldoDescuento
			equals: 2000 * 0.13;
		assert: empleadoCon2Examenes calcularSueldoDescuento
			equals: 2000 * 0.13 + (200 * 0.05);
		assert: empleadoCon4Examenes calcularSueldoDescuento
			equals: 2000 * 0.13 + (400 * 0.05)
]

{ #category : #tests }
EmpleadoPasanteTest >> testSueldo [
	self
		assert: empleadoSinExamenes sueldo equals: 1740;
		assert: empleadoCon2Examenes sueldo equals: 1930;
		assert: empleadoCon4Examenes sueldo equals: 2120
]
