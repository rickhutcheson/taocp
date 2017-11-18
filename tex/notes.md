# 1.1 Algorithms

> Practice yourself, for heaven's sake, in little things,
> and thence proceed to much greater.
-Epictetus

## Introduction

This entire section deals with the formal definition of algorithms,
and a brief discussion of formal correctness proofs.
Because this formal definition of an *algorithm* is fairly dense,
we work into it slowly, beginning with an example.

Algorithm 1.1E (Euclid's Algorithm)
Given $m \in Z, n \in Z$, find their *greatest common divisor*.


* E1. (Find Remainder) Divide $m$ by $n$, set $r$ to the remainder. ({$0 \leq r < n$})
* E2. (Halt Condition) If $r = 0$, stop; $n$ is the answer.
* E3. (Reduction) $m \gets n, n \gets r$; goto **E1**.


<!-- \topic A correctness proof. -->

<!-- Correctness proofs, especially those involving recursion, will, in -->
<!-- many cases, use inductive reasoning. -->

<!-- After step {\bf E1}, we've calculated $q \in \Z^+$, -->
<!-- $r \in \N$ satisfying $m = qn + r$. There are two possible cases: -->

<!-- Case 1 ($r = 0$) - Then $m$ is a multiple of $n$; $n$ is the GCD of -->
<!-- $m$ \& $n$. -->

<!-- Case 2 ($r \neq 0$) - Then we note the following relationship between -->
<!-- $r, m, \& n$: -->

<!-- \bigskip -->
<!-- If $\exists x$ that divides $m$ and $n$, then it also divides -->
<!-- $r = m - qn$ (Why? Because $x$ divides $m$ and $n$.) {\it Also}, any -->
<!-- $x$ that divides $n$ and $r$ will divide $n$ \& $r$ will divide -->
<!-- $m = qn + r$. So, set of divisors for $\{m, r\}$ is the same as the -->
<!-- set of divisors for $n, r$. So, {\bf E3} does not change the problem. -->
<!-- \qed -->
