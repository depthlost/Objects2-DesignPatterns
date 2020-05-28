Class {
	#name : #MixedTopography,
	#superclass : #Topography,
	#instVars : [
		'topograpies'
	],
	#category : #'TP4-Topography'
}

{ #category : #'instance creation' }
MixedTopography class >> with: aTopography1 with: aTopography2 with: aTopography3 with: aTopography4 [
	^ self new
		addTopography: aTopography1;
		addTopography: aTopography2;
		addTopography: aTopography3;
		addTopography: aTopography4;
		yourself
]

{ #category : #comparing }
MixedTopography >> = aTopography [
	^ topograpies = aTopography topograpies
]

{ #category : #'adding/removing' }
MixedTopography >> addTopography: aTopography [
	^ topograpies add: aTopography
]

{ #category : #calculations }
MixedTopography >> earthProportion [
	^ (topograpies
		sumNumbers: [ :topography | topography earthProportion ])
		/ topograpies size
]

{ #category : #initialization }
MixedTopography >> initialize [
	topograpies := OrderedCollection new
]

{ #category : #accessing }
MixedTopography >> topograpies [
	^ topograpies
]

{ #category : #calculations }
MixedTopography >> waterProportion [
	^ (topograpies
		sumNumbers: [ :topography | topography waterProportion ])
		/ topograpies size
]
