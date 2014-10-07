require_relative 'ruby_interop.rb'
require_relative 'core.rb'
require_relative 'numbers.rb'
require_relative 'list.rb'

FAIL=->_{Raise["Failed"]}
Assert=->bool{If[Print["T"]][FAIL][bool]}
Refute=->bool{If[FAIL][Print["T"]][bool]}


MakeAssert1=->operator{
->first{
  Assert[operator[first]]
}}
MakeAssert2=->operator{
->first{->second{
  Assert[operator[first][second]]
}}}

MakeRefute1=->operator{
->first{
  Refute[operator[first]]
}}
MakeRefute2=->operator{
->first{->second{
  Refute[operator[first][second]]
}}}

AssertZero=MakeAssert1[IsZero]
AssertNumbersEqual=MakeAssert2[NumbersEqual]
RefuteNumbersEqual=MakeRefute2[NumbersEqual]

AssertEmpty=MakeAssert1[IsEmpty]
RefuteEmpty=MakeRefute1[IsEmpty]
AssertListsEqual=->element_equality_operator{MakeAssert2[ListsEqual[element_equality_operator]]}
