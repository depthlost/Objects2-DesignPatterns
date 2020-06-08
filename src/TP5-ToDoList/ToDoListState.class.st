Class {
	#name : #ToDoListState,
	#superclass : #Object,
	#instVars : [
		'toDoList'
	],
	#category : #'TP5-ToDoList'
}

{ #category : #construction }
ToDoListState class >> of: aToDoList [
	^ self new of: aToDoList
]

{ #category : #operations }
ToDoListState >> addComment: aComment [
	^ toDoList addCommentToCollection: aComment
]

{ #category : #operations }
ToDoListState >> finish [
	
]

{ #category : #initialization }
ToDoListState >> of: aToDoList [
	toDoList := aToDoList
]

{ #category : #operations }
ToDoListState >> start [
	
]

{ #category : #operations }
ToDoListState >> togglePause [
	self
		error: 'El objeto ToDoItem no se encuentra en el estado in-progress o paused'
]

{ #category : #operations }
ToDoListState >> workedTime [
	self subclassResponsibility
]
