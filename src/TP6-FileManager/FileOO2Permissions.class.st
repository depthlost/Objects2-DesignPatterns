Class {
	#name : #FileOO2Permissions,
	#superclass : #FileOO2Decorator,
	#category : #'TP6-FileManager'
}

{ #category : #accessing }
FileOO2Permissions >> prettyPrint [
	^ super prettyPrint , file permissions
]
