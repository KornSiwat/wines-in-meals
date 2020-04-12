# Wine in various meals

Knowledge engineering and management project by

| name                    | student id |
| ----------------------- | ---------- |
| Siwat Ponpued           | 6110546640 |
| Natthaphon Rakprakobkij | 6110546402 |
| Sidtipat Kietchai       | 6110546046 |

## Prerequisite

- SWI-Prolog [Download](https://www.swi-prolog.org/Download.html)

## Knowledge Base

- Wine in various meals [here](https://docs.google.com/spreadsheets/d/1OqsOBcwuq_BCIbzLmF_sSkSi3G_wkMLqgZNDWAK8pR8/edit?usp=sharing) summarized from data in [WineFolly](https://winefolly.com)

## USAGE

* facts:wine(X)
    * check if the X is wine name or not    
    * list wine name

* facts:wineType(X)
    * check if the X is wine type or not    
    * list wine type

* wine_in_type(NAME, TYPE)
    * check if NAME is a wine of wine type: TYPE
    * show name and type
    * find wine name of type: TYPE
    * find type of wine with name: NAME

* ingredient_in_minor_type(NAME, TYPE)
    * check if NAME is an ingredient with minor type: TYPE
    * find ingredient name of minor type: TYPE
    * find minor type of ingredient with name: NAME

* ingredient_in_major_type(NAME, TYPE)
    * check if NAME is an ingredient with major type: TYPE
    * find ingredient name of major type: TYPE
    * find major type of ingredient with name: NAME

* ingredient_compatible_with_wine(INGREDIENT_NAME, WINE_NAME)
    * check if ingredient compatible with wine
    * find wine that compatible with ingredient: INGREDIENT_NAME
    * find ingredient that compatible with wine name: WINE_NAME

* facts:compatible(INGREDIENT_TYPE, WINE_TYPE)
    * check if ingredient type compatible with wine type
    * find ingredient_type that is compatible with wine type: WINE_TYPE
    * find wine type that is compatible with ingredient type: INGREDIENT_TYPE

* ingredient_compatible_with_wine_type(INGREDIENT_NAME, WINE_TYPE)
    * check if ingredient compatible with wine type
    * find ingredient name that compatible with wine type: WINE_TYPE
    * find wine type that compatible with ingredient name: INGREDIENT_NAME
