Class {
	#name : #EarthTopographyTest,
	#superclass : #TestCase,
	#instVars : [
		'earthTopography'
	],
	#category : #'TP4-Topography-Tests'
}

{ #category : #running }
EarthTopographyTest >> setUp [
	earthTopography := EarthTopography new
]

{ #category : #tests }
EarthTopographyTest >> testEarthProportion [
	self assert: earthTopography earthProportion equals: 1
]

{ #category : #tests }
EarthTopographyTest >> testEquals [
	self assert: earthTopography equals: EarthTopography new
]

{ #category : #tests }
EarthTopographyTest >> testWaterProportion [
	self assert: earthTopography waterProportion equals: 0
]
