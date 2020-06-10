Class {
	#name : #Display2,
	#superclass : #Object,
	#category : #'TP5-Connections'
}

{ #category : #operations }
Display2 >> showBanner: img [
	Transcript
		show: 'Display: ' , img;
		cr
]
