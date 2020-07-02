Class {
	#name : #TestClient,
	#superclass : #TestCase,
	#instVars : [
		'client',
		'compte1',
		'compte2'
	],
	#category : #'TPE_POO4_KOUAM'
}

{ #category : #running }
TestClient >> setUp [
	"Hooks that subclasses may override to define the fixture of test."

	compte1 := Compte new.
	compte1 montant: 5000.
	compte1 numero: 1.
	"	compte1 lesComptes add: compte1.
	compte1 lesComptes add: compte2."
	compte2 := Compte new.
	compte2 montant: 1000.
	compte2 numero: 2.
	client := Client new.
	client nom: 'Brice'.
	client phone: 698720458.
]

{ #category : #tests }
TestClient >> testAddCompte [
	client AddCompte: compte1
]

{ #category : #tests }
TestClient >> testDepotClient [
client DepotClient: 5000 A:compte2  
]

{ #category : #tests }
TestClient >> testRetraitClient [
	client RetraitClient: 400 A: compte2  
]

{ #category : #tests }
TestClient >> testSoldeCompte [
	client SoldeCompte: compte1 
]

{ #category : #tests }
TestClient >> testTransfertDeMontant [
 client TransfertDeMontant: 7000 De:compte1 A: compte2 
]
