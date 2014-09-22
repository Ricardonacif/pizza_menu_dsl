Pizza Menu DSL
=========

Implementations of a Pizza Menu DSL for an ACTalk. 

There are 5 different implementations, the best version is the number 5 and here are the difference between them:

1. Initial DSL implemented on the global namespace
 
2. 
  - Everything wrapped up into classes
  - Attribute 'topping' now is 'toppings' (array)
  - If there are more than 4 toppings, an exception is raised

3. method_missing implemented to be more DRY
4. Method Chaining made possible
5. Added observations

##Talk

The slides of the talk are available at http://ricardonacif.github.io/ruby_dsl_talk