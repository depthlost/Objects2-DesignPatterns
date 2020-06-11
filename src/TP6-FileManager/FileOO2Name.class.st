Class {
	#name : #FileOO2Name,
	#superclass : #FileOO2Decorator,
	#category : #'TP6-FileManager'
}

{ #category : #accessing }
FileOO2Name >> prettyPrint [
	^ super prettyPrint , file name
]
