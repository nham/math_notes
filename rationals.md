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


## Reciprocal and  positivity
If $x > 0$, then $1 / x > 0$.

*Proof:* If $1 / x$ was negative, then $0 = (1 / x) 0 > (1/x) x = 1$, a contradiction.


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


## No zero divisors for the rationals
If $x, y \in \mathbb{Q}$, and $x y = 0$, then $x = 0$ or $y = 0$.

*Proof:* If $x \neq 0$, then $y = x^{-1} x y = x^{-1} 0 = 0$.

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

 7. $d(x,y) \geq 0$ and $d(x,y) = 0$ iff $x = y$

    *Proof:* $d(x,y) \geq 0$ by (1). If $d(x,y) = 0$, then $(x-y) = 0$, so $x = y$. Conversely, $x = y$ implies $|x-y| = 0$.

 8. $d(x,y) = d(y, x)$

    *Proof:* By (6), $d(x,y) = |x - y| = |-(x-y)| = |y - x| = d(y, x)$

 9. $d(x,z) \leq d(x,y) + d(y,z)$

    *Proof:*  $d(x,z) = |x - z| = |(x - y) + (y - z)| \leq |x - y| + |y - z| = d(x,y) + d(y,z)$ by (4)

## Definition of epsilon-closeness
For $\epsilon \in \mathbb{Q}$, $\epsilon > 0$ and any rationals $x, y$, say $y$ is $\epsilon$-close to $x$ iff $d(x,y) \leq \epsilon$.

## Facts about epsilon-closeness
For $x,y,z,w \in \mathbb{Q}$

 - $x = y$ iff $\forall \epsilon > 0$, $x is $\epsilon$-close to $y$.
 - for all $\epsilon > 0$ if $x$ is $\epsilon$-close to $y$, then $y is $\epsilon$-close to $x$
 - if $x$ is $\epsilon$-close to $y$ and $y$ is $\delta$-close to $z$ for $\epsilon, \delta > 0$, then $x$ is $(\epsilon+\delta)$-close to $z$.
 - for $\epsilon, \delta > 0$, if $x$ and $y$ are $\epsilon$-close and $z$ and $w$ are $\delta$-close, then $x+z$ and $y+w$ are $(\epsilon+\delta)$-close, as are $(x-z)$ and $(y-w)$
 - for $\epsilon > 0$, if $x$ and $y$ are $\epsilon$-close, then they are also $\eta$-close for every $\eta > \epsilon$.
 - for $\epsilon > 0$, if $y$ and $z$ are both $\epsilon$-close to $x$ and $y \leq w \leq z$ or $z \leq w \leq y$, then $w$ is $\epsilon$-close to $x$.
 - for $\epsilon > 0$, if $x$ and $y$ are $\epsilon$-close and $z \new 0$, then $xz$ and $yz$ are $\epsilon |z|$-close.
 - for $\epsilon, \delta > 0$, if $x$ and $y$ are $\epsilon$-close, and $z$ and $w $ are $\delta$ close, then $xz$ and $yw$ are $(\epsilon |z| + \delta |x| + \epsilon \delta)$-close.


 1. $x = y$ iff $\forall \epsilon > 0$, $x is $\epsilon$-close to $y$.

    *Proof:* If $x = y$ iff $d(x,y) = 0$, so for all $\epsilon > 0$, $d(x,y) < \epsilon$. Conversely if $d(x,y) < \epsilon$ for all $\epsilon > 0$, then $d(x,y)$ could not be positive, and it is by basic properties of absolute value not negative. So $d(x,y) = 0$.

 2. for all $\epsilon > 0$ if $x$ is $\epsilon$-close to $y$, then $y is $\epsilon$-close to $x$

    *Proof:* This holds immediately from symmetricity of the distance function.

 3. if $x$ is $\epsilon$-close to $y$ and $y$ is $\delta$-close to $z$ for $\epsilon, \delta > 0$, then $x$ is $(\epsilon+\delta)$-close to $z$.

    *Proof:* By hypothesis, $d(x,y) \leq \epsilon$ and $d(y, z) \leq \delta$. so $d(x, z) \leq d(x, y) + d(y, z) = \epsilon + \delta$.

 4. For $\epsilon, \delta > 0$, if $x$ and $y$ are $\epsilon$-close and $z$ and $w$ are $\delta$-close, then $x+z$ and $y+w$ are $(\epsilon+\delta)$-close, as are $(x-z)$ and $(y-w)$

    *Proof:* We know $d(x,y) \leq \epsilon$ and $d(z, w) \leq \delta$, so $d(x+z, y+w) = |x+z -(y+w)| \leq |x-y| + |z-w| = d(x,y) + d(z,w) = \epsilon + \delta$, which establishes the first statement. $d(x-z, y-w) = |(x-z) - (y-w)| = |x+w -(y+z)| \leq |x-y| + |w-z| = \epsilon + \delta$.

 5. for $\epsilon > 0$, if $x$ and $y$ are $\epsilon$-close, then they are also $\eta$-close for every $\eta > \epsilon$.

    *Proof:* If $d(x,y) \leq \epsilon$ and $\eta$ is such that $\epsilon < \eta$, then $d(x,y) < \eta$.

 6. for $\epsilon > 0$, if $y$ and $z$ are both $\epsilon$-close to $x$ and $y \leq w \leq z$ or $z \leq w \leq y$, then $w$ is $\epsilon$-close to $x$.

    1. Case $w < x$.

       *Proof:* We have $x - y = x - w + w - y$ and $x - w$ and $w - y$ are both positive, so $|x - y| = |x - w| + |w - y|$. So $|x - w| = |x - y| - |w - y| \leq \epsilon - |w - y| < \epsilon$.

    2. Case $w = x$.

       *Proof:* Immediate.

    3. Case $w > x$

       *Proof:* $z - x = z - w + w - x$ and $z - w$ and $w - x$ are both positive, so $|z - x| = |z - w| + |w - x|$, so $|w - x| = |z - x| - |z - w| \leq \epsilon - |z - w| < \epsilon$.

 7. for $\epsilon > 0$, if $x$ and $y$ are $\epsilon$-close and $z \neq 0$, then $xz$ and $yz$ are $\epsilon |z|$-close.

    *Proof:* By hypothesis $|x - y| \leq \epsilon$, so $|zx - zy| = |z||x - y| \leq |z| \epsilon$, which establishes the statement.

 8. For $\epsilon, \delta > 0$, if $x$ and $y$ are $\epsilon$-close, and $z$ and $w $ are $\delta$ close, then $xz$ and $yw$ are $(\epsilon |z| + \delta |x| + \epsilon \delta)$-close.

    *Proof:* $xz - yw = xz - yz + yz - yw$, so $|xz - yw| \leq |z(x - y)| + |y(z - w)| = |z| |x - y| + |y| |z - w| \leq |z| \epsilon + |y| \delta$. But $|y| = |y - x + x| \leq \epsilon + |x|$, so $|xz - yw| \leq |z| \epsilon + (\epsilon + |x|) \delta$, which proves the statement.

## Definition of exponentiation of rationals by naturals
For rational $x$, define $x^0 = 1$ and, for any $n \in \mathbb{N}$ such that $x^n$ is defined, define $x^{n+1} = x^n x$.

## Natural exponentiation facts
For any $x, y \in \mathbb{Q}$ and $n,m \in \mathbb{N}$

 - $x^n x^m = x^{n+m}$ and $(x^n)^m = x^{nm}$
 - $(xy)^n = x^n y^n$
 - For all $n \neq 0$, $x^n = 0$ iff $x = 0$
 - If $0 \leq y \leq x$ then $0 \leq y^n \leq x^n$. If $0 \leq y < x$ and $n > 0$, then $0 \leq y^n < x^n$
 - |x^n| = |x|^n

 1. $(xy)^n = x^n y^n$

    *Proof:* $(xy)^0 = 1 = 1 1 = x^0 y^0$. If $(xy)^n = x^n y^n$, then $(xy)^{n+1} = (xy)^n (xy) = x^n y^n (xy) = x^{n+1} y^{n+1}$.

 2. For all $n, m \in \mathbb{N}, $x^n x^m = x^{n+m}$

    1. It suffices to assume $m \in \mathbb{N}$ and prove it for every $n \in \mathbb{N}$.

    2. $x^0 x^m = x{0+m}$

       *Proof:* $x^0 = 1$, so this holds.

    3. If $x^n x^m = x^{n+m}$, then $x^{n+1} x^m = x{n+1+m}$

       *Proof:* $x^{n+m+1} = x^{n+m} x = x^n x^m x = $x^{n+1} x^m$.

    4. Q.E.D.

       *Proof:* The induction is completed by (2) and (3)

 3. For all $n, m \in \mathbb{N}, $(x^n)^m = x^{nm}$

    1. It suffices to assume $m \in \mathbb{N}$ and prove it for every $n \in \mathbb{N}$.

    2. $(x^0)^m = x^{0 m}$

       *Proof:* We must prove $1^m = 1$. But this is an easy proof by induction on $m$ due to algebraic properties of the rationals.

    3. If $(x^n)^m = x^{n m}$, then $(x^{n+1})^m = $x^{(n+1)m}$.

       *Proof:* $(x^{n+1})^m = (x^n x)^m$, which equals $(x^n)^m x^m$ by (1). By the induction hypothesis, this is $x^{nm} x^m$, which equals $x^{nm + m}$ by (2), proving the statement.

    4. Q.E.D.

       *Proof:* The induction is completed by (2) and (3)

 4. For all $n \neq 0$, $x^n = 0$ iff $x = 0$

    *Proof:* $x^1 = x 1 = x$, so clearly $x^1 = 0$ iff $x = 0$. Suppose it's true for $n$. Then $x^{n+1} = x^n x$. On the one hand, $x = 0$ clearly implies $x^{n+1} = 0$. On the other hand, if $x^{n+1} = 0$, then either $x^{n} = 0$ or $x = 0$ (since the rationals have no zero divisors). But by the induction hypothesis, $x^{n} = 0$ implies $x = 0$.

 5. If $0 \leq y \leq x$ then $0 \leq y^n \leq x^n$. If $0 \leq y < x$ and $n > 0$, then $0 \leq y^n < x^n$

    1. If $0 \leq y \leq x$ then $0 \leq y^n \leq x^n$. 

       *Proof:* We assume that $0 \leq y \leq x$. Then $0 \leq y^0 \leq x^0$ since $x^0 = y^0 = 1$. Now if $0 \leq y^n \leq x^n$, then $x^{n+1}$ and $y^{n+1}$ must both be non-negative since $x$ and $y$ are both non-negative. Also we have $y^{n+1} = y^n y \leq x^n x$ since both $y^n \leq x^n$ and $y \leq x$.

    2. If $0 \leq y < x$ and $n > 0$, then $0 \leq y^n < x^n$

       *Proof:* It's clearly true for $n = 1$. If true for $n$, then $y^{n+1} < x^{n+1}$ since $y^n < x^n$ and $y < x$. Also, $0 < y^{n+1}$ since, again, $0 < y^n$ and $0 < y$.

 6. |x^n| = |x|^n

    *Proof:* $|x^1| = |x| = |x|^1$. If $|x^n| = |x|^n$ for some $n$, then $|x^{n+1}| = |x^n x| = |x^n| |x| = |x|^n |x| = |x|^{n+1}$.


## Definition of integer exponentiation
If $z \in \mathbb{Z}$, then if $z \geq 0$, $x^z$ is already defined. If $z < 0$, then define,for any non-zero $x$, $x^z$ to be $1 / x^z$. In other words, for any $n \in \mathbb{N}$, define $x^{-n} = (x^n)^{-1}$. This is well-defined since by properties of natural exponentiaton, $x^n = 0$ implies $x = 0$.


## Integer exponentiation facts
For any $x, y \in \mathbb{Q}$ with $x \neq 0 \neq y$, and $n,m \in \mathbb{N}$

 - $x^n x^m = x^{n+m}$ and $(x^n)^m = x^{nm}$
 - $(xy)^n = x^n y^n$
 - If $0 \leq y \leq x$ then $0 \leq y^n \leq x^n$ if $n$ is positive and $0 \leq x^n \leq y^n$ if $n$ is negative.
 - |x^n| = |x|^n

 1. $(xy)^n = x^n y^n$

    *Proof:* This has already been proved for non-negative $n$. If $n$ is negative, $-n$ is a natural number, so $(xy)^{-n} = x^{-n} y^{-n}$ by the same theorem for naturals.  So $(xy)^n = 1 / (xy)^{-n} = 1 / (x^{-n} y^{-n}) = x^n y^n$, by definition, the previous sentence, and definition again, respectively.


 2. $x^n x^m = x^{n+m}$ and $(x^n)^m = x^{nm}$

    1. Case $n$ and $m$ both non-negative.

       *Proof:* Both statements hold from natural exponentiation.

    2. Case $n$ and $m$ both negative.

       *Proof:* $-n$ and $-m$ are positive, so $1 / x^{n + m} = x^{-(n + m)} = x^{-n + -m} = x^{-n} x^{-m} = (1 / x^n) (1 / x^m)$. After multiplying both sides, we get $x^{n+m} = x^n x^m$. For the second statement, $x^{nm} = x^{-n -m} = (x^{-n})^{-m} = 1 / (x^{-n})^m = 1 / (1 / x^n)^m = 1 / (1 / (x^n)^m) = (((x^n)^m)^{-1})^{-1} = (x^n)^m$.

    3. Case $n$ negative, $m$ non-negative.

       *Proof:* $-n$ is non-negative, so if $(n+m) \geq 0$, then $x^{n+m} x^{-n} = x^{m + n - n} = x^m$ by (2.1). If $(n+m) < 0$, $-(n+m) > 0$, so $x^{-(n+m)} x^m = x^{-n}$. In either case, $x^{n+m} = x^{n} x^m$. For the second statement, $(x^{-n})^m = x^{-nm} = 1 / x^{nm} = x^{-(nm)} = x^{-n m}$.

    4. Case $n$ non-negative, $m$ negative.

       *Proof:* The same as (2.3).

 3. If $0 \leq y \leq x$ then $0 \leq y^n \leq x^n$ if $n$ is positive and $0 \leq x^n \leq y^n$ if $n$ is negative.

    *Proof:* The statement regarding positive $n$ is already known true from facts about natural exponentiation, so consider the case of negative $n$. If $y = 0 then it's true, as is the case when $x = 0$. So consider $x \neq 0$, $y \neq 0$. Then $0 \leq y^{-n} \leq x^{-n}$ since $-n$ is positive, which means $1 / y^n \leq 1 / x^n$. We must also have $x^n$ and $y^n$ positive since reciprocal of a positive number is positive, so $0 \leq x^n \leq y^n$.

 4. |x^n| = |x|^n

    *Proof:* Already know it's true for $n$ non-negative. First, $1 = |1| = |x / x| = |x| |x^{-1}|$, proving $|x|^{-1} = |x^{-1}|$. Now, for negative $n$, $-n$ is positive, so $|x^n| = |x^{-(-n)}| = |1 / x^{-n}| = |(x^{-n})^{-1}| = 1 / |x^{-n}| = 1 / |x|^{-n} = 1 / (1 / |x|^n) = |x|^n$.


## A useful fact for powersets?
For any positive integer $n$, we have $n < 2^n$

*Proof:* By induction on $n$: $1 < 2 = 2^1$, and if $n < 2^n$ for some $n$, then $n + 1 < 2^n + 2 = 2^n + 2^1 = 2^{n+1}$.


## Interspersing of integers by rationals
For any rational $x$, there is a unique integer $n$ such that $n \leq x < n + 1$.

*Proof:* By trichotomy on the rationals, we know every $x$ is either positive, negative, or zero. If $x = 0$, then $n = 0$ is unique.

If we suppose that we've proved it for positive $x$, we can also prove it for negative $x$: just apply the proposition to $-x$, which is positive, to obtain $n \leq -x < n + 1$. Then, by order properties of the rationals, $-(n + 1) < x \leq -n$. $-(n+1)$ is what we're looking for if $x < -n$, and $-n$ is what we're looking for if $x = -n$. In either case, this solution must be unique, for if not we could turn it into another solution for $-x$, contradicting the fact that we've assumed every positive rational has a unique solution.

So it suffices to prove that for any positive rational $x$, there is a unique natural number $n$ such that $n \leq x < n + 1$.

By definition, $x = a / b$ for some naturals $a$ and $b$. We can apply Euclidean division to find $q$ and $r$ such that $a = qb + r$ and $0 \leq r < b$. So $x = q + r/b$, where $0 \leq r/b < 1$. So $q$ is a natural, $q \leq x < q + 1$. For any $n$ such that $n \leq x < n + 1$, we have $a = nb + (x - n)b$. So $q = n$ and $(x - n)b = r$ since the Euclidean division theorem yields a unique $q$ and $r$.

### Corollary
For all rationals $x$ there is an $N \in \mathbb{N}$ such that $x < N$.

*Proof:* If the unique integer $n$ that exists by the above proposition is non-negative, then $N = n + 1$. If $n$ is instead negative, then $N = 0$.


## Definition of floor
For any rational $x$, the unique integer $n$ such that $n \leq x < n + 1$ is called the **integer part** of $x$, or the **floor*, and is denoted $\lfloor x \rfloor$.

## Interspersing of rationals by rationals
If $x < y$ are two rationals, then there is another rational $z$ such that $x < z < y$.

*Proof:* Let $z = (x+y)/2$. Then $z = x/2 + y/2$. We have $x/2 < y/2$ since $x < y$ by hypothesis, so $x = x/2 + x/2 < x/2 + y/2 = z$. Similarly, $z = x/2 + y/2 < y/2 + y/2 = y$.


## Principle of infinite descent
There is no sequence $(a_n)$ such that $a_n > a_{n+1}$ for all $n \in \mathbb{N}$

 1. It suffices to assume $(a_n)$ is an infinitely descending sequence and derive a contradiction.

 2. $\forall n a_n \geq 0$

    *Proof:* this is true for any sequence of naturals.

 3. If $\forall n a_n \geq k$ for some $k \in \mathbb{N}$, then $\forall n a_n \geq k+1$

    *Proof:* Suppose the conclusion isn't true. Then $\exists m$ such that $a_m < k + 1$, which means $a_m \leq k$. We must have $a_{m+1} < a_m \leq k$, contradicting the assumption that all $a_n \geq k$.

 4. Q.E.D.

    *Proof:* (2) and (3) prove that $\forall k$, every $a_n \geq k$. So for every $a_n$, there are no possible valid values, which contradicts that it must have some value.


## No square root of 2 (we seem to be missing some numbers...)
There is no rational $x$ for which $x^2 = 2$.

### A preliminary definition
A natural number $n$ is **even** if the Euclidean division theorem for $(n, 2)$ yields $r = 0$, and is **odd** if it yields $r = 1$ instead.

### A preliminary lemma
A natural $n$ is even iff $n^2$ is even, and is odd iff $n^2$ is odd.

*Proof:* It suffices to prove $n$ even implies $n^2$ even and $n$ odd implies $n^2 odd (the others follow from these). If $n$ is even, then $n = 2k$ for some natural $k$. so $n^2 = 4k^2 = 2(2k^2)$, implying $n^2$ is even. If $n$ is odd, then $n = 2j + 1$ for some natural $j, so $n^2 = (2j + 1)(2j + 1) = 4j^2 + 4j + 1$, or $n^2 =  2(2j^2 + 2j) + 1$, so $n^2 is odd.

### The proof

 1. It suffices to assume $x$ is positive and that $x^2 = 2$, and then derive a contradiction.

    *Proof:* $0^2 = 0 \neq 2$, so $0$ clearly doesn't work. If such a negative $x$ exists, then $(-x)^2 = -(-x^2) = x^2 = 2$, so $-x$ also works. So any negative rational that works implies the existence of a positive rational that works. Hence if we prove that no positive $x$ has $x^2 = 2$, we must have that no negative $y$ has $y^2 = 2$ as well.

 2. If $x = a / b$ for some positive integers $a$, $b$, then $a$ and $b$ are both even, with $a > b$

    1. $a^2 = 2 b^2$

       *Proof:* By hypothesis in (2)

    2. $a$ is even
        
       *Proof:* By (2.1) and the preliminary lemma.

    3. $b$ is even

       *Proof:* by (2.1) and (2.2) we have $4k^2 = 2 b^2$ for some natural $k$, so $b^2 = 2k^2$. We again invoke the preliminary lemma to obtain the statement.

    4. $a > b$

       *Proof:* $a = b$ is a contradiction since we would have $1 = 2$. $a < b$ implies $a^2 < b^2$ by basic properties of exponentiation, since $0 < a < b$. By (2.1) we have $2b^2 < b^2$, or $2 < 1$ since $1 / b^2$ is positive, another contradiction.

    5. Q.E.D.

       *Proof:* (2), (3) and (4) establish exactly what we set out to prove.

 3. If $x = a / b$ for some positive integers $a$, $b$, then there are positive integers $c$ and $d$ with $c < a$, $d < b$, such that $x = c / d$.

    *Proof:* By (2), starting with our hypothesis, we have both $a$ and $b$ are even. So $a = 2j$ and $b = 2k$ for some positive integers $j$ and $k$. We have $ab = a(2k) = (2j)b$, which by cancellation implies $ak = bj$. This proves $x = j / k$.

 4. For all positive integers $a$, there is a unique $b$ such that $x = a / b$.

    *Proof:* $x = m/n$ for some positive integers $m$ and $n$ since $x is positive by (1). Also $m \neq 0$, $n \neq 0$. So define $b := an/m$. Then $x = a/b$


 5. There exist positive integers $a$ and $b$ such that $x = a / b$

    *Proof:* Valid by (1)

 6. There is a monotonically decreasing sequence of naturals

    *Proof:* To be completely rigorous we have to use the principle of recursive definition. We use $a_0 = a$. To define $f_n$'s, note that by (4), for every positive $n$ we have a unique $m$ such that $n / m = x$. Define the function $g$ by $g(n) = m$ for positive $n$ and $g(0) = 0$.

    We can also define for all positive $n, m$, the function $\phi(n, m) = (a', g(a'))$, where $a'$ is the smallest of the elements that are asserted to exist by (3). Define $\phi(0, m) = \phi(n, 0) = \phi(0, 0) = (0, 0)$. (choosing the smallest is valid by the well-ordering principle).

    We can finally define $f(n) = \phi(n, g(n))$. Then every $f_n = f$ gives, for every positive integer $a$, the smallest $a'$ such that $a' < a$ and $x = a' / g(a')$.

 7. Q.E.D.

    *Proof:* (6) contradicts the principle of infinite descent.
