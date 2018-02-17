# Generic Messages (Squeak/Smalltalk) ![Build Status](https://travis-ci.org/marcfreiheit/generic-functions-squeak.svg?branch=master) [![Coverage Status](https://coveralls.io/repos/github/marcfreiheit/generic-functions-squeak/badge.svg?branch=master)](https://coveralls.io/github/marcfreiheit/generic-functions-squeak?branch=master)
Generic Messages are an implementation of Generic Functions known from [CLOS](https://en.wikipedia.org/wiki/Common_Lisp_Object_System). They add support to dispatch a method on multiple parameters instead of a dispatch based on the receiver. 
They were implemented during the seminar _Programming Languages - Implementation and Design_ at the chair @hpi-swa-teaching at the HPI, Potsdam, Germany.

## Prerequisites
Make sure that you have [Metacello](https://github.com/dalehenrich/metacello-work) installed. 
## Setup
1. Clone this repo.
1. Open your Monticello Browser inside your Squeak
1. Add a _filetree_ repository to your package and select path: {repo_home}/packages
1. Load both _GenericFunctions-Core_, _GenericFunctions-Exceptions_ and _GenericFunctions-Tools_ (Other packages aren't important for running Generic Messages. They contain tests or courcs related stuff like a Gamada grammar)
1. You're ready to go!

## Getting Started
### Hello Generic Message
1. Create a new class
```Smalltalk
Object subclass: #DemoIntegerFive
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'GenericFunctions-Demo'
```
1. Add a _numericValue_ message to your demo integer
```Smalltalk
numericValue

	^ 5
```
1. Add your first MultiMethod. We want to define the MultiMethod _#add:_ for a SmallInteger 
```Smalltalk
add: anInteger
	<MultiMethod>
	<parameter: #anInteger isKindOf: #SmallInteger>
	^ self numericValue + anInteger
```
1. Then we define a MultiMethod wich handles an incoming float by converting it first
```Smalltalk
add: aFloat
	<MultiMethod>
	<parameter: #anInteger isKindOf: #Float>
	^ self numericValue + aFloat asInteger
```
1. Let's try out! Open up a workspace and evaluate the following commands
```Smalltalk
DemoInteger new add: 10 "returns 15"
DemoInteger new add: 12.4 "returns 17"
DemoInteger new add: 'Do not work yet' "throws an error"
```

### Tooling
Generic Messages ship with their own 
### When to use Generic Messages

## Scope
### What you can do
The following actions can be performed without taking the system into a non-consistent state:
* You can add MultiMethods by annotating them with `<MultiMethod>` pragma
* You can change existing MultiMethods
* You can specify parameters by providing a class symbol
* You can browse MultiMethods using the _GenericMessageBrowser_
* You can delete MultiMethods
* You can delete classes with MultiMethods
* You can use your Squeak like before. My code does not make any changes to existing code
### What you can't do
The following actions can't be performed, because they are not implemented or take the system into a non-consistent state:
* You can't file out classes with MultiMethods
* You can't use Generic Messages inside the default system browser. Please refer to the tooling section
* You can't change instance variables of a class already containing MultiMethods. Recompiling logic is currently missing
* MethodCombinations and Ranking during dispatch isn't implemented yet. Therefore, dispatch fails if multiple methods are applicable
* You can't specify the specializing parameter. Pragmas are mapped from the left to right parameters. In addition, you can't specify a MultiMethod without any specializer.

## Implementation
### How does the dispatch works? 
![Dispatch](https://github.com/marcfreiheit/generic-functions-squeak/blob/master/resources/img/Generic%20Messages%20-%20Dispatch.png)
### Testing
Unfortunately, you can't rely on my testbed anymore. Due to side effects and a bad performing VM I stopped programming regarding the TDD paradigm. Some tests should work. On the other hand, some tests cause side effects because they to clean the method dicts and global Generic Message dict. 
If you want to be safe, skip importing _GenericFunctions-Tests-*_

## Resources
* Foote B., Johnson R.E., Noble J. (2005) Efficient Multimethods in a Single Dispatch Language. In: Black A.P. (eds) ECOOP 2005 - Object-Oriented Programming. ECOOP 2005. Lecture Notes in Computer Science, vol 3586. Springer, Berlin, Heidelberg
* REIN, Patrick. Automatic Reuse through Implied Methods: The Design and Implementation of an Abstraction Mechanism for Implied Interfaces. In: Companion to the first International Conference on the Art, Science and Engineering of Programming. ACM, 2017. S. 38.
* REIN, Patrick. Deducing classes: integrating the domain models of object-oriented applications. In: Companion Proceedings of the 2016 ACM SIGPLAN International Conference on Systems, Programming, Languages and Applications: Software for Humanity. ACM, 2016. S. 67-68.
* DEMICHIEL, Linda G.; GABRIEL, Richard P. The Common Lisp Object System: An Overview. In: ECOOP. 1987. S. 151-170.
BOBROW, Daniel G., et al. CommonLoops: Merging Lisp and object-oriented programming. In: ACM Sigplan Notices. ACM, 1986. S. 17-29.
* GOLDBERG, Adele; ROBSON, David. Smalltalk-80: the language and its implementation. Addison-Wesley Longman Publishing Co., Inc., 1983.
* ROWLEDGE, Tim, et al. A Tour of the Squeak Object Engine. Squeak: Open Personal Computing and Multimedia. Prentice Hall, 2001.
* SAMIMI, Hesam, et al. Call by meaning. In: Proceedings of the 2014 ACM International Symposium on New Ideas, New Paradigms, and Reflections on Programming & Software. ACM, 2014. S. 11-28.
* FOOTE, Brian; JOHNSON, Ralph; NOBLE, James. Efficient multimethods in a single dispatch language. ECOOP 2005-Object-Oriented Programming, 2005, S. 733-733.
* [Wikipedia CLOS](https://en.wikipedia.org/wiki/Common_Lisp_Object_System)
* [Differences between Polymorphism and Overloading](http://www.differencebetween.info/difference-between-polymorphism-and-overloading)
* [Differences between early and late binding](https://stackoverflow.com/questions/10580/what-is-the-difference-between-early-and-late-binding)
* [Swindle, a CLOS implementation in Lisp](http://download.plt-scheme.org/doc/301/html/swindle/)
