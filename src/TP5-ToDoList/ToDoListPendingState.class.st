Class {
	#name : #ToDoListPendingState,
	#superclass : #ToDoListState,
	#category : #'TP5-ToDoList'
}

{ #category : #operations }
ToDoListPendingState >> start [
	toDoList
		state: (ToDoListInProgressState of: toDoList);
		startTime: DateAndTime now
]

{ #category : #operations }
ToDoListPendingState >> workedTime [
	self error: 'La terea aun no fue iniciada'
]
