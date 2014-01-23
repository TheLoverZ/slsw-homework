/* 建立一个描述音乐家和乐器的知识库，同时也描述出音乐家以及他们的音乐风格。*/
/* 找出所有使用吉他的音乐家。 */

/* copied from http://blog.wakatta.jp */

plays(jimmy_hendrix, guitar).
plays(eric_clapton, guitar).
plays(jimmy_page, guitar).
plays(neil_young, guitar).

plays(diana_krall, piano).
plays(harry_connick_jr, piano).
plays(ray_charles, piano).
plays(jerry_lee_lewis, piano).

style(jimmy_hendrix, rock).
style(jimmy_page, rock).
style(neil_young, rock).
style(jerry_lee_lewis, rock).

style(diana_krall, jazz).
style(harry_connick_jr, jazz).

style(rays_charles, blues).
style(eric_clapton, blues).

/*
| ?- ['prolog-1-4.pl'].
(1 ms) yes

| ?- plays(Who, guitar).
Who = jimmy_hendrix ? a
Who = eric_clapton
Who = jimmy_page
Who = neil_young

no
*/