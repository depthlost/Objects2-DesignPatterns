Class {
	#name : #DispositivoTest,
	#superclass : #TestCase,
	#instVars : [
		'dispositivo'
	],
	#category : #'TP5-Connections-Tests'
}

{ #category : #running }
DispositivoTest >> setUp [
	dispositivo := Dispositivo new
]

{ #category : #tests }
DispositivoTest >> testConectarCon [
	dispositivo
		conectarCon: Connection4GAdapter new;
		conectarCon: WiFiConn new
]

{ #category : #tests }
DispositivoTest >> testConfigurarCRC [
	dispositivo
		configurarCRC: CRC32_Calculator new;
		configurarCRC: CRC16_Calculator new
]

{ #category : #tests }
DispositivoTest >> testSend [
	dispositivo
		send: 'saludos!';
		conectarCon: Connection4GAdapter new;
		configurarCRC: CRC32_Calculator new;
		send: 'nuevo mensaje'
]
