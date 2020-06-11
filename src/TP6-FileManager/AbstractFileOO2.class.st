"
""Playground para los ejemplos citados en el ejercicio""

| file |

file := FileOO2 name: 'uno' extension: 'txt' size: 20 permissions: 'rw'.

""nombre - extensión""
(FileOO2Extension with: (FileOO2Name with: file)) prettyPrint.

""nombre - extension - fecha de creacion""
(FileOO2CreationDate with: (FileOO2Extension with: (FileOO2Name with: file))) prettyPrint.

""permisos - nombre - extensión - tamaño""
(FileOO2Size with: (FileOO2Extension with: (FileOO2Name with: (FileOO2Permissions with: file)))) prettyPrint



"
Class {
	#name : #AbstractFileOO2,
	#superclass : #Object,
	#category : #'TP6-FileManager'
}

{ #category : #accessing }
AbstractFileOO2 >> creationDate [
	self subclassResponsibility
]

{ #category : #accessing }
AbstractFileOO2 >> extension [
	self subclassResponsibility
]

{ #category : #accessing }
AbstractFileOO2 >> fileSize [
	self subclassResponsibility
]

{ #category : #accessing }
AbstractFileOO2 >> modificationDate [
	self subclassResponsibility
]

{ #category : #accessing }
AbstractFileOO2 >> name [
	self subclassResponsibility
]

{ #category : #accessing }
AbstractFileOO2 >> permissions [
	self subclassResponsibility
]

{ #category : #accessing }
AbstractFileOO2 >> prettyPrint [
	self subclassResponsibility
]
