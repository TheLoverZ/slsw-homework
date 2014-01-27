/* 找出列表中最小的元素。 */

smallestItem([A], A).
smallestItem(List, SmallestValue) :-
  (List = [Head|Tail]),
  smallestItem(Tail, SmallestTail),
  SmallestValue is min(Head, SmallestTail),
  !
.