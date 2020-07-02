Class {
	#name : #Client,
	#superclass : #Object,
	#instVars : [
		'nom',
		'phone',
		'lesComptes'
	],
	#category : #'TPE_POO4_KOUAM'
}

{ #category : #operations }
Client >> AddCompte: uncompte [
	self lesComptes add: uncompte 
]

{ #category : #operations }
Client >> DepotClient: somme A: numCompte [
	| moncompte |
	moncompte := self lesComptes add: numCompte.
	moncompte Depot: somme
]

{ #category : #operations }
Client >> RemoveCompte: uncompte [
	self lesComptes remove: uncompte 
]

{ #category : #operations }
Client >> RetraitClient: somme A: numCompte [
	| moncompte |
	moncompte := (self lesComptes) add: numCompte.
	moncompte Retrait: somme
]

{ #category : #operations }
Client >> SoldeCompte: numCompte [
	| uncompte |
	uncompte := self lesComptes add: numCompte.
	^uncompte getSolde
]

{ #category : #operations }
Client >> TransfertDeMontant: somme De: numCompteSend A: numCompteRecieve [
	| sendC recieveC|
	sendC := (self lesComptes) add: numCompteSend.
	recieveC  := (self lesComptes) add: numCompteRecieve.
	sendC Retrait: somme.
	recieveC Depot: somme.  
]

{ #category : #initialization }
Client >> initialize [ 
lesComptes := OrderedCollection new.
]

{ #category : #accessing }
Client >> lesComptes [
	^ lesComptes
]

{ #category : #accessing }
Client >> lesComptes: anObject [
	lesComptes := anObject
]

{ #category : #accessing }
Client >> nom [
	^ nom
]

{ #category : #accessing }
Client >> nom: anObject [
	nom := anObject
]
