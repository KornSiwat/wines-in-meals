:- use_module(facts,[]).

wine_in_type(NAME, TYPE):-
  facts:wine(NAME),
  facts:wineType(TYPE),
  facts:isWineType(NAME, TYPE).

ingredient_in_minor_type(NAME, TYPE):-
  facts:ingredient(NAME),
  facts:minorType(TYPE),
  facts:hasMinorType(NAME, TYPE).

ingredient_in_major_type(NAME, MAJOR_TYPE):-
  facts:ingredient(NAME),
  facts:minorType(MINOR_TYPE),
  facts:hasMinorType(NAME, MINOR_TYPE),
  facts:majorType(MAJOR_TYPE),
  facts:hasMajorType(MINOR_TYPE, MAJOR_TYPE).

ingredient_compatible_with_wine(INGREDIENT_NAME, WINE_NAME):-
  facts:ingredient(INGREDIENT_NAME),
  facts:wine(WINE_NAME),
  facts:wineType(WINE_TYPE),
  facts:isWineType(WINE_NAME, WINE_TYPE),
  ingredient_in_minor_type(INGREDIENT_NAME, INGREDIENT_TYPE),
  facts:compatible(INGREDIENT_TYPE, WINE_TYPE).

ingredient_compatible_with_wine_type(INGREDIENT_NAME, WINE_TYPE):-
  facts:ingredient(INGREDIENT_NAME),
  facts:wineType(WINE_TYPE),
  ingredient_in_minor_type(INGREDIENT_NAME, INGREDIENT_TYPE),
  facts:compatible(INGREDIENT_TYPE, WINE_TYPE).
