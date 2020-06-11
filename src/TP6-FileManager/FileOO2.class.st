Class {
	#name : #FileOO2,
	#superclass : #AbstractFileOO2,
	#instVars : [
		'name',
		'extension',
		'size',
		'creationDate',
		'modificationDate',
		'permissions'
	],
	#category : #'TP6-FileManager'
}

{ #category : #initialization }
FileOO2 class >> name: aName extension: anExtension size: aSize permissions: aPermissions [
	^ self new
		name: aName
		extension: anExtension
		size: aSize
		permissions: aPermissions
]

{ #category : #accessing }
FileOO2 >> creationDate [
	^ creationDate
]

{ #category : #accessing }
FileOO2 >> extension [
	^ extension
]

{ #category : #accessing }
FileOO2 >> fileSize [
	^ size
]

{ #category : #initialization }
FileOO2 >> initialize [
	creationDate := DateAndTime now.
	modificationDate := DateAndTime now
]

{ #category : #accessing }
FileOO2 >> modificationDate [
	^ modificationDate
]

{ #category : #accessing }
FileOO2 >> name [
	^ name
]

{ #category : #initialization }
FileOO2 >> name: aName extension: anExtension size: aSize permissions: aPermissions [
	name := aName.
	extension := anExtension.
	size := aSize.
	permissions := aPermissions
]

{ #category : #accessing }
FileOO2 >> permissions [
	^ permissions
]

{ #category : #accessing }
FileOO2 >> prettyPrint [
	^ ''
]
