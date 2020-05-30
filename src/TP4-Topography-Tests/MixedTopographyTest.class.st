Class {
	#name : #MixedTopographyTest,
	#superclass : #TestCase,
	#instVars : [
		'simpleMixedTopography',
		'compositeMixedTopography'
	],
	#category : #'TP4-Topography-Tests'
}

{ #category : #private }
MixedTopographyTest >> newCompositeMixedTopographyWith: aSimpleMixedTopography [
	^ MixedTopography
		with: aSimpleMixedTopography
		with: EarthTopography new
		with: EarthTopography new
		with: WaterTopography new
]

{ #category : #private }
MixedTopographyTest >> newSimpleMixedTopography [
	^ MixedTopography
		with: WaterTopography new
		with: EarthTopography new
		with: EarthTopography new
		with: WaterTopography new
]

{ #category : #running }
MixedTopographyTest >> setUp [
	simpleMixedTopography := MixedTopography
		with: WaterTopography new
		with: EarthTopography new
		with: EarthTopography new
		with: WaterTopography new.
	compositeMixedTopography := MixedTopography
		with: simpleMixedTopography
		with: EarthTopography new
		with: EarthTopography new
		with: WaterTopography new
]

{ #category : #tests }
MixedTopographyTest >> testEarthProportion [
	self
		assert: simpleMixedTopography earthProportion equals: 1 / 2;
		assert: compositeMixedTopography earthProportion equals: 5 / 8
]

{ #category : #tests }
MixedTopographyTest >> testEqualityOfCompositeTopography [
	self
		assert: compositeMixedTopography
			equals: (self newCompositeMixedTopographyWith: self newSimpleMixedTopography);
		deny: compositeMixedTopography equals: EarthTopography new;
		deny: compositeMixedTopography equals: WaterTopography new;
		deny: compositeMixedTopography
			equals: self newSimpleMixedTopography
]

{ #category : #tests }
MixedTopographyTest >> testEqualityOfSimpleTopography [
	self
		assert: simpleMixedTopography equals: self newSimpleMixedTopography;
		deny: simpleMixedTopography equals: EarthTopography new;
		deny: simpleMixedTopography equals: WaterTopography new;
		deny: simpleMixedTopography
			equals: (self newCompositeMixedTopographyWith: self newSimpleMixedTopography)
]

{ #category : #tests }
MixedTopographyTest >> testWaterProportion [
	self
		assert: simpleMixedTopography waterProportion equals: 1 / 2;
		assert: compositeMixedTopography waterProportion equals: 3 / 8
]
