Class {
	#name : #TestCompte,
	#superclass : #TestCase,
	#instVars : [
		'compte'
	],
	#category : #'TPE_POO4_KOUAM'
}

{ #category : #accessing }
TestCompte >> compte [
	^ compte
]

{ #category : #running }
TestCompte >> setUp [
	"Hooks that subclasses may override to define the fixture of test."

	compte := Compte new.
	compte montant: 5000.
	compte numero: 1
]

{ #category : #test }
TestCompte >> testDepot [
	compte Depot: 10000
]

{ #category : #test }
TestCompte >> testRetrait [
	compte Retrait: 10000
]

{ #category : #'as yet unclassified' }
TestCompte >> testgetSolde [
]
