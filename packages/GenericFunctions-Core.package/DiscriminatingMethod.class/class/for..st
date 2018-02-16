as yet unclassified
for: aMultiMethod

	^ DiscriminatingMethod new
								receiver: aMultiMethod receiver;
								selector: aMultiMethod genericMessageSelector;
								addToGenericMessage: (GenericMessage uniqueInstance at: aMultiMethod genericMessageSelector);
								yourself  