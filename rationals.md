## Definition of rationals
A **rational number** is an expression $a // b$ for $a,b \in \mathbb{Z}$, $b \neq 0$. The set of all rationals is denoted $\mathbb{Q}$. Equality in $\mathbb{Q}$ is defined by $a // b = c // d$ iff $ad = cb$.

### Equality is an equivalence relation.
Equality amongst rationals is an equivalence relation.

 1. Assume $x, y, z \in \mathbb{Q}$ and that $x = a // b$, $y = c // d$, $z = e // f$.

 2. $x = x$

    *Proof:* $ab = ba$.

 3. $x = y$ implies $y = x$

    *Proof:* We assumed $ad = cb$, so $cb = ad$ by symmetry of integer equality.

 4. $x = y$ and $y = z$ implies $x = z$.

    *Proof:* By hypothesis $ad = cb$ and $cf = ed$, so $af(cd) = adcf = cbed = eb(cd)$. We know $b \neq 0$, $d \neq 0$, $f \neq 0$. If any one of $a$, $c$ or $e$ is zero, then all of them are zero.  If none are zero, then $af(cd) \neq 0 \neq eb(cd)$, so by cancellation $af = eb$, which implies $x = z$.

 5. Q.E.D.

    *Proof:* (2), (3), (4)

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

    *Proof:* We must prove $a // b + (cf + ed)) // (df) = (adf + (cf + ed)b) // bdf$ is equal to $(ad + cb) // bd + e // f = ((ad + cb)f + ebd) // bdf$. This follows from distributivity in $\mathbb{Z}$.

 4. $x + 0 = 0 + x = x$

    *Proof:* $x + 0 = a // b + 0 // 1 = (a1 + 0b) // (b1) = a // b = x$. The other equality follows from commutativity in (2).

 5. $x + (-x) = (-x) + x = 0$

    *Proof:* $x + (-x) = a // b + (-a) // b = (ab + (-a)b) // bb = (ab - ab) // bb) = 0$. The other equality follows from commutativity in (2).

 6. $x y = y x$

    *Proof:* This follows directly from commutativity in $\mathbb{Z}$.

 7. $x (y z) = (x y) z$

    *Proof:* This follows directly from associativity in $\mathbb{Z}$.

 8. $x 1 = 1 x = x$

    *Proof:* This follows from $1$ being a multiplicative identity for $\mathbb{Z}$.

 9. $x (y + z) = x y + x z$

    *Proof:*  $x (y + z) = $(a (cf + ed)) // bdf$, which equals
     $((ad + cb)bf + (af + eb)bd) // bdbf = (ad + cb) // bd + (af + eb) // bf$

 10. $(x + y) z = x z + y z$

     *Proof:* This follows from (9) and (2), but can also be proved directly in a manner similar to (9).

 11. if $x \neq 0 $, then $x^{-1} x = x x^{-1} = 1$.

     *Proof:* $x^{-1} x = b // a \ast a // b = ba // ab$, which equals $1$ since $ba = ab$. The other equality holds by commutativity in (2).


## Cancellation of addition
For any $x, y, z \in \mathbb{Q}$, $x + y = x + z$ implies $y = z$ and $x + z = y + z$ implies $x = y$.

*Proof:* In the first case, add $-x$ to both sides. In the second, add $-z$.

## Negation of negation
For any $x \in \mathbb{Q}$, with $x \neq 0$, $-(-x)) = x$.

*Proof:* $-x + -(-x) = 0$ because $\mathbb{Q}$ is a field. This implies $-(-x) = x$.

## Negation distributes
For any $x, y \in \mathbb{Q}$, $-(x + y) = -x + -y$. Also, $-(xy) = (-x) y = x (-y)$.

*Proof:* $(x + y) + -(x+y) = 0 = 0 + 0 = (x + -x) + (y + -y)$, so by cancellation of addition the first statement is established. For the second, $xy + -(xy) = 0 = 0y = (x + -x)y = xy + (-x)y = x0 = x(y + -y) = xy + x(-y)$. Cancellation of addition establishes the second statement.




## Definition of the quotient operation in $\mathbb{Q}$
For $x, y \in \mathbb{Q}$, $y \neq 0$, we define $x / y := x y^{-1}$.

## Definition of positive/negative
$x \in \mathbb{Q}$ is **positive** iff $x = a / b$ for some $a, b$ that are both positive in $\mathbb{Z}$. $x$ is **negative** iff $-x$ is positive.

## Trichotomy of rationals
For any $x \in \mathbb{Q}$, exactly one holds:

 - $x = 0$
 - $x$ is positive
 - $x$ is negative

 1. Assume $x = a / b$ for some $a, b \in \mathbb{Z}$ and $b \neq 0$

 2. At least one is true

    1. $a = 0$ iff $x = 0$

    2. If $a \neq 0$, then $x$ is positive or $x$ is negative

        *Proof:* We have $a \neq 0$ and $b \neq 0$, so if both are positive as integers or both are negative as integers, $x$ is positive (in the first case by definition, in the second case by representing $x$ as $-a / -b$. Otherwise $x$ is negative.

 3. At most one is true.

    *Proof:* By the trichotomy of integers, exactly one holds:

     - $a = 0$
     - $a > 0$
     - $a < 0$

    $x = 0$ implies $a = 0$. $x$ being positive implies $a > 0$. $x$ being negative implies $-x$ is positive, or $-a > 0$, so $a$ is negative. So by the trichotomy of integers, we could not have more than one.

 4. Q.E.D.

    *Proof:* (2) and (3)

## Definition of order on $\mathbb{Q}$
For any $x, y \in \mathbb{Q}$, we define $x > y$ to be true iff $x - y$ is positive and $x < y$ iff $x - y$ is negative. $x \leq y$ iff $x < y$ or $x = y$.


## An ordered field appears.
For any $x, y, z \in \mathbb{Q}$, we have:

 - Exactly one of these holds: a) $x < y$, b) $x = y$, c) $x > y$.
 - $x < y$ iff $y > x$.
 - If $x < y$ and $y < z$ then $x < z$.
 - if $x < y$ then $x + z < y + z$
 - if $x < y$ and $z$ is positive, then $xz < yz$.

 1. Exactly one of these holds: a) $x < y$, b) $x = y$, c) $x > y$.

    *Proof:* By the trichotomy of rationals $x - y$ is either negative, zero or positive, which correspond to (a), (b) and (c), respectively.

 2. $x < y$ iff $y > x$.

    *Proof:* $x < y$ iff $x - y$ is negative iff $-(x - y)$ is positive. $y > x$ iff $y - x$ is positive. $(y - x) + (x - y) = 0$, so $(y - x) = -(x - y)$ by cancellation in $\mathbb{Q}$'s addition.

 3. If $x < y$ and $y < z$ then $x < z$.

    *Proof:* By hypothesis and (2), $y - x$ and $z - y$ are positive, so $y - x = a / b$ and $z - y = c / d$ for positive $a, b, c, d \in \mathbb{Z}$. So $z - x = z - y + y - x = (cb + ad) / bd. By order properties of the integers, $cb$, $ad$ and $bd are all positive, so $z - x$ is positive too, implying $x < z$ by definition and (2).

 4. if $x < y$ then $x + z < y + z$

    *Proof:* $x < y$ implies $y - x$ is positive by (2), so $(y+z) - (x + z) = (y - x)$ is positive.

 5. if $x < y$ and $z$ is positive, then $xz < yz$.

    *Proof:* We must prove $yz - xz$ is positive, but we know $y - x$ is positive (by (2)) and thus $(y - x)z$ is positive also by order properties of the integers.

### Corollary
If $x < y$ and $z$ is negative, then $xz > yz$

*Proof:* $-z$ is positive by definition, so $-xz < -yz$ by the ordered field properties, which implies $(-yz - -(xz))$ is positive. But $-(-(xz)) = xz$, so we have $xz - yz$ is positive, or $xz > yz$.


## The "adding inequalities" fact
If $a < b$ and $c < d$, then $a + c < b + d$.

*Proof:* By order properties we have $a + c < b + c$. But we also have $b + c < b + d$, so by transitivity it holds.

### Corollary
If $a \leq b$ and $c \leq d$, then $a + c \leq b + d$.

*Proof:* We've covered the case when both strict inequalities hold. When both equalities hold, then $a + c = b + d$, so it holds. If $a = b$ and $c < d$, then it clearly holds again. Ditto for $c = d$ and $a < b$. This is all possible cases.


## Definition of absolute value
Define a function $||: \mathbb{Q} \to \mathbb{Q}$ by $|x| = x$ if $x$ is not negative and $|x| = -x$ if $x$ is negative.

## Definition of distance
Define the distance of any two rationals $x, y$ by $d(x, y) := |x - y|$.

## Facts about absolute value and distance ($\mathbb{Q}$ is a metric space)
For any $x, y, z \in \mathbb{Q}$,

 - $|x| \geq 0$ and $|x| = 0$ iff $x = 0$
 - $-|x| \leq x \leq |x|$
 - $|x + y| \leq |x| + |y|
 - $-y \leq x \leq y$ iff $y \geq |x|$.
 - $|xy| = |x| |y|$
 - $|-x| = |x|$
 - $d(x,y) > \geq 0$ and $d(x,y) = 0$ iff $x = y$
 - $d(x,y) = d(y, x)$
 - $d(x,z) \leq d(x,y) + d(y,z)$


 1. $|x| \geq 0$ and $|x| = 0$ iff $x = 0$

    *Proof:* If $x$ is not negative, then $|x| = x$, so it's either $0$ or positive. In either case, $|x| \geq 0$. If $x$ is negative, then $|x| = -x$, which is positive by definition of negativity. For the other statement, we know $x = 0$ implies $|x| = 0$. Conversely, if $x \neq 0$, then $x$ must be positive or negative by trichotomy of rationals, so in each case $|x|$ is positive and hence not $0$.

 2. $-|x| \leq x \leq |x|$

    1. Case $x = 0$

       *Proof:* $-|x| = x = |x|$. 

    2. Case $x$ is positive

       *Proof:* $-|x| = -x$, and $-x < x = |x|$ since $x - -x = x + x$ is positive. 

    3. Case $x$ is negative, 

       *Proof:* $-|x| = -(-x) = x$, and $|x| = -x$. We have $x < -x$ since $-x - x = -x + -x$ is positive.

 3. $-y \leq x \leq y$ iff $y \geq |x|$.

    1. If $-y \leq x \leq y$, then $|x| \leq y$

       *Proof:* If $x = 0$, $|x| = x$, so by hypothesis $|x| \leq y$. If $x > 0$, $|x| = x$, so again $|x| \leq y$ by hypothesis. If $x < 0$, $|x| = -x$, so we must prove $-x \leq y$. By hypothesis, $-y \leq x$, which means $x + y$ is positive or zero, which is the same as saying $-x \leq y$.

    2. $|x| \leq y$ implies $-y \leq x \leq y$

       *Proof:* If $x > 0$, then by hypothesis $x \leq y$. By transitivity of $<$, $y$ must be positive, so $-y$ is negative and therefore $-y \leq x$. If $x = 0$, then by hypothesis $0 \leq y$. Now either $y = 0$ or $y > 0$. If the former, then $-y \leq 0$ obviously. If the latter, then $-y$ is negative, so the statement is again proved. Finally, if $x < 0$, $|x| = -x$, so by hypothesis $-x \leq y$. This is the same as saying $-y \leq x$, and also as saying that $0 \leq y + x$. But $-x > 0$, so $-x + -x > 0$, which implies $0 \leq y - x$, aka $x \leq y$.

    3. Q.E.D.

       *Proof:* (1) and (2)

 4. $|x + y| \leq |x| + |y|

    *Proof:* By (3) we have $-|x| \leq x \leq |x|$ and $-|y| \leq y \leq |y|$, so $-(|x| + |y|) \leq x + y \leq |x| + |y|$, which implies $|x + y| \leq |x| + |y|$ by (3) again.

 5. $|xy| = |x| |y|$

    *Proof:* If $x > 0$ and $y > 0$, then $xy > 0y = 0$ by order properties, so $|xy| = xy = |x| |y|$. If ($x < 0 and $y > 0$) or ($x > 0$ and $y < 0$), then $xy < 0$, so $|xy| = -(xy)$, which equals $|x| |y|$ in either case since either $x$ or $y$ is negative. Finally, if $x < 0$ and $y < 0$, then $-y > 0$, so $-(xy) < 0$, or $xy > 0$. So $|xy| = xy = -(-(xy)) = (-x)(-y) = |x| |y|$.

 6. $|-x| = |x|$

    *Proof:* Holds from (5) because $|-1| = 1$.

 7. $d(x,y) > \geq 0$ and $d(x,y) = 0$ iff $x = y$
 8. $d(x,y) = d(y, x)$
 9. $d(x,z) \leq d(x,y) + d(y,z)$

## Definition of episilon-closeness
For $\epsilon \in \mathbb{Q}$, $\epsilon > 0$ and any rationals $x, y$, say $y$ is $\epsilon$-close to $x$ iff $d(x,y) \leq \epsilon$.
