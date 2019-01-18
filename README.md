# utility Manual

## Description

A collection of useful macros and functions I use in almost every project.

## Installing utility


We can use [QuickLisp](https://www.quicklisp.org/beta/ "QuickLisp") to load utility:
```lisp
(ql:quickload :utility)
```

## Some Things inside

- [macro] ```(DOHASH ((K V) HASH &body BODY))```

    - Iterate through the contents of a hash table.

- [macro] ```(ETOUQ (&body BODY))```

    - Expand into the macro-time evaluation of BODY.
    
```lisp
(etouq (list (car (cons 'car 0))
		      `(quote ,(cdr (list 0 1 2)))))
=> 
1 
```

- [macro] ```(DOBOX ((&rest INTERVAL-FORMS) &rest BODY))```

    - Iterate through all coordinates bounded by the dimensions specified in INTERVAL-FORMS.

Example:

```lisp
(dobox ((x 0 2) (y 0 3)) (print (list x y)))
=> 
(0 0) 
(0 1) 
(0 2) 
(1 0) 
(1 1) 
(1 2)
```

- [function] ```(KEYWORDIFY (SYM))```

    - Intern SYM in the keyword package. SYM is a string designator.  

- [macro] ```(ANY (&body BODY))```

    - Expand into a random element of body. Most useful to denote code invariants.
    
- [function] ```(FLOATIFY (X))```

    - Coerce X to type 'SINGLE-FLOAT
    
## License Information

This library is released under the MIT License.

