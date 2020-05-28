Class {
	#name : #STONExporter,
	#superclass : #Exporter,
	#category : #'TP4-Biblioteca'
}

{ #category : #exporting }
STONExporter >> export: algunosSocios [
	^ STON toStringPretty: algunosSocios
]
