EmptyList = Cons[Cons[True][Noop]][Cons[Cons[True][Noop]][Noop]]
IsEmpty=->list{Car[Car[list]]}
Head=->list{Cdr[Car[list]]}
Tail=->list{Cdr[list]}
Unshift =
->list{->element{
  Cons[Cons[False][element]][list]
}}
NewList=->element{Unshift[EmptyList][element]}
InList=->equality_operator{
->list{->element{
  If[
    LFalse
  ][
    ->_{
      If[
        LTrue
      ][
        ->_{InList[equality_operator][Tail[list]][element]}
      ][
        equality_operator[Head[list]][element]
      ]
    }
  ][
    IsEmpty[list]
  ]
}}}
