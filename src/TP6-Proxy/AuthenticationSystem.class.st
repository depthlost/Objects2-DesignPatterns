Class {
	#name : #AuthenticationSystem,
	#superclass : #Object,
	#instVars : [
		'logged'
	],
	#category : #'TP6-Proxy'
}

{ #category : #construction }
AuthenticationSystem class >> logged: aBoolean [
	^ self new logged: aBoolean
]

{ #category : #accessing }
AuthenticationSystem >> isLogged [
	^ logged
]

{ #category : #accessing }
AuthenticationSystem >> logged: aBoolean [
	logged := aBoolean
]
