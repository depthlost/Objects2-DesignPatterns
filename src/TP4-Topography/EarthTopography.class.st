Class {
	#name : #EarthTopography,
	#superclass : #Topography,
	#category : #'TP4-Topography'
}

{ #category : #comparing }
EarthTopography >> = aTopography [
	^ aTopography earthProportion = 1
]

{ #category : #calculations }
EarthTopography >> earthProportion [
	^ 1
]

{ #category : #accessing }
EarthTopography >> topograpies [
	^ OrderedCollection new
]

{ #category : #calculations }
EarthTopography >> waterProportion [
	^ 0
]
