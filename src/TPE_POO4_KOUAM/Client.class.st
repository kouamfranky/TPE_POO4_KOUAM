Class {
	#name : #Client,
	#superclass : #Object,
	#instVars : [
		'name',
		'phone'
	],
	#category : #'TPE_POO4_KOUAM'
}

{ #category : #accessing }
Client >> name [
	^ name
]

{ #category : #accessing }
Client >> name: anObject [
	name := anObject
]

{ #category : #accessing }
Client >> phone [
	^ phone
]

{ #category : #accessing }
Client >> phone: anObject [
	phone := anObject
]
