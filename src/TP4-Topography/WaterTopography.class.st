Class {
	#name : #WaterTopography,
	#superclass : #Topography,
	#category : #'TP4-Topography'
}

{ #category : #comparing }
WaterTopography >> = aTopography [
	^ aTopography waterProportion = 1
]

{ #category : #calculations }
WaterTopography >> earthProportion [
	^ 0
]

{ #category : #accessing }
WaterTopography >> topograpies [
	^ OrderedCollection new
]

{ #category : #calculations }
WaterTopography >> waterProportion [
	^ 1
]
