Class {
	#name : #DatabaseRealAccessTestCase,
	#superclass : #TestCase,
	#instVars : [
		'database'
	],
	#category : #'TP6-Proxy-Tests'
}

{ #category : #running }
DatabaseRealAccessTestCase >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	database:= DatabaseRealAcess new.
]

{ #category : #tests }
DatabaseRealAccessTestCase >> testGetSearchResults [
	"comment stating purpose of message"

self assert:((database getSearchResults: 'select * from comics where id=1') = #('Spiderman' 'Marvel')).

self assert:((database getSearchResults: 'select * from comics where id=10') = #()).
]

{ #category : #tests }
DatabaseRealAccessTestCase >> testInsertNewRow [
	"comment stating purpose of message"
	|rowData|
	rowData:= #('Paturuzu' 'La flor').
 self assert: ((database insertNewRow: rowData) == 3).
 self assert:((database getSearchResults: 'select * from comics where id=3') = rowData).
]
