ASDF-loadable fixtures for CLOS classes.

# Usage

## Fixture Syntax

```lisp
(package:class-name
  (:slot-name1 value
   :slot-name2 value)
  (:slot-name1 value
   :slot-name2 value))
(package:another-class
  ...)
```

## Example

```lisp
(app:user
  (:name "eudoxia"
   :groups (:admin :staff))
  (:name "joe"
   :groups (:admin)))
(app:company
  (:name "Initech"
   :city "Denver"))
```

## Loading from Lisp

```lisp
(clos-fixtures:load-fixtures
  '(myapp:user ...))
```

## Loading from ASDF

Simply put this in your components tree (Check `clos-fixtures-test.asd` for an example):

```lisp
(:fixture "filename")
```

## Post-processing

Add this to the fixture:

```lisp
(app:user-model
 ...
 :fn #'app:add-instances-to-db)
```

# License

Copyright (c) 2014 Fernando Borretti (eudoxiahp@gmail.com)

Licensed under the MIT License.
