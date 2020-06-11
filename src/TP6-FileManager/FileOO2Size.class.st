Class {
	#name : #FileOO2Size,
	#superclass : #FileOO2Decorator,
	#category : #'TP6-FileManager'
}

{ #category : #accessing }
FileOO2Size >> prettyPrint [
	^ super prettyPrint , file fileSize asString
]
