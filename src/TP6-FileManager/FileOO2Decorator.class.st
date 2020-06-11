Class {
	#name : #FileOO2Decorator,
	#superclass : #AbstractFileOO2,
	#instVars : [
		'file'
	],
	#category : #'TP6-FileManager'
}

{ #category : #construction }
FileOO2Decorator class >> with: anAbstractFileOO2 [
	^ self new with: anAbstractFileOO2
]

{ #category : #accessing }
FileOO2Decorator >> creationDate [
	^ file creationDate
]

{ #category : #accessing }
FileOO2Decorator >> extension [
	^ file extension
]

{ #category : #accessing }
FileOO2Decorator >> fileSize [
	^ file fileSize
]

{ #category : #accessing }
FileOO2Decorator >> modificationDate [
	^ file modificationDate
]

{ #category : #accessing }
FileOO2Decorator >> name [
	^ file name
]

{ #category : #accessing }
FileOO2Decorator >> permissions [
	^ file permissions
]

{ #category : #accessing }
FileOO2Decorator >> prettyPrint [
	^ file prettyPrint ifNotEmpty: [ :string | string , ' - ' ]
]

{ #category : #initialization }
FileOO2Decorator >> with: anAbstractFileOO2 [
	file := anAbstractFileOO2
]
