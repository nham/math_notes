A **floating-point type** is specified by a tuple $(\beta, p, e_min, e_max)$, where

 - $\beta \in \mathbb{N}$, $\beta > 1$
 - $p \in \mathbb{N}^+$
 - $e_min, e_max \in \mathbb{Z}$ with $e_min \leq e_max$

A **floating-point number** w.r.t. to some type $(\beta, p, e_min, e_max)$ is some tuple $(e, s, f)$, where

 - $e \in \mathbb{Z}$ and $e_min \leq e \leq e_max$
 - $s \in \{0, 1\}$
 - $f = f_1 \cdots f_p \in \{0, \ldots, \beta - 1\}^p$

The **value** associated with a floating point number $(e, s, f)$ is given by:

$$(-1)^s (\sum_{k=1}^p f_k \beta^{-k}) \beta^e$$

The above definition is not completely general since we may define floating point types that do not have a fixed precision (so-called multiple-precision floating point), or that don't have a fixed range that exponents must reside in.

For any floating point type, we can define a function $ulp$ mapping $(e, s, f) \mapsto \beta^{e - p}$ for non-zero $(e, s, f)$. This is the **units in the last place** function, which gives the gap between any number $(e, s, f)$ and the next-larger-magnitude floating point number.
