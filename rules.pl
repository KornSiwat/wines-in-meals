:- use_module(facts,[]).

wine_in_type(NAME, TYPE):-
  facts:wine(NAME),
  facts:isWineType(NAME, TYPE).

ingredient_in_minor_type(NAME, TYPE):-
  facts:ingredient(NAME),
  facts:hasMinorType(NAME, TYPE).

ingredient_in_major_type(NAME, TYPE):-
  facts:ingredient(NAME),
  facts:hasMajorType(NAME, TYPE).

ingredient_compatible_with_wine(INGREDIENT_NAME, WINE_NAME):-
  facts:ingredient(INGREDIENT_NAME),
  facts:wine(WINE_NAME),
  facts:isWineType(WINE_NAME, WINE_TYPE),
  ingredient_in_minor_type(INGREDIENT_NAME, INGREDIENT_TYPE),
  facts:compatible(INGREDIENT_TYPE, WINE_TYPE).

ingredient_compatible_with_wine_type(INGREDIENT_NAME, WINE_TYPE):-
  facts:ingredient(INGREDIENT_NAME),
  facts:hasMinorType(INGREDIENT_NAME, INGREDIENT_TYPE),
  facts:compatible(INGREDIENT_TYPE, WINE_TYPE).