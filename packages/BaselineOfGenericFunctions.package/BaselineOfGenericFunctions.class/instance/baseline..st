baseline
baseline: spec
    <baseline>
    spec
        for: #common
        do: [ 
            spec
                package: 'GenericFunctions-Core';
		    package: 'GenericFunctions-Grammar';
                package: 'GenericFunctions-Tests-Core' with: [ spec requires: #('default') ];
		    package: 'GenericFunctions-Tests-Grammar' with: [ spec requires: #('grammar') ];
		    yourself.
            spec
                group: 'default' with: #('GenericFunctions-Core');
		    group: 'grammar' with: #('GenericFunctions-Grammar');
		    group: 'tests' with: #('GenericFunctions-Tests-Core' 'GenericFunctions-Tests-Grammar') ];
	          yourself 