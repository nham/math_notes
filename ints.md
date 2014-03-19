You should look at least at the page on the natural numbers for background, and possibly also at the set theory notes.

## Definition of the Integers
An **integer** is an expression $a --- b$ for $a, b \in \mathbb{N}$. Two integers $a --- b$ and $c --- d$ are equal iff $a + d = c + b$. $\mathbb{Z}$ denotes the set of all integers.

## Integer equality is an equivalence relation
For all $a --- b, c --- d, e --- f \in \mathbb{Z}$, we have

 - $a --- b = a --- b$
 - If $a -- b = c --- d$, then $c --- d = a --- b$
 - If $a --- b = c --- d $ and $c --- d = e --- f$, then $a --- b = e --- f$

 1. $a --- b = a --- b$

    *Proof:* $a + b = b + a$ by commutativity of $+$.

 2. If $a -- b = c --- d$, then $c --- d = a --- b$

    *Proof:* By hypothesis $a + d = c + b$. But $c + b = a + d$ by symmetricity of equality on $\mathbb{N}$.

 3. If $a --- b = c --- d $ and $c --- d = e --- f$, then $a --- b = e --- f$

    *Proof:* We have $a + d = c + b$ and $c + f = e + d$, so $a + f + c + d = e + b + c + d$ by addition. By cancellation we have $a + f = e + b$, which proves the statement.


## Definition of integer addition and multiplication
Integer addition is defined by $a --- b + c --- d = (a + c) --- (b + d)$

Integer multiplication is defined by $ a --- b \cdot c --- d = (ac + bd) --- (ad + bc)$

### Addition and multiplication are well-defined
If $A --- B = a --- b$ and $C --- D = c --- d$ then

 - $A --- B + C --- D = a --- b + c --- d$
 - $A --- B \cdot C --- D = a --- b \cdot c --- d$

 1. $A --- B + C --- D = a --- b + c --- d$

    *Proof:* We must show $(A + C) --- (B + D) = (a + c) --- (b + d)$ That is, that $(A + C) + (b + d) = (a + c) + (B + D)$. But $A + b = a + B$ and $C + d = c + D$, which establishes the statement.

 2. $A --- B \cdot C --- D = a --- b + c --- d$

    *Proof:* We must show $Z := (AC + BD) --- (AD + BC) = (ac + bd) -- (ad + bc) =: z$, or:

    $$Z_0 + z_1 = z_0 + Z_1$$

    Where $Z_0 = AC + BD$, $Z_1 = AD + BC$, $z_0 = ad + bc$ and $z_1 = ac + bd$.

    However, it can be easily shown that

    $$z_0 + (Ac + Bd) = z_1 + (Ad + Bc)$$

    and

    $$Z_0 + (Ad + Bc) = Z_1 + (Ac + Bd)$$

    So $Z_0 + z_1 + (Ac + Bd) + (Ad + Bc) = z_0 + Z_1 + (Ac + Bd) + (Ad + Bc)$, so by cancellation the statement is established.


## $\mathbb{N}$ is a subset of $\mathbb{Z}$
For all $n, m \in \mathbb{N}$, 
 - $n --- 0 + m --- 0 = (n + m) --- 0$, 
 - $n --- 0 \times m --- 0 = (n \cdot m) --- 0$
 - $n --- 0 = m --- 0$ iff $n = m$.

 1. $n --- 0 + m --- 0 = (n + m) --- 0$

    *Proof:* Immediate from the definition of integer addition.

 2. $n --- 0 \times m --- 0 = (n \cdot m) --- 0$

    *Proof:* $n -- 0 \times m --- 0 = (nm  + 00) --- (n0 + m0) = nm --- 0$.

 3. $n --- 0 = m --- 0$ iff $n = m$.

    *Proof:*  Immediate from the definition of integer equality.

### Corollary
We can identify for all $n \in \mathbb{N}$ the integer $n --- 0$, since these integers behave exactly like the naturals. We will say that an integer $z = n$ for some $n \in \mathbb{N}$ as shorthand for $z = n --- 0$.


## Definition of integer negation
If $a --- b \in \mathbb{Z}$, then $-(a --- b)$ defined to be $b --- a$.

### Integer negation is well-defined
If $A --- B = a --- b$, then $-(A --- B) = -(a --- b)$

*Proof:* $-(A --- B) = B --- A$. But $A = a$ and $B = b$ by hypothesis, so $B --- A = b --- a = -(a --- b)$.



## Integer trichotomy
For all  $z \in \mathbb{Z}$, exactly one of these is true:

 A.  $z = 0$
 B.  there is an $n \in \mathbb{N}^+$ such that $n = z$
 C.  there is an $n \in \mathbb{N}^+$ such that $-n = z$

 1. It suffices to assume $z \in \mathbb{Z}$ and prove that both at least one is true and at most one is true.

 2. At least one is true

    1. $z = a --- b$ for some $a, b \in \mathbb{N}$. It suffices to prove the statement in each of three cases:

        - $a > b$
        - $a = b$
        - $a < b$

       *Proof:* By the trichotomy law for $\mathbb{N}$, exactly one of the three cases must be true.

    2. Case $a > b$

       1. There is an $n \in \mathbb{N}^+$ such that $b + n = a$.

          *Proof:* Definition of $a > b$

       2. $n = a --- b$

          *Proof:* Definition of equality and (1)

       3. Q.E.D.

          *Proof:* By (2)

    3. Case $a = b$

       *Proof:* this directly implies that $a --- b = 0 --- 0 = 0$.

    4. Case $a < b$

       1. There is an $n \in \mathbb{N}^+$ such that $a + n = b$.

          *Proof:* Definition of $a < b$

       2. $-n = a --- b$

          *Proof:* $-n := 0 --- n$, and (1) implies $a --- b = 0 --- n$.

       3. Q.E.D.

          *Proof:* By (2)

    5. Q.E.D.

       *Proof:* (2), (3) and (4) cover all cases.

 3. At most one is true

    1. (A) implies neither (B) nor (C)

       *Proof:* (A) means $z = 0 --- 0$, so the only $n \in \mathbb{N}$ such that $n = z$ is $n = 0$. This is not a positive natural, so (B) is not true, and $-0 = 0$, so (C) is not true.

    2. (B) implies not (C)

       *Proof:* If $z = n \in \mathbb{N}^+$, then $z \neq -n$ since that would imply $n --- 0 = 0 --- n$, or $n = 0$, which contradicts our assumption.

    3. Q.E.D.

       *Proof:* The remaining implications follow as contrapositives from (1) and (2)

 4. Q.E.D.

    *Proof:* By (2) and (3)


## $\mathbb{Z}$ is a commutative ring
The integers satisfy the following properties. For all $x, y, z \in \mathbb{Z}$

 - $x + y = y + x$
 - $x + (y + z) = (x + y) + z$
 - $x + 0 = 0 + x = x$
 - $x + (-x) = (-x) + x = 0$
 - $x y = y x$
 - $x (y z) = (x y) z$
 - $x 1 = 1 x = x$
 - $x (y + z) = x y + x z$
 - $(x + y) z = x z + y z$

 1. It suffices to assume $x = a --- b$, $y = c --- d$, $z = e --- f$ for $a, b, c, d, e, f \in \mathbb{N}$ and prove each of these.

 2. $x + y = y + x$

    *Proof:* We must prove $(a + c) --- (b + d) = (c + a) --- (d + b)$ by (1). But this holds since addition in $\mathbb{N}$ is commutative.

 3. $x + (y + z) = (x + y) + z$

    *Proof:* We must prove $(a + (c + e)) --- (b + (d + f)) = ((a + c) + e) --- ((b + d) + f)$. This follows immediately from associativity of addition in $\mathbb{N}$.

 4. $x + 0 = 0 + x = x$

    *Proof:* We have $x + 0 = x$ since $a + 0 = a$ and $b + 0 = 0$ in $\mathbb{N}$. The other equality follows from commutativity in (2).

 5. $x + (-x) = (-x) + x = 0$

    *Proof:* We must prove $(a + b) --- (b + a) = 0 --- 0$. The other equality follows from commutativity in (2). But this statement follows from commutativity in $\mathbb{N}$.

 6. $x y = y x$

    *Proof:* We must prove $(ac + bd) --- (ad + bc) = (ca + db) --- (cb + da)$. This follows from the definition of equality in $\mathbb{Z}$ and commutativity of multiplication in $\mathbb{N}$.

 7. $x (y z) = (x y) z$

    1. It suffices to prove that
     
       $$a(ce + df) + b(cf + de) + (ac + bd)f + (ad + bc)e = (ac + bd)e + (ad + bc)f + a(cf + de) + b(ce + df)$$

       *Proof:* $x (y z) = $x \cdot (ce + df) --- (cf + de) = (a(ce + df) + b(cf + de)) --- (a(cf + de) + b(ce + df))$ and $(x y) z = (ac + bd) --- (ad + bc) \cdot z = $((ac + bd)e + (ad + bc)f) --- ((ac + bd)f + (ad + bc)e)$

    2. Q.E.D.

       *Proof:* Distributivity in $\mathbb{N}$ and carefully checking both sides proves the statement.

 8. $x 1 = 1 x = x$

    *Proof:* We must prove $a1 + b0 --- a0 + b1 = a --- b$, which is true. The other equality follows from commutativity in (1)$.

 9. $x (y + z) = x y + x z$

    *Proof:* We must prove $(a(c + e) + b(d + f)) --- (a(d + f) + b(c + e))$ is equal to $(ac + bd) --- (ad + bc) + (ae + bf) --- (af + be)$, which is true by the definition of addition in $\mathbb{Z}$ and the distributive law in $\mathbb{N}$.

 10. $(x + y) z = x z + y z$

     *Proof:* This follows from (9) and (2), but can also be proved directly in a manner similar to (9).


## Definition of subtraction
For any integers $x, y$, we define $x - y := x + (-y)$.

### No more need for $---$
For all $a, b \in \mathbb{N}$, $a --- b = a - b$.

*Proof:* $a - b = a + (-b) = (a + 0) --- (0 + b) = a --- b$.


## No zero divisors for the integers
If $x, y \in \mathbb{Z}$, and $x y = 0$, then $x = 0$ or $y = 0$.

*Proof:* $x y = (ac + bd) --- (ad + bc)$ for some $a, b, c, d \in \mathbb{N}$, so $ac + bd = 0$ and $ad + bc = 0$. $ac, bd, ad, bc$ are all natural numbers, so they must all be zero (only zeroes can sum to zero in $\mathbb{N}$). Since $\mathbb{N}$ has no zero divisors, we must have ($a = 0$ or $c = 0$) and ($b = 0$ or $d = 0$) and ($a = 0$ or $d = 0$) and ($b = 0$ or $c = 0$). So if $a \neq 0$ then $c = d = 0$, and if $b \neq 0$ then again $c = d = 0$. Also if $c \neq 0$ or $d \neq 0$, then $a = b = 0$.


### Corollary: cancellation law
If $x, y \in \mathbb{Z}$ and $z \neq 0$, then $xz = yz$ implies $x = y$.

*Proof:* $xz = yz$ implies that $xz - yz = (x - y)z = 0$, and $z \neq 0$, so $x - y$ must be zero due to no zero divisors. This implies $x = y$.


## Ordering on the integers
We define, for any $a, b \in \mathbb{Z}$, the relation $a \leq b$ to be true if there is an $n \in \mathbb{Z}$ such that $a + n = b$. We say $a < b$ if $n > 0$.


### Equivalent characterization
$a < b$ iff $b - a$ is positive.

 1. $a < b$ implies $b - a$ is positive

    *Proof:* We have $a + n = b$ for some $n > 0$,  so we subtract $a$ from both sides.

 2. $b - a$ being positive implies $a < b$

    *Proof:* $b - a = n$ for $n > 0$, so $a + b = n$ by adding $a$.


## Facts about order in $\mathbb{Z}$.
For any $a, b, c \in \mathbb{Z}$,

 - if $a < b$ then $a + c < b + c$
 - if $a < b$ and $c > 0$, then $ac < bc$
 - if $a < b$ then $-b < -a$
 - If $a < b$ and $b < c$ then $a < c$
 - Exactly one holds: $a < b$, $a = b$, $b < a$.

 1. if $a < b$ then $a + c < b + c$

    *Proof:* $a + n = b$ implies $a + c + n = b + c$, certainly.

 2. if $a < b$ and $c > 0$, then $ac < bc$

    *Proof:* $a + n = b$ for $n > 0$, so $ac + nc = bc$

 3. if $a < b$ then $-b < -a$

    *Proof:* $a + n = b$, so adding $-a - b$ to both sides proves the claim.

 4. If $a < b$ and $b < c$ then $a < c$

    *Proof:* This means $a + m = b$ and $b + n = c$ for $m, n > 0$. So $a + m + n = c$. This proves it since $n > 0$ and $m > 0$ imply $m + n > 0$ by (1).

 5. Exactly one holds: $a < b$, $a = b$, $b < a$.

    *Proof:* By the integer trichotomy, exactly one of $(a - b) > 0$, $a - b = 0$, or $-(a - b) > 0$. In the first case we have $a < b$, in the second case we have $a = b$, and in the third case we have $b < a$ since $(a - b) + -(a - b) = (a - b) + (b - a) = 0$, so $-(a - b) = (b - a) > 0$.
