Class {
	#name : #Banque,
	#superclass : #Object,
	#instVars : [
		'lesClientsB',
		'lesComptesB'
	],
	#category : #'TPE_POO4_KOUAM'
}

{ #category : #methodes }
Banque >> AddClientB: unclient [
	self lesClientsB  remove: unclient 
]

{ #category : #methodes }
Banque >> AddCompteB: uncompte [
	self lesComptesB remove: uncompte 
]

{ #category : #methodes }
Banque >> RemoveClientB: unclient [
	self lesClientsB remove: unclient 
]

{ #category : #methodes }
Banque >> RemoveCompteB: uncompte [
	self lesComptesB remove: uncompte 
]

{ #category : #initialization }
Banque >> initialize [ 
lesComptesB  := OrderedCollection new.
lesClientsB   := OrderedCollection new.
]

{ #category : #accessing }
Banque >> lesClientsB [
	^ lesClientsB
]

{ #category : #accessing }
Banque >> lesClientsB: anObject [
	lesClientsB := anObject
]

{ #category : #accessing }
Banque >> lesComptesB [
	^ lesComptesB
]

{ #category : #accessing }
Banque >> lesComptesB: anObject [
	lesComptesB := anObject
]
