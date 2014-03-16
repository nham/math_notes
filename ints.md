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
