# Ensamblador: ¿y ahora que? :thinking:

Ensamblador el lenguaje de programación, la leyenda. Desde la perspectiva de un
principiante solamente parece ser el remanente de los turbulentos y oscuros primeros
días de la programación para dispositivos electrónicos, aquella bestia que los primeros
programadores habían logrado derrotar, encerrándolo dentro de compiladores,
maquinas virtuales y tiempos de ejecución, __¿Pero realmente es asi?__

Durante este curso de Arquitecturas de computadoras nos dispusimos a abrir la caja
de pandora, usando un ensamblador, concretamente NAMS trabajando en arquitectura x86.
Pero lo que descubrí ahí dentro no fue un monstruo encerrado como creía sino más bien
no encontré nada, eso fue por que lo encerrado no es el ensamblador sino el programador,
en una _jaula de abstracción_, de cierta manera él vació es el espíritu de ensamblador
ya que al usar otros lenguajes por lo general ya tiene varias estructuras de control o
de flujo hechas, que de cierta manera es como tener piezas de lego que se unen para formar
otras estructuras más complejas por otro lado con ensamblador 
__los legos se crean a imagen y semejanza del programador__.

Parte del objetivo del curso es desmitificar la existencia de ensamblador y de como
funcionan las computadoras, muchas de las cosas que el ser humano ha creado son inspiradas
por la naturaleza, por ejemplo un avión copia el diseño de las alas de un ave para poder
volar, o los trajes de buceo usan varios aditamentos parecidos con aletas de pez pero
las computadoras son lo más cercano a una ___creación abstracta___ concebida del vientre
de la lógica, por lo que naturalmente se generan bastantes ideas erróneas en torno a como
funcionan principalmente por el hecho de todas las capaz de abstracción que ocultan y oscurecen
la lógica disfrazándola de magia. Haciendo retrospectiva en el curso vemos que realmente
los programas en ensamblador no son muy complejos como yo creía, sino que son tediosos ya que
no hay pixel que cambie de color o byte en memoria que cambie si yo no lo decido así. 
El verdadero problema es la complejidad de las tareas que se les asigna a los programadores
incrementando así la complejidad del software y con el todos los posibles errores humanos
que un programador podría cometer, por eso decidieron encerrarse en su _jaula de abstracción_,
para protegerse de ellos mismos.

En nuestros tiempos el simple hecho de pensar en recurrir a ensamblador para el
desarrollo de cualquier tarea parece ridículo, especialmente por la gran cantidad de lenguajes de
programación disponibles sin embargo en varios años que llevo estudiante en el campo de la
informatica me he dado cuenta que siempre existe una herramienta que esta mejor adaptada
para algunas tareas y peor para otras. Ensamblador es una mala herramienta para
todo lo que yo conozco entonces __¿Donde es que ensamblador brilla?__

Ensamblador parece mejor adaptado cuando se requiere un control absoluto de las acciones
de un programa, en otras palabras puede usarse para la creación de controladores en hardware 
dedicado a ciertas tareas, en esto último entra un campo llamado internet de las cosas
el cual consiste en el uso de objetos de la vida cotidiana y agregarle funciones nuevas a travez
de una conexión a internet, por ejemplo conectar sensores biometricos a una puerta que se conecta
a internet y deje pasar o no a una persona, camaras de seguridad con reconocimiento facial entre
otras cosas. Por ejemplo podríamos conectar un par de sensores de humedad y temperatura a un
arduino para enviar la señal por internet y así monitorear en tiempo real ubicaciones en
una bodega con comida por ejemplo. 

También de marera recreativa es interesante ver como los códigos de las instrucciones se traduce
en circuitos fisicos dentro del CPU y en general como el diseño del CPU en términos de circuitos afecta
el diseño del código de ensamblador que usa. 

Por todo lo mencionado concluimos que ensambrador es un lenguaje de programacion cuyas nucleo se basa en
realizar operaciones secillas como mover datos binarios de un lugar a otro y operar datos numericos pero
cuyo impacto en la informacion que representan esos datos reulta trasendental, por ejemplo el hecho
que un registro tenga un valor dado en un momento especifico es la diferencia entre leer entradas de los perifericos
o mostrar algo en pantalla, y debido a su naturaleza donde todos se basa en memoria es muy dificil adaptar problemas
mas complejos a este esquema, siendo aqui la limitante el programador mas no el lenguaje. A pesar de todo esto
como ya vimos hay varias tareas para las cuales ensamblador resulta la eleccion correcta ya que nos permite interactuar
de manera mas directa con el hardware, sin ninguna capa de abstraccion que oscuresca lo que realemnte esta pasando.
