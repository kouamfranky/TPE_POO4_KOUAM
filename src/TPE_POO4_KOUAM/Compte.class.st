Class {
	#name : #Compte,
	#superclass : #Object,
	#instVars : [
		'numero',
		'montant'
	],
	#category : #'TPE_POO4_KOUAM'
}

{ #category : #'as yet unclassified' }
Compte >> Add: somme [
	self.montant:= self.montant + somme
]

{ #category : #'as yet unclassified' }
Compte >> Solde [
	^ montant. 
]

{ #category : #accessing }
Compte >> montant [
	^ montant
]

{ #category : #accessing }
Compte >> montant: anObject [
	montant := anObject
]

{ #category : #accessing }
Compte >> numero [
	^ numero
]

{ #category : #accessing }
Compte >> numero: anObject [
	numero := anObject
]
