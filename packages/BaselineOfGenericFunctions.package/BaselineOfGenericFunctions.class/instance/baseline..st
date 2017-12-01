baseline
baseline: spec
    <baseline>
    spec
        for: #common
        do: [ 
            spec
                package: 'GenericFunctions';
                package: 'GenericFunctions-Tests' with: [ spec requires: #('default') ];
		    package: 'GenericFunctions-Grammar-Tests' with: [ spec requires: #('grammar') ].
            spec
                group: 'default' with: #('GenericFunctions-Core');
		    group: 'grammar' with: #('GenericFunctions-Grammar');
		    group: 'Tests' with: #('GenericFunctions-Tests' 'GenericFunctions-Grammar-Tests') ]