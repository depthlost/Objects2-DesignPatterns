Class {
	#name : #TestCaseTranscript,
	#superclass : #TestCase,
	#category : #'TP4-Sunit'
}

{ #category : #accessing }
TestCaseTranscript >> log [
	Transcript
		show: self asString;
		cr
]

{ #category : #running }
TestCaseTranscript >> tearDown [
	super tearDown.
	self log
]
