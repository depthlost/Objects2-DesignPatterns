Class {
	#name : #WiFiConn,
	#superclass : #Connection,
	#category : #'TP5-Connections'
}

{ #category : #operations }
WiFiConn >> pict [
	^ 'WiFi'
]

{ #category : #operations }
WiFiConn >> sendData: aData crc: aCrc [
	Transcript
		show: 'Sending: "' , aData , '", src: ' , aCrc asString;
		cr
]
