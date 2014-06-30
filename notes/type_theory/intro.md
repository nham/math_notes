# Definition of an AST-space
An **abstract syntax tree space** (**AST-space**) is a tuple $(S, O, V, d_O, d_V$, where $S$ is a finite set of **sorts**, $O$ is a set of **operators**, $V$ is a set of **variables**, $d_O: O \to S \times S^{\ast}$, and $d_V: V \to S$.

For each AST-space we can define, for all $s \in S$, $O_s := (\pi_1 \circ d_O)^{pre}(s)$ is the set of all operators with sort $s$, while $ar: O \to S^{\ast}$ defined by $ar := \pi_2 \circ d_O$ is the **arity** of any operator. For all $s \in S$, $V_s := d_V^{pre}(s)$ is the set of all variables of sort $s$. For any $X \subseteq V$, we can similarly define $X_s := (d_V | X)^{pre}(s)$ to be the set of all variables in $X$ of sort $s$.

For any $X \subseteq V$, we can define the set $A[X]_s$ inductively by:

 - $X_s \subseteq $A[X]_s$
 - if $o \in O_s$, then either $ar(o) \in S^0$ and $(o, ()) \in A[X}_s$ or $\exists n \in \mathbb{N}$ such that $ar(o) \in S^n$ and for all $i \in \mathbb{N}$ with $1 \leq i \leq n$, there are $a_i \in A[X}_{ar(o)_i}$, then $(o, (a_1, \ldots, a_n)) \in A[X]_s$.

The set $A[X]_s$ is the collection of all ASTs of sort $s$ taking variables in $X$.


## Definition of adjoining a variable
If $(S, O, V, d_O, d_V)$ is an AST-space and $s \in S$ and $X \subseteq V$ and $x \in V_s - X_s$, thenn we define $X,x$ to be the set $Y \subseteq V$ such that $Y_s = X_s \cup \{x\}$ and $Y_t = X_t$ for $t \neq s$. The set $X,x$ is said to be the result of **adjoining** $x$ to $X$.
