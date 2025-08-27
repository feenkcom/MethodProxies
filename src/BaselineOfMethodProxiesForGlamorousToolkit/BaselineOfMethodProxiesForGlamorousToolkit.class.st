Class {
	#name : #BaselineOfMethodProxiesForGlamorousToolkit,
	#superclass : #BaselineOf,
	#category : #BaselineOfMethodProxiesForGlamorousToolkit
}

{ #category : #baselines }
BaselineOfMethodProxiesForGlamorousToolkit >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec
			package: #MethodProxies;
			package: #'MethodProxies-Tests'
			with: [ spec requires: #( #MethodProxies #MethodProxiesExamples ) ];
			package: #MethodProxiesExamples
			with: [ spec requires: #( #MethodProxies ) ];
			package: #'MethodProxiesExamples-Tests'
			with: [
				spec requires: #( #'MethodProxies-Tests' ) ] ]
]
