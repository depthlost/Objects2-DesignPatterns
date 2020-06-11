Class {
	#name : #FileOO2ModificationDate,
	#superclass : #FileOO2Decorator,
	#category : #'TP6-FileManager'
}

{ #category : #accessing }
FileOO2ModificationDate >> prettyPrint [
	^ super prettyPrint , file modificationDate asDate ddmmyyyy
]
