as yet unclassified
serializedGrammar
^ 'OhmGenericFunctionsSmalltalk <: OhmSmalltalk {

BasicKeywordMethodHeaderSegment = keyword bindableIdentifier

GenericFunctionKeywordMethodHeaderSegment = BasicKeywordMethodHeaderSegment identifier ~":"

KeywordMethodHeader :=
    KeywordMethodHeaderSegment+

KeywordMethodHeaderSegment := GenericFunctionKeywordMethodHeaderSegment | BasicKeywordMethodHeaderSegment}'