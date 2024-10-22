#let frame_with_header(stroke) = (x, y) => (
  left: if x > 0 { 0pt } else { stroke },
  right: stroke,
  top: if y < 2 { stroke } else { 0pt },
  bottom: stroke,
)
#let no_stroke_frame(stroke) = (x, y) => (
  left: 0pt,
  right: 0pt,
  top: 0pt,
  bottom: 0pt,
)

#set table(
  fill: (_, y) => if calc.odd(y) { rgb("EAF2F5") },
  stroke: frame_with_header(rgb("21222C")),
)


== Initial Definitions
- *proposition*: (i) a declarative sentence(declare a fact) (ii) can be either true or false but not both
- *propositional variable* / sentential variable represents a proposition
- *truth value* of proposition: tells if proposition is true or false
- *propositional calculus / propositional logic*: logic that deals with propositions
- *logical operators/connectives*: using these, we can construct new propositions from existing ones. Those new propositions(created by applying connectives) are called *compound propositions*. The propositions which cannot be simplified further(contains no connective usage) are called *atomic propositions*.
- *truth table*: enumerates combination of all truth values of propositions in expression of a compound proposition and compound proposition's truth value in each case. 
==  Connectives
#table(
  columns: 3,
  [*Connective*], [*Representation*], [*Remarks*],
  [Negation], [common: $not p, overline(p)$ , \ others: $tilde p, -p, p', !p$], [Read as "not $p$" or "It is not the case that $p$"],
  [Conjuction], [$p and q$],[],
  [Disjunction/Inclusive or], [$p or q$],table.cell(rowspan: 1, [ 
  Inclusive or: true when *any* one of the variables is true  ] ),
  [Exclusive or], [$p xor q$],[Exclusive or: true when *only* one of the variables is true],
  [Implication/Conditional statement], [$p arrow.r q$], [$p$ is called hypothesis/premise/antecedent \ $q$ is called consequence/conclusion],
  [Bi-implication/Bi-conditional statement], [$p arrow.l.r q$], [],
)

- Many ways to write $p arrow.r q$

#[
  #set table(
    fill: (_, y) => if false { rgb("EAF2F5") },
    stroke: no_stroke_frame(rgb("21222C")),
  )
  #table(
    columns: 2,
    [if $p$ then $q$],[$q$ when $p$],
    [if $p$, $q$],[$q$ whenever $p$],
    [$p$ implies $q$],[$q$ if $p$],
    [*$p$ only if $q$*],[*$q$ unless $not p$*],
    [a neccessary condition for $p$ is $q$],[*$q$ is neccessary for $p$*],
    [],[$q$ provided that $p$],
    [],[a sufficient condition for $q$ is $p$],
  )
]
- take care of *neccessary* and *sufficient*

#pagebreak()

- Compound propositions derived from implication $p arrow.r q$

#table(
  columns: 2,
  [*Type*],[*Repr.*],
  [*Converse*],[$q arrow.r p$],
  [*Contrapositive*],[$not q arrow.r not p$],
  [*Inverse*],[$not p arrow.r not q$],
)
- Contrapositive has the same truth value as $p arrow.r q$
- Similarily converse and inverse have the same truth value

- Many ways to write $p arrow.l.r q$
  - $p$ is neccessary and sufficient for $q$
  - if $p$, then $q$ and conversely
  - $p$ iff $q$
  - $p$ if and only if $q$
  - $p$ exactly when $q$
- In general English, people may write just "if" for biconditional instead of "if and only if", so we need to check if it's a implication or bi-implication.
- *Precedence of connectives*:
  $not > and > or > arrow.r > arrow.l.r$
- *Tautology*: a proposition which is always true regardless of the truth values of propositions it is composed of.
- *Contradiction*: a proposition which is always false regardless of the truth values of propositions it is composed of.
- *Contigency*: A proposition which is neither a tautology nor a contradiction; A proposition which can be true or false both depending on the truth value of the propositions it is composed of.
- *Logical equivalence*: Two compound propositions are logically equivalent if they have the same truth value for all combinations of truth values of propositions they're composed of. 
  - If $p$ and $q$ are equivalent, then we write $p equiv q$. Also written as $p arrow.double.l.r q$
  - $p equiv q$ means $p arrow.l.r q$ is a tautology.
  - If $p$ is a tautology, then $p equiv T$
  - If $p$ is a contradiction, then $p equiv F$
- *Satisfiability* of compound propositions: A compound proposition is satisfiable if there exist an assignment of truth values to the proposition it's composed of such that it evaluates to true. Such assignment is called a solution.

