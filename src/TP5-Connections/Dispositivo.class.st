Class {
	#name : #Dispositivo,
	#superclass : #Object,
	#instVars : [
		'connection',
		'crcCalculator',
		'display',
		'ringer'
	],
	#category : #'TP5-Connections'
}

{ #category : #'as yet unclassified' }
Dispositivo >> conectarCon: unaConexion [
	connection := unaConexion.
	display showBanner: connection pict , ' Connection'.
	ringer ring
]

{ #category : #'as yet unclassified' }
Dispositivo >> configurarCRC: unCRCCalculator [
	crcCalculator := unCRCCalculator
]

{ #category : #initialization }
Dispositivo >> initialize [
	display := Display2 new.
	ringer := Ringer new.
	self configurarCRC: CRC16_Calculator new.
	self conectarCon: WiFiConn new
]

{ #category : #commands }
Dispositivo >> send: datos [
	connection sendData: datos crc: (crcCalculator crcFor: datos)
]
