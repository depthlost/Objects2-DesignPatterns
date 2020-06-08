Class {
	#name : #ToDoListFinishedState,
	#superclass : #ToDoListState,
	#category : #'TP5-ToDoList'
}

{ #category : #operations }
ToDoListFinishedState >> addComment: aComment [
	
]

{ #category : #operations }
ToDoListFinishedState >> workedTime [
	^ toDoList endTime - toDoList startTime
]
