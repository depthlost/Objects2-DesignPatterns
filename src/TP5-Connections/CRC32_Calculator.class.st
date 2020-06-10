Class {
	#name : #'CRC32_Calculator',
	#superclass : #'CRC_Calculator',
	#category : #'TP5-Connections'
}

{ #category : #calculations }
CRC32_Calculator >> crcFor: datos [
	^ CRC crc32FromCollection: datos
]
