Class {
	#name : #ArchivoAbstracto,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'fecha'
	],
	#category : #'TP4-FileSystem'
}

{ #category : #construction }
ArchivoAbstracto class >> llamado: unString creadoEl: unaFecha [
	^ self new llamado: unString creadoEl: unaFecha
]

{ #category : #accessing }
ArchivoAbstracto >> archivoMasGrande [
	self subclassResponsibility
]

{ #category : #accessing }
ArchivoAbstracto >> archivoMasNuevo [
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
ArchivoAbstracto >> esUnDirectorio [
	self subclassResponsibility
]

{ #category : #accessing }
ArchivoAbstracto >> fecha [
	^ fecha
]

{ #category : #initialization }
ArchivoAbstracto >> llamado: unString creadoEl: unaFecha [
	nombre := unString.
	fecha := unaFecha
]

{ #category : #accessing }
ArchivoAbstracto >> tamanoTotalOcupado [
	self subclassResponsibility
]
