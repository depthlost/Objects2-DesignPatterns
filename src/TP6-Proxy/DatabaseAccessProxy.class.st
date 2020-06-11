Class {
	#name : #DatabaseAccessProxy,
	#superclass : #DatabaseAccess,
	#instVars : [
		'databaseAccess',
		'authSystem'
	],
	#category : #'TP6-Proxy'
}

{ #category : #construction }
DatabaseAccessProxy class >> withAuthentication: anAuthenticationSystem [
	^ self new withAuthentication: anAuthenticationSystem
]

{ #category : #testing }
DatabaseAccessProxy >> databaseAccess [
	^ databaseAccess
]

{ #category : #'as yet unclassified' }
DatabaseAccessProxy >> getSearchResults: queryString [
	authSystem isLogged
		ifTrue: [ ^ databaseAccess getSearchResults: queryString ]
]

{ #category : #initialization }
DatabaseAccessProxy >> initialize [
	databaseAccess := DatabaseRealAcess new
]

{ #category : #'as yet unclassified' }
DatabaseAccessProxy >> insertNewRow: rowData [
	authSystem isLogged
		ifTrue: [ ^ databaseAccess insertNewRow: rowData ]
]

{ #category : #initialization }
DatabaseAccessProxy >> withAuthentication: anAuthenticationSystem [
	authSystem := anAuthenticationSystem
]
