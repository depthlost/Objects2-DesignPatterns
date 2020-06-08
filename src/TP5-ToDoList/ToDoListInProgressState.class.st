Class {
	#name : #ToDoListInProgressState,
	#superclass : #ToDoListState,
	#category : #'TP5-ToDoList'
}

{ #category : #operations }
ToDoListInProgressState >> finish [
	toDoList
		state: (ToDoListFinishedState of: toDoList);
		endTime: DateAndTime now
]

{ #category : #operations }
ToDoListInProgressState >> togglePause [
	toDoList state: (ToDoListPausedState of: toDoList)
]

{ #category : #operations }
ToDoListInProgressState >> workedTime [
	^ DateAndTime now - toDoList startTime
]
