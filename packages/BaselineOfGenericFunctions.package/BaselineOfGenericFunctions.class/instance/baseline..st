baseline
baseline: spec
    <baseline>
    spec
        for: #common
        do: [ 
		spec baseline: 'Ohm' with: [
			spec
				repository: 'github://hpi-swa/ohm-s/packages'
		].
            spec
                package: 'GenericFunctions-Core';
		    package: 'GenericFunctions-Grammar' with: [ spec requires: #('Ohm') ];
                package: 'GenericFunctions-Tests-Core' with: [ spec requires: #('default') ];
		    package: 'GenericFunctions-Tests-Grammar' with: [ spec requires: #('grammar') ].
            spec
                group: 'default' with: #('GenericFunctions-Core');
		    group: 'grammar' with: #('GenericFunctions-Grammar');
		    group: 'tests' with: #('GenericFunctions-Tests-Core' 'GenericFunctions-Tests-Grammar') 
		]