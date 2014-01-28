//对列表增加一个名为myAverage的槽，以计算列表中所有数字的平均值。
//如果列表中没有数字会发生什么？
//（加分题：如果列表中有任何一项不是数字，则产生一个Io异常。）

s := 0

//没有异常处理
List myAverage := method(
  self foreach(v,
    s = s + v
    )
  return s
)

//有异常处理
List myAverage2 := method(
  self foreach(v,
    if((v type) == (1 type),
      s = s + v,
      Exception raise("Non-number in List."))
    )
  return s
)

a := list(5, 5, 5, 5, 5)
(a myAverage) println

b := list(5, 5, 5, 5, "e")
//(b myAverage) println
//Exception: argument 0 to method '+' must be a Number, not a 'Sequence'

c := list(5, 5, 5, 5, "e")
(c myAverage2) println

//坑：不要用 sum，sum 是内置关键词而且没有提示，会给你算出来总和，再加一遍就变成二倍了…