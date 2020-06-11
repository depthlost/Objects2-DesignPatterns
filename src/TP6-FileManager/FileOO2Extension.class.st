Class {
	#name : #FileOO2Extension,
	#superclass : #FileOO2Decorator,
	#category : #'TP6-FileManager'
}

{ #category : #accessing }
FileOO2Extension >> prettyPrint [
	^ super prettyPrint , file extension
]
