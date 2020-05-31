Class {
	#name : #Directorio,
	#superclass : #ArchivoAbstracto,
	#instVars : [
		'archivos'
	],
	#category : #'TP4-FileSystem'
}

{ #category : #'add/remove' }
Directorio >> agregar: unArchivoAbstracto [
	^ archivos add: unArchivoAbstracto
]

{ #category : #accessing }
Directorio >> archivoMasGrande [
	^ self archivoMasGrandeDe: self obtenerArchivosMasGrandesLocales
]

{ #category : #private }
Directorio >> archivoMasGrandeDe: unosArchivos [
	^ unosArchivos
		ifNotEmpty: [ :archivo | 
			(archivo
				sort:
					[ :archivo1 :archivo2 | archivo1 tamanoTotalOcupado > archivo2 tamanoTotalOcupado ])
				first ]
		ifEmpty: [ nil ]
]

{ #category : #accessing }
Directorio >> archivoMasNuevo [
	^ self archivoMasNuevoDe: self obtenerArchivosMasNuevosLocales
]

{ #category : #private }
Directorio >> archivoMasNuevoDe: unosArchivos [
	^ unosArchivos
		ifNotEmpty: [ :archivo | 
			(archivo
				sort: [ :archivo1 :archivo2 | archivo1 fecha > archivo2 fecha ])
				first ]
		ifEmpty: [ nil ]
]

{ #category : #private }
Directorio >> cantidadDeArchivosLocales [
	^ archivos count: [ :archivo | archivo esUnDirectorio not ]
]

{ #category : #'as yet unclassified' }
Directorio >> esUnDirectorio [
	^ true
]

{ #category : #initialization }
Directorio >> initialize [
	archivos := OrderedCollection new
]

{ #category : #printing }
Directorio >> listadoDeContenido [
	^ self listadoDeContenidoConRuta: '/'
]

{ #category : #printing }
Directorio >> listadoDeContenidoConRuta: unaRuta [
	| listadoStream ruta |
	ruta := unaRuta , nombre.
	listadoStream := WriteStream on: String new.
	listadoStream << ruta << self obtenerStringCantidadArchivos.
	self obtenerDirectorios
		do:
			[ :directorio | listadoStream cr << (directorio listadoDeContenidoConRuta: ruta , '/') ].
	^ listadoStream contents
]

{ #category : #private }
Directorio >> obtenerArchivosMasGrandesLocales [
	^ (archivos collect: [ :archivo | archivo archivoMasGrande ])
		removeAllSuchThat: [ :archivo | archivo isNil ]
]

{ #category : #private }
Directorio >> obtenerArchivosMasNuevosLocales [
	^ (archivos collect: [ :archivo | archivo archivoMasNuevo ])
		removeAllSuchThat: [ :archivo | archivo isNil ]
]

{ #category : #private }
Directorio >> obtenerDirectorios [
	^ archivos select: [ :archivo | archivo esUnDirectorio ]
]

{ #category : #private }
Directorio >> obtenerStringCantidadArchivos [
	^ self cantidadDeArchivosLocales ~= 0
		ifTrue: [ ' (' , self cantidadDeArchivosLocales asString , ' archivos)' ]
		ifFalse: [ String new ]
]

{ #category : #accessing }
Directorio >> tamanoTotalOcupado [
	^ (archivos sumNumbers: [ :archivo | archivo tamanoTotalOcupado ])
		+ 32
]
