Class {
	#name : #'CRC16_Calculator',
	#superclass : #'CRC_Calculator',
	#category : #'TP5-Connections'
}

{ #category : #calculations }
CRC16_Calculator >> crcFor: datos [
	^ CRC crc16FromCollection: datos
]
