:- module(rules,[]).
:- use_module(facts,[]).

hasMajorType(NAME, MAJOR_TYPE):-
  facts:hasMinorType(NAME, MINOR_TYPE),
  facts:hasMajorType(MINOR_TYPE, MAJOR_TYPE).

ingredientCompatibleWithWine(INGREDIENT_NAME, WINE_NAME, MAJOR_TYPE):-
  facts:ingredient(INGREDIENT_NAME),
  facts:hasMinorType(INGREDIENT_NAME, MINOR_TYPE),
  hasMajorType(MINOR_TYPE, MAJOR_TYPE),
  facts:compatible(MINOR_TYPE, WINE_TYPE),
  facts:isWineType(WINE_NAME, WINE_TYPE).

ingredientCompatibleWithWineType(INGREDIENT_NAME, WINE_TYPE, MAJOR_TYPE):-
  facts:ingredient(INGREDIENT_NAME),
  facts:hasMinorType(INGREDIENT_NAME, MINOR_TYPE),
  hasMajorType(INGREDIENT_NAME, MAJOR_TYPE),
  facts:compatible(MINOR_TYPE, WINE_TYPE).