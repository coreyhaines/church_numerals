require_relative 'core.rb'
require_relative 'testing.rb'
Title["Tuples (2)"]
tuple = Cons[1][2]
puts (Car[tuple] == 1 ? "T" : "F")
puts (Cdr[tuple] == 2 ? "T" : "F")

Title["Logic"]

Title["If True (1)"]
If[PrintTrue][PrintFalse][True]
Title["If False (1)"]
If[PrintTrue][PrintFalse][False]

Title["Identity (2)"]
Assert[Identity[LTrue].(Noop)]
Refute[Identity[LFalse].(Noop)]

Title["And (4)"]
Assert[And[True][True]]
Refute[And[False][False]]
Refute[And[True][False]]
Refute[And[False][True]]

Title["Or (4)"]
Assert[Or[True][True]]
Refute[Or[False][False]]
Assert[Or[True][False]]
Assert[Or[False][True]]

Title["Not (2)"]
Assert[Not[False]]
Refute[Not[True]]

Title["XNor (4)"]
Assert[XNor[True][True]]
Assert[XNor[False][False]]
Refute[XNor[True][False]]
Refute[XNor[False][True]]
