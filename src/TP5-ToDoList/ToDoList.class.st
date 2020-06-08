Class {
	#name : #ToDoList,
	#superclass : #Object,
	#instVars : [
		'name',
		'startTime',
		'endTime',
		'comments',
		'state'
	],
	#category : #'TP5-ToDoList'
}

{ #category : #construction }
ToDoList class >> name: aName [
	^ self new name: aName
]

{ #category : #'add/remove' }
ToDoList >> addComment: aComment [
	^ state addComment: aComment
]

{ #category : #'add/remove' }
ToDoList >> addCommentToCollection: aComment [
	^ comments add: aComment
]

{ #category : #accessing }
ToDoList >> endTime [
	^ endTime
]

{ #category : #accessing }
ToDoList >> endTime: aDateAndTime [
	endTime := aDateAndTime
]

{ #category : #operations }
ToDoList >> finish [
	state finish
]

{ #category : #initialization }
ToDoList >> initialize [
	state := ToDoListPendingState of: self.
	comments := OrderedCollection new
]

{ #category : #initialization }
ToDoList >> name: aName [
	name := aName
]

{ #category : #operations }
ToDoList >> start [
	state start
]

{ #category : #accessing }
ToDoList >> startTime [
	^ startTime
]

{ #category : #accessing }
ToDoList >> startTime: aDateAndTime [
	startTime := aDateAndTime
]

{ #category : #accessing }
ToDoList >> state: aState [
	state := aState
]

{ #category : #operations }
ToDoList >> togglePause [
	state togglePause
]

{ #category : #operations }
ToDoList >> workedTime [
	^ state workedTime
]
