Class {
	#name : #NeoJSONExporter,
	#superclass : #Exporter,
	#category : #'TP4-Biblioteca'
}

{ #category : #exporting }
NeoJSONExporter >> export: algunosSocios [
	^ NeoJSONWriter
		toStringPretty:
			(algunosSocios
				collect: [ :socio | self exportSocioAsDictionary: socio ])
]

{ #category : #exporting }
NeoJSONExporter >> exportSocioAsDictionary: unSocio [
	^ Dictionary new
		at: #nombre put: unSocio nombre;
		at: #email put: unSocio email;
		at: #legajo put: unSocio legajo;
		yourself
]
