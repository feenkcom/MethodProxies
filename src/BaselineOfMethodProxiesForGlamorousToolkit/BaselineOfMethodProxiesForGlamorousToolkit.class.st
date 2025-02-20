Class {
	#name : #BaselineOfMethodProxiesForGlamorousToolkit,
	#superclass : #BaselineOf,
	#category : #BaselineOfMethodProxiesForGlamorousToolkit
}

{ #category : #baselines }
BaselineOfMethodProxiesForGlamorousToolkit >> baseline: spec [

	<baseline>
	spec for: #common do: [
	
		"This is only needed for Pharo 11"
		spec package: #Instrumentation.
			
		spec 
			package: #MethodProxies
				with: [ spec requires: #( Instrumentation )  ] ;
			package: #'MethodProxies-Tests'
				with: [ spec requires: #( #MethodProxies ) ];
			package: #MethodProxiesExamples
				with: [ spec requires: #( #MethodProxies ) ];
			package: #'MethodProxiesExamples-Tests'
				with: [ 
					spec requires: #( #MethodProxiesExamples #'MethodProxies-Tests' ) ] ]
]
