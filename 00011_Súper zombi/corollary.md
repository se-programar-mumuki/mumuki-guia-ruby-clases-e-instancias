Veamos por qué decidimos hacer una nueva clase, `SuperZombi`:

* Pueden `regenerarse!`, a diferencia de un `Zombi`
* `sabe_correr?` tiene comportamiento distinto a la clase `Zombi`
* `recibir_danio!` tiene comportamiento distinto a la clase `Zombi`

Sin embargo habrás notado que, aunque esos últimos dos métodos son distintos, hay **cuatro** que son idénticos: `salud`, `gritar`, `sin_vida?`, y su inicialización mediante `initialize`. ¡Hasta tienen un mismo atributo, `@salud`! ¿Acaso eso no significa que estamos repitiendo mucha lógica en ambas clases? :frowning:

¡Así es! Pero todavía no contamos con las herramientas necesarias para solucionarlo. :pensive: 