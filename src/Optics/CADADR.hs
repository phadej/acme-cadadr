module Optics.CADADR where

import Optics.Core (Lens, Field1(_1), Field2(_2), (%))

-------------------------------------------------------------------------------
-- * 2
-------------------------------------------------------------------------------

car :: Field1 s t a b => Lens s t a b
car = _1

cdr :: Field2 s t a b => Lens s t a b
cdr = _2

-------------------------------------------------------------------------------
-- * 3
-------------------------------------------------------------------------------

caar :: (Field1 s t u v, Field1 u v a b) => Lens s t a b
cadr :: (Field2 s t u v, Field1 u v a b) => Lens s t a b

caar = car % car
cadr = cdr % car

cdar :: (Field1 s t u v, Field2 u v a b) => Lens s t a b
cddr :: (Field2 s t u v, Field2 u v a b) => Lens s t a b

cdar = car % cdr
cddr = cdr % cdr

-------------------------------------------------------------------------------
-- * 4
-------------------------------------------------------------------------------

caaar :: (Field1 s t u1 v1, Field1 u1 v1 u2 v2, Field1 u2 v2 a b) => Lens s t a b
caadr :: (Field2 s t u1 v1, Field1 u1 v1 u2 v2, Field1 u2 v2 a b) => Lens s t a b
cadar :: (Field1 s t u1 v1, Field2 u1 v1 u2 v2, Field1 u2 v2 a b) => Lens s t a b
caddr :: (Field2 s t u1 v1, Field2 u1 v1 u2 v2, Field1 u2 v2 a b) => Lens s t a b

caaar = car % car % car
caadr = cdr % car % car
cadar = car % cdr % car
caddr = cdr % cdr % car

cdaar :: (Field1 s t u1 v1, Field1 u1 v1 u2 v2, Field2 u2 v2 a b) => Lens s t a b
cdadr :: (Field2 s t u1 v1, Field1 u1 v1 u2 v2, Field2 u2 v2 a b) => Lens s t a b
cddar :: (Field1 s t u1 v1, Field2 u1 v1 u2 v2, Field2 u2 v2 a b) => Lens s t a b
cdddr :: (Field2 s t u1 v1, Field2 u1 v1 u2 v2, Field2 u2 v2 a b) => Lens s t a b

cdaar = car % car % cdr
cdadr = cdr % car % cdr
cddar = car % cdr % cdr
cdddr = cdr % cdr % cdr

-------------------------------------------------------------------------------
-- * 5
-------------------------------------------------------------------------------

caaaar :: (Field1 s t u1 v1, Field1 u1 v1 u2 v2, Field1 u2 v2 u3 v3, Field1 u3 v3 a b) => Lens s t a b
caaadr :: (Field2 s t u1 v1, Field1 u1 v1 u2 v2, Field1 u2 v2 u3 v3, Field1 u3 v3 a b) => Lens s t a b
caadar :: (Field1 s t u1 v1, Field2 u1 v1 u2 v2, Field1 u2 v2 u3 v3, Field1 u3 v3 a b) => Lens s t a b
caaddr :: (Field2 s t u1 v1, Field2 u1 v1 u2 v2, Field1 u2 v2 u3 v3, Field1 u3 v3 a b) => Lens s t a b
cadaar :: (Field1 s t u1 v1, Field1 u1 v1 u2 v2, Field2 u2 v2 u3 v3, Field1 u3 v3 a b) => Lens s t a b
cadadr :: (Field2 s t u1 v1, Field1 u1 v1 u2 v2, Field2 u2 v2 u3 v3, Field1 u3 v3 a b) => Lens s t a b
caddar :: (Field1 s t u1 v1, Field2 u1 v1 u2 v2, Field2 u2 v2 u3 v3, Field1 u3 v3 a b) => Lens s t a b
cadddr :: (Field2 s t u1 v1, Field2 u1 v1 u2 v2, Field2 u2 v2 u3 v3, Field1 u3 v3 a b) => Lens s t a b

caaaar = car % car % car % car
caaadr = cdr % car % car % car
caadar = car % cdr % car % car
caaddr = cdr % cdr % car % car
cadaar = car % car % cdr % car
cadadr = cdr % car % cdr % car
caddar = car % cdr % cdr % car
cadddr = cdr % cdr % cdr % car

cdaaar :: (Field1 s t u1 v1, Field1 u1 v1 u2 v2, Field1 u2 v2 u3 v3, Field2 u3 v3 a b) => Lens s t a b
cdaadr :: (Field2 s t u1 v1, Field1 u1 v1 u2 v2, Field1 u2 v2 u3 v3, Field2 u3 v3 a b) => Lens s t a b
cdadar :: (Field1 s t u1 v1, Field2 u1 v1 u2 v2, Field1 u2 v2 u3 v3, Field2 u3 v3 a b) => Lens s t a b
cdaddr :: (Field2 s t u1 v1, Field2 u1 v1 u2 v2, Field1 u2 v2 u3 v3, Field2 u3 v3 a b) => Lens s t a b
cddaar :: (Field1 s t u1 v1, Field1 u1 v1 u2 v2, Field2 u2 v2 u3 v3, Field2 u3 v3 a b) => Lens s t a b
cddadr :: (Field2 s t u1 v1, Field1 u1 v1 u2 v2, Field2 u2 v2 u3 v3, Field2 u3 v3 a b) => Lens s t a b
cdddar :: (Field1 s t u1 v1, Field2 u1 v1 u2 v2, Field2 u2 v2 u3 v3, Field2 u3 v3 a b) => Lens s t a b
cddddr :: (Field2 s t u1 v1, Field2 u1 v1 u2 v2, Field2 u2 v2 u3 v3, Field2 u3 v3 a b) => Lens s t a b

cdaaar = car % car % car % cdr
cdaadr = cdr % car % car % cdr
cdadar = car % cdr % car % cdr
cdaddr = cdr % cdr % car % cdr
cddaar = car % car % cdr % cdr
cddadr = cdr % car % cdr % cdr
cdddar = car % cdr % cdr % cdr
cddddr = cdr % cdr % cdr % cdr
