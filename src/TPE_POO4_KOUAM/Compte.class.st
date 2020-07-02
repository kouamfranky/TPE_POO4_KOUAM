Class {
	#name : #Compte,
	#superclass : #Object,
	#instVars : [
		'numero',
		'montant'
	],
	#category : #'TPE_POO4_KOUAM'
}

{ #category : #operations }
Compte >> Depot: somme [
	self montant: self montant + somme
]

{ #category : #operations }
Compte >> Retrait: somme [
	self montant: ( self montant - somme )
]

{ #category : #operations }
Compte >> Transfert: somme A: uncompte [
	self Retrait: somme.
	self Depot: somme.
	uncompte add: somme 
]

{ #category : #operations }
Compte >> getSolde [
	^ self montant. 
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
