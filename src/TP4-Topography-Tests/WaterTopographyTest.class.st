Class {
	#name : #WaterTopographyTest,
	#superclass : #TestCase,
	#instVars : [
		'waterTopography'
	],
	#category : #'TP4-Topography-Tests'
}

{ #category : #running }
WaterTopographyTest >> setUp [
	waterTopography := WaterTopography new
]

{ #category : #tests }
WaterTopographyTest >> testEarthProportion [
	self assert: waterTopography earthProportion equals: 0
]

{ #category : #tests }
WaterTopographyTest >> testEquals [
	self assert: waterTopography equals: WaterTopography new
]

{ #category : #tests }
WaterTopographyTest >> testWaterProportion [
	self assert: waterTopography waterProportion equals: 1
]
