Class {
	#name : #FileOO2CreationDate,
	#superclass : #FileOO2Decorator,
	#category : #'TP6-FileManager'
}

{ #category : #accessing }
FileOO2CreationDate >> prettyPrint [
	^ super prettyPrint , file creationDate asDate ddmmyyyy
]
