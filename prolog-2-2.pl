/* 找出列表中最小的元素。 */

smallestItem([A], A).
smallestItem(List, SmallestValue) :-
  (List = [Head|Tail]),
  smallestItem(Tail, SmallestTail),
  SmallestValue is min(Head, SmallestTail),
  !
.

/* 输出 */
/*
| ?- smallestItem( [5,1,10,2], What ).
What = 1
(1 ms) yes

| ?- smallestItem( [5,7,10,2], What ).
What = 2
yes
*/