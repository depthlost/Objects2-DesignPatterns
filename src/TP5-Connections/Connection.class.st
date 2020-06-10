Class {
	#name : #Connection,
	#superclass : #Object,
	#category : #'TP5-Connections'
}

{ #category : #operations }
Connection >> pict [
	self subclassResponsibility
]

{ #category : #operations }
Connection >> sendData: aData crc: aCrc [
	self subclassResponsibility
]
