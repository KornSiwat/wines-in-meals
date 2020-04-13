:- use_module(rules,[]).

wines:- forall(facts:wine(X), writeln(wine:X)).
wineTypes:- forall(facts:wineType(X), writeln(wineType:X)).
wineNameType:- forall(rules:wine_in_type(NAME, TYPE), writeln(name:NAME+type:TYPE)).

ingredients:- forall(facts:ingredient(X), writeln(ingredient:X)).
ingredientMinorTypes:- forall(facts:minorType(X), writeln(ingredientMinorType:X)).
ingredientMajorTypes:- forall(facts:majorType(X), writeln(ingredientMajorType:X)).
ingredientNameMinorTypes:- forall(rules:hasMinorType(X, Y), writeln(ingredient:X+type:Y)).
ingredientNameMajorTypes:- forall(rules:hasMajorType(X, Y), writeln(ingredient:X+type:Y)).

ingredientWineCompatiblePairs:- forall(rules:ingredientCompatibleWithWine(X, Y, Z), writeln(ingredient:X+wine:Y)).
ingredientWineTypeCompatiblePairs:- forall(rules:ingredientCompatibleWithWine(X, Y, Z), writeln(ingredient:X+wineType:Y)).

compatibleIngredientForWine(Y):- forall(rules:ingredientCompatibleWithWine(X, Y, Z), writeln(ingredient:X)).
compatibleIngredientWithMajorTypeForWine(Z, Y):- forall(rules:ingredientCompatibleWithWine(X, Y, Z), writeln(ingredient:X)).
compatibleWineForIngredient(X):- forall(rules:ingredientCompatibleWithWine(X, Y, Z), writeln(wine:Y)).

compatibleWineTypeForIngredient(X):- forall(rules:ingredientCompatibleWithWineType(X, Y, Z), writeln(wineType:Y)).
compatibleIngredientForWineType(Y):- forall(rules:ingredientCompatibleWithWineType(X, Y, Z), writeln(ingredient:X)).
compatibleIngredientWithMajorTypeForWineType(Z, Y):- forall(rules:ingredientCompatibleWithWineType(X, Y, Z), writeln(ingredient:X)).
