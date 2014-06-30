# Sort-less AST- and ABT-spaces
## Note
We will make all these definitions more complex later by adding sorts to operators, variables, arguments, but for simplicity we start out by assuming everything has the same sort.

## Definition of an AST-space (take 1)
An **abstract syntax tree space** (AST-space) is a tuple $(O, V, ar: O \to \mathbb{N})$ where $O$ is a set of **operators** and $V$ is a set of **variables**. $ar$ is a function assigning to each operator its **arity**, or the number of arguments it takes.

For any $X \subseteq V$, we define the set $A[X]$ inductively to be the smallest set such that:

 - $X \subseteq A[X]$
 - If $o \in O$ and, letting $n = ar(o)$, $a \in A[X]^n$ (i.e. $a$ is a tuple of ASTs in $A[X]$), then $(o, a) \in A[X]$


## Notation for adjoining a variable
If $X \subseteq V$ and $x \in V - X$, then we will write $X,x$ for $X \cup \{x\}$.


## Definition of substitution
If $X \subseteq V$, $x \in V - X$, $b \in A[X]$ and $a \in A[X,x]$, then define $[b/x]a$ by:

 - $[b/x]x = b$ and for all $y \in X$, $[b/x]y = y$
 - If $(o, a) \in A[X,x]$ for some $o \in O$ and $a \in A[X,x]^n$ (with $n := ar(o)$), then $[b/x](o, a) = (o, ([b/x]a_1, \ldots, [b/x]a_n))$.

Also, if $a \in A[X,x]^n$ for some $n \in \mathbb{N}$, then we define $[b/x]a$ by:

 - $[b/x]a = ()$ if $n = 0$
 - $[b/x](a_1, \ldots, a_n) = ([b/x]a_1, \ldots, [b/x]a_n)$ for $n > 0$


## Substitution is well-defined
If $x \in V - X$ and $a \in A[X,x]$, then for every $b \in A[X]$, there is a unique $c \in A[X]$ such that $[b/x]a = c$.

*Proof:* The proof is by structural induction. If $a \in X$, then $[b/x]a = a$, while if $a = x$, then $[b/x]a = b$. These are unique by definition. 

If $a \in A[X,x] - (X,x)$, then $a = (o, a)$ for some $o \in O$ and some $a \in A[X,x]^n$ with $n := ar(o)$. By induction hypothesis there is a unique tuple  $c \in A[X]^n$ such that $c = [b/x]a$. Since $[b/x] (o, a) := (o, [b/x]a) = (o, c)$, the induction is completed.


## Definition of AST-space with parameters (take 1)
If we don't have a fixed collection of operators, then we may need to modify the definition of AST-space.

A **parameterized abstract syntax tree space** (parameterized AST-space) is a tuple $(O, P, Z, V, ar: O \to \mathbb{N})$ where $Z$ is a set of **parameters**, $P$ is a set of **operators**, $O$ is a set of **parameterized operators**, each of which is a function $Z \to P$, and $V$ is a set of **variables**. $ar$ is a function assigning to each operator its **arity**, or the number of arguments it takes.

For any $X \subseteq V$, we define the set $A[X]$ inductively to be the smallest set such that:

 - $X \subseteq A[X]$
 - If $o \in O$ and, letting $n = ar(o)$, $a \in A[X]^n$ (i.e. $a$ is a tuple of ASTs in $A[X]$), then $(o, a) \in A[X]$

TODO


## Definition of an ABT-space (take 1)
An **abstract binding tree space** (ABT-space) is a tuple $(O, V, ar: O \to \mathbb{N}^{\ast})$ where $O$ is a set of **operators** and $V$ is a set of **variables**. $ar$ is a function assigning to each operator its **arity**, which is now a finite tuple of natural numbers. This still indicates the number of arguments the operator takes, but now each argument has a number which indicates how many variables it binds.

### Definition of $B[X]$, attempt #1
The following attempt turns out to not work, but it's simple so it's a good place to start

For any $X \subseteq V$, we define the set $B[X]$ inductively to be the smallest set such that:

 - $X \subseteq A[X]$
 - If $o \in O$ and, letting $(b_1, \ldots, b_n) = ar(o)$, $a \in B[X]^n$ (i.e. $a$ is a tuple of ABTs in $B[X]$), then $(o, ((Y_1, a_1), \ldots, (Y_n, a_n))) \in A[X]$, where $Y_i \subset V - X$ and $|Y_i| = b_i$. We will generally use the notation $Y_i . a_i$ to mean $(Y_i, a_i)$, so that the expression becomes $(o, (Y_1 . a_1, \ldots, Y_n . a_n))$.


### The problem
TODO


# One more time, with sorts

## Definition of an AST-space
An **abstract syntax tree space** (**AST-space**) is a tuple $(S, O, V, d_O, d_V$, where $S$ is a finite set of **sorts**, $O$ is a set of **operators**, $V$ is a set of **variables**, $d_O: O \to S \times S^{\ast}$, and $d_V: V \to S$.

For each AST-space we can define, for all $s \in S$, $O_s := (\pi_1 \circ d_O)^{pre}(s)$ is the set of all operators with sort $s$, while $ar: O \to S^{\ast}$ defined by $ar := \pi_2 \circ d_O$ is the **arity** of any operator. For all $s \in S$, $V_s := d_V^{pre}(s)$ is the set of all variables of sort $s$. For any $X \subseteq V$, we can similarly define $X_s := (d_V | X)^{pre}(s)$ to be the set of all variables in $X$ of sort $s$.

For any $X \subseteq V$, we can define the set $A[X]_s$ inductively to be the smallest set such that:

 - $X_s \subseteq $A[X]_s$
 - if $o \in O_s$, then either $ar(o) \in S^0$ and $(o, ()) \in A[X}_s$ or $\exists n \in \mathbb{N}$ such that $ar(o) \in S^n$ and for all $i \in \mathbb{N}$ with $1 \leq i \leq n$, there are $a_i \in A[X}_{ar(o)_i}$, then $(o, (a_1, \ldots, a_n)) \in A[X]_s$.

The set $A[X]_s$ is the collection of all ASTs of sort $s$ taking variables in $X$.


## Definition of adjoining a variable
If $(S, O, V, d_O, d_V)$ is an AST-space and $s \in S$ and $X \subseteq V$ and $x \in V_s - X_s$, thenn we define $X,x$ to be the set $Y \subseteq V$ such that $Y_s = X_s \cup \{x\}$ and $Y_t = X_t$ for $t \neq s$. The set $X,x$ is said to be the result of **adjoining** $x$ to $X$.

We can further generalize this to adjoining sets of variables: If $Z \subseteq V - X$, then $X,Z$ is the set $Y$ such that $Y_s = X_s \cup \{z \in Z : d_V(z) = s\}$. Later we will adjoin vectors of variables, but by this we will mean adjoining the underlying set of the vector.


## Definition of substitution
If $X \subseteq V$, $s,t \in S$, $x \in V_s - X_s$, $a \in A[X,x]_t$,  $b \in A[X]_s$, then we define $[b/x]a \in A[X]_t$ by:

 - $[b/x]x = b$ and for any $y \in V_s$ with $y \neq x$, $[b/x]y = y$
 - If $o \in O_t$, $ar(o) \in S^n$ for some $n \in \mathbb{N}$, for each $i$ with $1 \leq i \leq n$, there is $a_i \in ar(o)_i$, then $[b/x](o, (a_1, \ldots, a_n)) = (o, [b/x]a_1, \ldots, [b/x]a_n)$

In words, for any AST $a$ which potentially contains nodes of variable $x$, where $x$ has sort $s$, if $b$ is an AST of sort $s$, then $[b/x]a$ is the uniqe AST that results from substituting all occurrences of $x$ in $a$ with $b$ (i.e. replacing leaf node $x$ with AST $b$).


## Substitution is well-defined
If $x \in V - X$ and $a \in A[X,x]$, then for every $b \in A[X]$, there is a unique $c \in A[X]$ such that $[b/x]a = c$.

*Proof:* The proof is by structural induction. If $a \in X$, then $[b/x]a = a$, while if $a = x$, then $[b/x]a = b$. These are unique by definition. 

If $a \in A[X,x] - (X,x)$, then $a = (o, (a_1, \ldots, a_n))$ for some $o \in O$ and some $a_i's$ such that $a_i \in A[X,x]_{ar(o)_i}$, so assuming there are unique $c_i$'s such that $[b/x] a_i = c_i$, then $[b/x]a = (o, (c_1, \ldots, c_n))$


## Defining the sort of a vector of variables
If $x = (x_1, \ldots, x_n) \in V$ and $d_V(x_i) = s_i$, then we say that $x$ is of sort $s = (s_1, \ldots, s_n)$.
