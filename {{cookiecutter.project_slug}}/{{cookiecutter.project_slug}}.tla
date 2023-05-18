{{ cookiecutter.description }}

---- MODULE {{ cookiecutter.project_slug }} ----
EXTENDS Integers, TLC
VARIABLES x, y
vars == <<x, y>>

Init ==
    /\ x = TRUE
    /\ y = FALSE

Switch ==
    /\ x' = ~x
    /\ y' = ~y

Next ==
    /\ Switch

Spec ==
    /\ Init
    /\ [][Next]_vars
    /\ WF_vars(Next)

====
