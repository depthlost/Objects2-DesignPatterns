Class {
	#name : #DatabaseAccessProxy,
	#superclass : #DatabaseAccess,
	#instVars : [
		'databaseAccess',
		'password'
	],
	#category : #'TP6-Proxy'
}

{ #category : #construction }
DatabaseAccessProxy class >> password: aPassword [
	^ self new password: aPassword
]

{ #category : #checking }
DatabaseAccessProxy >> checkAccess [
	^ password = 'DataBase2020'
]

{ #category : #testing }
DatabaseAccessProxy >> databaseAccess [
	^ databaseAccess
]

{ #category : #'as yet unclassified' }
DatabaseAccessProxy >> getSearchResults: queryString [
	self checkAccess
		ifTrue: [ ^ databaseAccess getSearchResults: queryString ]
]

{ #category : #initialization }
DatabaseAccessProxy >> initialize [
	databaseAccess := DatabaseRealAcess new.
	password := ''
]

{ #category : #'as yet unclassified' }
DatabaseAccessProxy >> insertNewRow: rowData [
	self checkAccess
		ifTrue: [ ^ databaseAccess insertNewRow: rowData ]
]

{ #category : #initialization }
DatabaseAccessProxy >> password: aPassword [
	password := aPassword
]
