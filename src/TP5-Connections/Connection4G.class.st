Class {
	#name : #Connection4G,
	#superclass : #Object,
	#category : #'TP5-Connections'
}

{ #category : #'as yet unclassified' }
Connection4G >> symb [
	^ '4G'
]

{ #category : #'as yet unclassified' }
Connection4G >> transmit: aData crc: aCrc [
	Transcript
		show: 'Sending: "' , aData , '", src: ' , aCrc asString;
		cr
]
