Class {
	#name : #DatabaseAccessProxyTestCase,
	#superclass : #TestCase,
	#instVars : [
		'successDatabase',
		'errorDatabase'
	],
	#category : #'TP6-Proxy-Tests'
}

{ #category : #running }
DatabaseAccessProxyTestCase >> setUp [
	successDatabase := DatabaseAccessProxy
		withAuthentication: (AuthenticationSystem logged: true).
	errorDatabase := DatabaseAccessProxy
		withAuthentication: (AuthenticationSystem logged: false)
]

{ #category : #tests }
DatabaseAccessProxyTestCase >> testGetSearchResults [
	self assert: (successDatabase getSearchResults: 'select * from comics where id=1') 
			equals: #('Spiderman' 'Marvel');
		assert: (errorDatabase getSearchResults: 'select * from comics where id=1') == errorDatabase.
	
	self assert: (successDatabase getSearchResults: 'select * from comics where id=10') equals: #();
		assert: (errorDatabase getSearchResults: 'select * from comics where id=10') == errorDatabase
]

{ #category : #tests }
DatabaseAccessProxyTestCase >> testInsertNewRow [
	"comment stating purpose of message"
	|rowData|
	rowData:= #('Paturuzu' 'La flor').
 
	self assert: ((successDatabase insertNewRow: rowData) == 3);
		assert:((successDatabase getSearchResults: 'select * from comics where id=3') = rowData).
	
	self assert: ((errorDatabase insertNewRow: rowData) == errorDatabase);
		assert:((errorDatabase databaseAccess getSearchResults: 'select * from comics where id=3') = #()).
]
