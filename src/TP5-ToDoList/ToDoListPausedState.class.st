Class {
	#name : #ToDoListPausedState,
	#superclass : #ToDoListState,
	#category : #'TP5-ToDoList'
}

{ #category : #operations }
ToDoListPausedState >> finish [
	toDoList
		state: (ToDoListFinishedState of: toDoList);
		endTime: DateAndTime now
]

{ #category : #operations }
ToDoListPausedState >> togglePause [
	toDoList state: (ToDoListInProgressState of: toDoList)
]

{ #category : #operations }
ToDoListPausedState >> workedTime [
	^ DateAndTime now - toDoList startTime
]
