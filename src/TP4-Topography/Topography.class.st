Class {
	#name : #Topography,
	#superclass : #Object,
	#category : #'TP4-Topography'
}

{ #category : #comparing }
Topography >> = aTopography [
	self subclassResponsibility
]

{ #category : #calculations }
Topography >> earthProportion [
	self subclassResponsibility
]

{ #category : #accessing }
Topography >> topograpies [
	self subclassResponsibility
]

{ #category : #calculations }
Topography >> waterProportion [
	self subclassResponsibility
]
