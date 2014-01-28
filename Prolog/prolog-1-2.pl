/* 建立一个简单的知识库。描述一些你最喜欢的书籍和其作者。 */
/* 找出知识库中某位作者编写的所有书籍。 */

author(a, m).
author(b, n).
author(c, m).
author(d, n).
author(e, m).

/*
| ?- ['prolog-1-2'].
(1 ms) yes

| ?- author(Who, m).
Who = a ? a
Who = c
Who = e

yes
*/