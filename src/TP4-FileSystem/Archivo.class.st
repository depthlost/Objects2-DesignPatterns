Class {
	#name : #Archivo,
	#superclass : #ArchivoAbstracto,
	#instVars : [
		'tamano'
	],
	#category : #'TP4-FileSystem'
}

{ #category : #'as yet unclassified' }
Archivo class >> llamado: unString creadoEl: unaFecha kBytes: unNumero [
	^ (self llamado: unString creadoEl: unaFecha) kBytes: unNumero
]

{ #category : #accessing }
Archivo >> archivoMasGrande [
	^ self
]

{ #category : #accessing }
Archivo >> archivoMasNuevo [
	^ self
]

{ #category : #'as yet unclassified' }
Archivo >> esUnDirectorio [
	^ false
]

{ #category : #initialization }
Archivo >> kBytes: unNumero [
	tamano := unNumero
]

{ #category : #accessing }
Archivo >> tamanoTotalOcupado [
	^ tamano
]
