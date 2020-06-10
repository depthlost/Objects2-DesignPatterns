Class {
	#name : #Connection4GAdapter,
	#superclass : #Connection,
	#instVars : [
		'connection'
	],
	#category : #'TP5-Connections'
}

{ #category : #initialization }
Connection4GAdapter >> initialize [
	connection := Connection4G new
]

{ #category : #operations }
Connection4GAdapter >> pict [
	^ connection symb
]

{ #category : #operations }
Connection4GAdapter >> sendData: aData crc: aCrc [
	connection transmit: aData crc: aCrc
]
