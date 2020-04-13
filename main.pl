:- use_module(rules,[]).

list_wine():- forall(facts:wine(X), writeln(wine:X)).
list_wineType():- forall(facts:wineType(X), writeln(wineType:X)).
list_wine_name_type:- forall(rules:wine_in_type(NAME, TYPE), writeln(name:NAME+type:TYPE)).
list_ingredient():- forall(facts:ingredient(X), writeln(ingredient:X)).
list_ingredient_minor_type():- forall(facts:minorType(X), writeln(ingredientMinorType:X)).
list_ingredient_major_type():- forall(facts:majorType(X), writeln(ingredientMajorType:X)).
list_ingredient_name_minor_type():- forall(rules:ingredient_in_minor_type(X, Y), writeln(ingredient:X+type:Y)).
find_ingredient_by_minor_type(Y):- forall(rules:ingredient_in_minor_type(X, Y), writeln(ingredient:X)).
find_ingredient_by_major_type(Y):- forall(rules:ingredient_in_major_type(X, Y), writeln(ingredient:X)).
list_ingredient_compatible_with_wine():- forall(rules:ingredient_compatible_with_wine(X, Y), writeln(ingredient:X+wine:Y)).
find_compatible_ingredient_by_wine(Y):- forall(rules:ingredient_compatible_with_wine(X, Y), writeln(ingredient:X)).
find_compatible_wine_by_ingredient(X):- forall(rules:ingredient_compatible_with_wine(X, Y), writeln(wine:Y)).
list_ingredient_compatible_with_wine_type():- forall(rules:ingredient_compatible_with_wine_type(INGREDIENT_NAME, WINE_TYPE), writeln(ingredient:INGREDIENT_NAME+wineType:WINE_TYPE)).
find_compatible_wine_type_by_ingredient(X):- forall(rules:ingredient_compatible_with_wine_type(X, Y), writeln(wineType:Y)).
find_compatible_wine_type_by_ingredient(Y):- forall(rules:ingredient_compatible_with_wine_type(X, Y), writeln(ingredient:X)).

