## Definition of rationals
A **rational number** is an expression $a // b$ for $a,b \in \mathbb{Z}$, $b \neq 0$. The set of all rationals is denoted $\mathbb{Q}$. Equality in $\mathbb{Q}$ is defined by $a // b = c // d$ iff $ad = cb$.

## Addition, multiplication, negation
We define $a // b + c // d$ by $(ad + cb) // bd$ and $a // b \ast c // d$ by $ac // bd$. Also, define negation by $-(a // b) = (-a) // b$.


## Well-defined
Addition, multiplication and negation are well-defined.

 1. Assume $a,b,c,d,A,B,C,D \in \mathbb{Z}$ with $b, d, B, D$ all not zero. Further assume $a // b = A // B$ and $c // d = C // D$.

 2. $bd \neq 0$

    *Proof:* $b \neq 0$ and $d \neq 0$ by assumption. The integers have no zero divisors.

 3. Addition is well-defined.

    1. $(AD + CB)bd = (ad + cb)BD$

       *Proof:* We know $Ab = aB$ and $Cd = cD$ from (1), so $(AD + CB)bd = AbDd + CdBb = aBdD + cDBb = (ad + cb)BD)$.

    3. Q.E.D.

    *Proof:* By (1), $a // b + c // d$ is a valid rational since $bd \neq 0$ by (2). We are trying to prove $A // B + C // D = (AD + CB) // BD$ is equal to $(ad + cb) // bd$. (3.1) establishes this.

 4. Multiplication is well-defined.

    1. $ACbd = acBD$

       *Proof:* By (1), $Ab = aB$ and $Cd = cD$, which establishes the statement.

    2. Q.E.D.

       *Proof:* By (2) $a //b \ast c // d$ is a valid rational since $bd \neq 0$. We are trying to prove $A // B \ast C // D = AC // BD$ is equal to $ac // bd$. This holds immediately from (4.1).

 5. Negation is well-defined.

    *Proof:* We must prove $-(a // b) = -(A // B)$, or that $(-a)B = (-A)b$. But $(-a)B = -(aB) = -(Ab) = (-A)b$ by a basic fact of integer negation.


## Integers are a subset of the rationals.
For integers $a, b$, we have

 - $a // 1 + b // 1 = (a + b) // 1$
 - $a // 1 \ast b // 1 = (a b) // 1$.
 - $-(a // 1) = (-a) // 1$.

*Proof:* By definition of rational and integer addition, multiplication and negation

## Definition of reciprocal operation
If $x \in \mathbb{Q}$ and $x \neq 0$, then $x = a // b$ for some $a \neq 0$, b \neq 0$. We define $x^{-1} = b // a$ to be the **reciprocal** of $x$, which is valid since $a \neq 0$.

### Reciprocal is well-defined
If $a // b = A // B$ and $a \neq 0$, $A \neq 0$, then $b // a = B // A$.

*Proof:* We have $aB = Ab$. We must prove $bA = Ba$, which holds by commutativity of $\mathbb{Z}$.


## Trading our commutative ring in for a field
For all $x, y, z \in \mathbb{Q}$, we have

 - $x + y = y + x$
 - $x + (y + z) = (x + y) + z$
 - $x + 0 = 0 + x = x$
 - $x + (-x) = (-x) + x = 0$
 - $x y = y x$
 - $x (y z) = (x y) z$
 - $x 1 = 1 x = x$
 - $x (y + z) = x y + x z$
 - $(x + y) z = x z + y z$

and for $x \neq 0$,

 - $x^{-1} x = x x^{-1} = 1$.

 1. Assume $x = a // b$, $y = c // d$, $z = e // f$ for $a, b, c, d, e, f \in \mathbb{N}$, with $b, d, f$ not zero.

 2. $x + y = y + x$

    *Proof:* We must prove $(ad + bc) // bd = (cb + ad) // db$. But this holds since addition in $\mathbb{Z}$ is commutative.

 3. $x + (y + z) = (x + y) + z$

    *Proof:* We must prove $(a + (c + e)) // (b + (d + f)) = ((a + c) + e) // ((b + d) + f)$. This follows immediately from associativity of addition in $\mathbb{N}$.

 4. $x + 0 = 0 + x = x$

    *Proof:* We have $x + 0 = x$ since $a + 0 = a$ and $b + 0 = 0$ in $\mathbb{N}$. The other equality follows from commutativity in (2).

 5. $x + (-x) = (-x) + x = 0$

    *Proof:* We must prove $(a + b) // (b + a) = 0 // 0$. The other equality follows from commutativity in (2). But this statement follows from commutativity in $\mathbb{N}$.

 6. $x y = y x$

    *Proof:* We must prove $(ac + bd) // (ad + bc) = (ca + db) // (cb + da)$. This follows from the definition of equality in $\mathbb{Z}$ and commutativity of multiplication in $\mathbb{N}$.

 7. $x (y z) = (x y) z$

    1. It suffices to prove that
     
       $$a(ce + df) + b(cf + de) + (ac + bd)f + (ad + bc)e = (ac + bd)e + (ad + bc)f + a(cf + de) + b(ce + df)$$

       *Proof:* $x (y z) = $x \cdot (ce + df) // (cf + de) = (a(ce + df) + b(cf + de)) // (a(cf + de) + b(ce + df))$ and $(x y) z = (ac + bd) // (ad + bc) \cdot z = $((ac + bd)e + (ad + bc)f) // ((ac + bd)f + (ad + bc)e)$

    2. Q.E.D.

       *Proof:* Distributivity in $\mathbb{N}$ and carefully checking both sides proves the statement.

 8. $x 1 = 1 x = x$

    *Proof:* We must prove $a1 + b0 // a0 + b1 = a // b$, which is true. The other equality follows from commutativity in (1)$.

 9. $x (y + z) = x y + x z$

    *Proof:* We must prove $(a(c + e) + b(d + f)) // (a(d + f) + b(c + e))$ is equal to $(ac + bd) // (ad + bc) + (ae + bf) // (af + be)$, which is true by the definition of addition in $\mathbb{Z}$ and the distributive law in $\mathbb{N}$.

 10. $(x + y) z = x z + y z$

     *Proof:* This follows from (9) and (2), but can also be proved directly in a manner similar to (9).
