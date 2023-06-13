# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.destroy_all
Movie.destroy_all
# Booking.destroy_all
puts("Seed MS..")

movie1 =
  Movie.create(
    title: "El padrino",
    description:
      "Don Vito Corleone, conocido dentro de los círculos del hampa como 'El Padrino', es el patriarca de una de las cinco familias que ejercen el mando de la Cosa Nostra en Nueva York en los años cuarenta. Don Corleone tiene cuatro hijos: una chica, Connie, y tres varones; Sonny, Michael y Fredo. Cuando el Padrino reclina intervenir en el negocio de estupefacientes, empieza una cruenta lucha de violentos episodios entre las distintas familias del crimen organizado.",
    year: 1972,
    length: 175,
    genre: "drama",
    platform: %w[Netflix Star+]
  )

user1 = User.create(email: "user1@example.com", password: "123456")

user2 = User.create(email: "user2@example.com", password: "123456")

rating1 = Rating.create(rate: 4, movie_id: movie1, user_id: user1)

rating2 = Rating.create(rate: 5, movie_id: movie1, user_id: user2)

review1 =
  Review.create(
    content: '*** La Historia o el Argumento:** nos ambienta en el año 1945 tras acabarse la segunda mundial en la ciudad de Nueva York, dónde vive uno de los Dones más peligrosos de la mafia Italoamericana llamado: Don Vito Corleone, que estaba en ese momento en una fiesta celebrando la boda de su hija Connie Corleone con su esposo Carlo Rizzie y ahí conocemos a los miembros de la familia Corleone, la esposa de Vito, la señora Corleone y sus hijos: El mayor llamado: Santino "Sonny" Corleone, el más fuerte, el más temperamental y el que debió haber Sido el heredero de la familia Corleone, Tom Hagen, el hijo adoptado que vendría a hacer el abogado de la familia o el Consiliere, Freddo Corleone el tontito de la familia que más adelante se encargará de los casinos propiedad de la familia, Michael Corleone el menor de los varones, el que nunca prometió meterse en los asuntos mafiosos de la familia por eso estudio en la universidad y fue soldado Marín en la segunda guerra mundial y además de conseguir una novia llamada Kay Adams, el no lo sabe pero será él que lleve las riendas de su familia, y por último tenemos a Constanza "Connie" Corleone que es la que recién se acabó de casar con esposo Carlo Rizzie; tras acabar la boda Tom Hagen viaja a Los Ángeles, California para solucionar el problema del ahijado de Don Vito llamado: Jhonny Fontae (Basado en Frank Sinatra) con un productor de Hollywood que se solucionó basicamente cortandole la cabeza a un caballo; después Don Vito Corleone tuvo una reunión con un narcotraficante apodado "El Turco" llamado: Virgil Sollozo, que quiere la ayuda judicial y política que los amigos de Don Vito les podría brindar, pero Vito se niega puesto que las drogas son algo malo para él y podría acabar con su negocio en el futuro, y tras cancelar el trato Don Vito Corleone manda a uno de sus matones de confianza llamado: Luca Brassi para ver que estan planiando los Tataglia puesto que Sollozo tenía la protección de los Tataglia, pero al llegar se encuentra con Bruno Tataglia y Luca es asesinado en ese mismo momento, secuestran a Tom Hagen y mientras que Don Vito estaba en la calle comprando fruta con su hijo Freddo, unos matones de Sollozo le ocasionan 5 tiros a Don Vito que por poco le ocacionan la muerte ya que Freddo no pudo hacer nada ya que por poco se le cae la pistola al defender a su padre y los matones fueron rápidos, tras enterarse de esto Michael fue a quedarse más tiempo con su familia dejando un lado a Kay, mientras la familia se enteró de que ya habían liberado a Tom Hagen después les había llegado un mensaje diciendo que Luca Brassi está durmiendo con los peces, tras asesinar Paulie, un conductor que debió haber estado ahí cuando le dispararon al Padrino de Vito, Michael decide ir al Hospital para ir a visitar a su padre, pero antes tuvo una cena con su novia Kay donde se despide de ella diciendo que la vera pronto, entonces Michael llega al Hospital pero lo que nota es que el hospital está totalmente solo, no hay guardias ni gente de la prensa ni nadie, entonces lo primero Michael lo primero que se le ocurre es llamar a su hermano Sonny, para decirle que envien guardias, y le dice a una enfermera que cambien a su padre a otra habitación, y después llega Enzo el pastelero que Michael le ordena que vaya a fuera y juntos actuan como si tuvieran un arma en el bolsillo para ahuyentar a unos matones que iban a matar a Don Vito, y tras irse el pastelero, llegó la Policia y el Oficial de Policia corrupto llamado el Oficial Mc Clauskey, que le ordena a Michael que se aleje del Hospital, Michael se niega y acto seguido el oficial Mc Clauskey le dá un tremendo puñetazo en la cara a Michael que le deforma la cara, y después de eso llega Tom Hagen con muchos guardaespaldas para cuidar a Don Vito Corleone y el oficial Mc Clauskey al enterarse que Tom Hagen es abogado, el oficial corrupto decide alejarse del lugar con toda sus patrullas, al día siguiente Sonny al enterarse de esto, furioso manda a matar a Bruno Tataglia el hijo mayor de los Tataglia, y convierte la casa de su padre en una fortaleza, entonces Sonny y Tom no saben que van a hacer con Sollozo y Mc Clauskey puesto que Mc Clausky estaba comprado por Sollozo, puesto que Sollozo quería reunirse con Michael para escuchar el trato, pero a Michael se le ocurre la idea de que él vaya a la entrevista junto a Sollozo y el Oficial Mc Clauskey y en plena entrevista con un arma que ocultará Clemenza en el baño matará tanto a Sollozo como a Mc Clauskey, en un primer instante su familia no lo tomó enserio hasta que Michael dijo que lo va ha ser por negocio, y tras practicar con la pistola o revolver con el cual va ha matar a los dos, llegó el momento de la entrevista, y la entrevista se llevó a cabo en un restaurante italoamericano en el Bronx, y mientras que se dá acabo la entrevista Michael pide permiso para ir al baño pero del baño saca un revolver que ocultó clemenza para él, y al salir del baño Michael sigue con la entrevista y al proseguir la entrevista, Michael saca la pistola y de un tiro que mata a Sollozo con un tiro en la cabeza y al Oficial a Mc Clauskey con dos tiros una en la cabeza y otra en el cuello, y después Michael fue exiliado a la isla de sicilia en Italia puesto que la policia de Nueva York lo seguía buscando; y mientras tanto con la familia Corleone, Sonny sigue dirigiendo a la familia Corleone mientras que su padre se recupera,puesto que se había librado una guerra entre los Corleone contra los Tataglia y los Barzini con la ayuda del consiliere de Tom Hagen y mientras tanto Freddo se encargaría del negocio de los casinos en Las Vegas, pero resulta que el matrimonio entre Connie y Carlo no va nada bien puesto que Carlo siempre se mantenía golpeandola, Sonny ya le había dado ya una golpiza en la calle en público a Carlo, pero en vez de aprender la lección este siguió golpeando a Connie, entonces Connie llamó a Sonny y Sonny todo furioso decidió ir a darle otra lección a Carlo, pero lo que ignoraba Sonny es que esto era una trampa, puesto que se dirigió en carro a la casa de Carlo y Connie, y Sonny al llegar a un peaje se le aparecieron unos tipos con metralletas que le ocasionaron 35 tiros en su cuerpo y Sonny muere; y mientras tanto Michael en su exilio en sicilia, Italia, este se mantenía recorriendo los montes de sicilia con sus dos guardaespaldas, hasta que se le ocurre ir al pueblo natal de su padre: Corleone, y allí mira por primer vez y se enamora de una Italiana llamada: Apollonia Viteli, en un principio el padre de Apollonia no aprobaba esta relación, pero Michael se le llega muy respetuoso y muy caballeroso al señor y se va ganando su confianza y la de Apollonia también tanto así que su relación avanza tanto así que se terminan casando y hacen el amor en su luna de miel, todo iba bien en su relación, eso hasta que Michael le decide enseñar a conducir a su esposa, y le pregunta de que cuando la enviará a Estados Unidos y le dice que cuando aprenda Inglés, en ese mismo día Michael se entera de la muerte de su hermano Sonny, y en ese mismo día mientras estaba distraído uno de sus guardaespaldas llamado: Fabrizzio traiciona a Michael poniendo una bomba en su carro y explota, Michael sobrevivió porque estuvo fuera del vehículo pero la que no logró sobrevivir fue su esposa Apollonia, y por ende Apollonia muere; y mientras tanto en Estados Unidos Don Vito se entera de la muerte de su hijo tras recuperarse de los balazos, y lo primero que hace es llamar a un enterrador llamado: Bonasera que le debía un favor a Don Vito, que le dice que ponga su cadáver en condiciones para su funeral, y tras finalizar el funeral de Sonny, Don Vito convoca una reunión con los Tataglia, los Barzini y los jefes de las 5 familias mafiosas de Nueva York y en Nueva Jersey y la reunión concluye con una paz temporal entre los Corleone y los Tataglia y los Barzini, y tras concluir la reunión Michael por fin puede volver a Los Estados Unidos y lo primero que hace es proponerle matrimonio a su antigua novia Kay Adams puesto que ella estaba trabajando de maestra en una escuela primaria, y ella acepta y tienen un hijo llamado: Anthony Vito Corleone; y además al regresar Michael empieza a trabajar para su padre reemplazandolo ya que estaba enfermo, y un día se reunieron Michael Coreleone junto a los amigos de su padre: Salvatore Tessio y Peter Clemenza y le preguntan que van a hacer con sus enemigos de los Tataglia y los Barzini y Michael tiene un plan para acabar por una vez por todas con sus enemigos de los Tataglia y los Barzini pero primero tenían que hacer negocios en Las Vegas, y para eso los va ha ayudar su hermano Freddo, y Michael se dirige a Las Vegas y es recibido por una calurosa bienvenida estilo Las Vegas gracias a su hermano Freddo y Jhonny Fontae, pero Michael lo rechaza puesto que estaba cansado y solo venía por negocios y al llegar hace firmar a Jhonny un contrato de 5 presentaciones en el casino, lo cual Jhonny acepta, y la razón principal de que Michael vino a Las Vegas es para hacer un negocio con un magnate de Las Vegas llamado: Moe Green, y el negocio era que Michael iba a comprar todos los casinos y hoteles que son propiedad de Moe Green, Moe Green lo rechaza puesto que ya había hecho un trato mejor con Barzini y conservar su negocio, y tras este negocio Michael y Moe Green terminan peleados puesto que además Moe golpeo a Freddo porque se mantenía enamorando a las chicas del casino; tras el negocio fallido de Michael en Las Vegas, Michael vuelve a Nueva York para recibir asesoramiento de su padre Don Vito puesto que tenía una entrevista pendiente con Emilio Barzini, y en sus consejos Don Vito le dice a su hijo Michael que es muy probable que lo maten en esa entrevista, entonces Michael debe andar con cuidado y Don Vito al terminar de hablar con su hijo, decide ir a jugar con su Nieto Anthony Vito con Naranjas y con una especie de regadora de plantas que tenía las plantas, que tenía Anthony Vito, y mientras jugaban y corrian a Don Vito le dá un paro cardiaco, y ahora sí, Don Vito muere, y en pleno funeral de Don Vito, Tom Hagen le pregunta a Michael que van a hacer con sus enemigos, a lo que Michael responde que se va ha encargar de ellos después del bautizo, puesto que Michael aceptó ser padrino del hijo de su hermana Connie, y en pleno bautizo Michael manda a sus sicarios a matar a los enemigos de la familia, puesto que Clemenza asesina a unos miembros de la familia Barzini con una escopeta mientras salian de un ascensor, un sicario mata a Moe Green metiendole una bala en el ojo mientras le daban masajes, otro sicario mata a un miembro de los Tataglia mientras estaba atrapado en una puerta giratoria de un hotel, matan a Philp Tataglia unos sujetos con metralletas mientras estaba acostado en su cama desnudo junto a su esposa y por último un sicario disfrazado de policia mata en la calle a los guardaespaldas de Emilio Barzini, y al mismo Emilio Barzini mientras el caía por unas escaleras; tras acabar el bautizo Michael manda a asesinar a un traidor en la familia llamado: Salvatore Tessio, y a Michael le faltaba un último cabo suelto para acabar con los problemas de la familia y poder mudarse con ellos a Nevada, y era otro traidor que fue el responsable de la muerte de Sonny Corleone y le metio esa trampa, y era nada más y nada menos que Carlo Rizzie, el esposo de Connie, entonces Michael le hace una pequeña visita a Carlo puesto que lo castiga hechandolo lejos de los asuntos de la familia, y le manda un carro que lo llevará al aeropuerto, pero lo que ignoraba Carlo es que Michael lo había engañado puesto que Clemenza estaba en la parte de atras del carro y lo asesina estrangulandolo con unas cadenas de oro hasta matarlo y Carlo muere, y tras esto mientras la familia Corleone se mudaba a Nevada Connie se entera de la muerte de esposo y le reclama a Michael por esto y le jura odio eterno, y su esposa Kay de esto le pregunta a Michael si es verdad, a lo que Michael miente y dice que No, después su esposa lo abraza y le ofrece servirle un poco de brandi pero mientras se estaba sirviendo la copa de brandi, Kay ve como le besan la mano a su esposo Michael y lo llaman Padrino y acto seguido le cierran la puerta en la cara, terminando así una de las mejores películas de gangsters de todos los tiempos.

Actuación y Personajes: en cuanto en este apartado tenemos unos personajes muy realistas y unas actuaciones muy sobresalientes e incluso excelentes; empezando por quien sería el Protagonista: Don Vito Corleone, interpretado por Marlon Brando, hace un papel excelentemente exitoso, con un equilibrio entre un líder tranquilo y calculador y un asesino de sangre fría, dicho reconocimiento fue reconocido en los oscares ganando el premio de mejor actuación en este apartado un Gran reconocimiento para el actor y más viendo como es de perfeccionista y dificil de tratar; ya siguiendo con quien sería el Co-Protagonista por así decirlo: Michael Corleone, interpretado por Al Pacino, hace el papel del personaje más tridimensional de la película puesto que desde un inicio no quería estar en los asuntos mafiosos de la familia por eso fue marin en la segunda guerra mundial, pero al ver que su familia estaba en peligro y estaba por perder el control de la situación entonces no tuvo otra opción que tomar las riendas de su familia y no solo resolver los problemas de su familia sino en covertirse en el nuevo capo de su familia, esta fue la actuación que puso en el mapa de la actuación del cine al actor Al Pacino tanto así que lo perfecionaría en la secuela; ya continuando con: Santino "Sonny" Corleone, interpretado por James Caan, hace el papel de un hermano mayor fuerte, temperamental y bravucon de la familia digno sucesor de la mafia cuyo papel es muy creible y muy bien explotado por parte del actor; ya siguiendo con: Tom Hagen, interpretado por Robert Duvall hace el papel de un abogado cosejero de la familia, cuyo papel lo hace de forma excelente haciendo el papel de alguien leal, pero a la vez serio y sobrio muy creible que sea abogado; ya continuando con: Freddo Corleone, interpretado por John Cazale hace el papel del tonto de la familia cuyo papel lo cumple de forma excelente haciendo el papel de alguien torpe pero amigable que apesar de su incompetencia haría cualquier cosa por la familia, destaco sobretodo su actuación en la escena del negocio en Las Vegas; ya siguiendo con la hija menor de la familia: Constanza "Connie" Corleone, interpretada por Talia Shire, hace el papel de una mujer preocupada por el maltrato de su marido, pero al final de la muerte de este lo cual lo hace un personaje complejo y con muchos problemas aunque el doblaje latino con la voz que le dieron tiende a gritar mucho; ya siguiendo con su marido: Carlo Rizzie, interpretado por Gianni Russo, hace el papel de un marido controlador, tirano, mujeriego y machista que puede ser hasta odiable pero apesar de eso puede sentir algo de lastima por la forma que lo mató Michael y a la vez algo de empatía por la forma de actuar de él puesto que su nueva familia conyugal siempre le dá la espalda; ya finalizando con los protagonistas tenemos a la esposa definitiva del Co-Protagonista: Kay Adams, interpretada por Diane Keaton, hace el papel de una chica tierna, leal y una novia inocente, consciente que su novio jamas estará en los asuntos criminales de su familia, pero al final tuvo que incumplir su promesa y va poco a poco los horrores de su familia. por lo que podemos ver tenemos un elenco de protagonistas bastante bueno y destacable pero que desgraciadamente no tenemos lo mismo con los antagonistas en los que destaco uno o dos de los cuatro que son, los dos destacables serían primero: el que sería el primer villano intermedio por así decirlo: Virgil "El Turco" Sollozo, interpretado por Al Lettieri, hace el papel de alguien que basicamente no acepta un No por respuesta siempre busca la forma de conseguir lo que quiere no le importa que sí para eso tenga que comprar policias, vender drogas o asesinar a un Don de la mafia, es el claro reflejo de lo que la familia Corleone no quiere convertirse por juntarse con drogas y un digno antagonista aunque sea intermedio; ya siguiendo con el segundo antagonista destacable que sería valga la rebundancia el otro intermedio, estoy hablando del: Oficial Mc Clausky, interpretado por Sterling Hayden, es un personaje que refleja la realidad de la Policia de Estados Unidos de esos años, corrupto y cruel, que es capaz de mezclarse con drogas y dejar morir a Don Vito Corleone, destaco su actuación como policia cuando se conocio con Michael en la escena del hospital; y continuando con los dos villanos definitivos por desgracia en la pelicula los sientes casi de relleno, empezando con: Philip Tataglia, interpretado por Victor Rendina la única participación que tuvo en toda la pelicula fue en la reunión que convocó Don Vito con las demás familias mafiosas de Nueva York y se abraza con Don Vito al hacer la paz temporal y ya, esa es toda la perticipación en toda la pelicula lo cual me parece una desgracia ya que es un personaje que pudo dar más de sí más sabiendo que el Líder de la familia que ya habían matado fuera de contexto los Corleone a su hijo mayor Bruno y tenía la protección del villano destacable de la Pelicula: Virgil Sollozo; y ya finalizando con quien sería el Antagonista definitivo: Emilio Barzini, interpretado por Richard Conte, pasa lo mismo que Philip Tataglia es algo olvidable, pero en el caso de Barzini es menos grave puesto que se le ve por lo menos en tres escenas destacables, una en la fiesta de la boda en el inicio acompañando y celebrando con Vito, otra es obviamente en la reunión que convocó Don Vito, y la tercera en el funeral de Don Vito donde habla con Salvatore Tessio, y además se siente como una amenaza más fuerte que Tataglia puesto que pone en más aprietos a nuestros protagonistas en la historia, pero otro problema que tengo con él y no entiendo era el vínculo que tenían los Barzini con los Tataglia, puesto que su guerra había comenzado cuando mataron a un hijo de los Tataglia y a un protegido narcotraficante de ellos y a su oficial de policia y lo que parecia un ofenta contra los Tataglia se convirtió automaticamente en una ofenta de los Barzini solidarisandose de manera altruista por así descirlo con los Tataglia, cosa que no entiendo, cosa que tal vez expliquen mejor en el libro, puesto que en la pelicula yo no sé; encuanto a los demás personajes secundarios secundarios, terciarios o incluso extras de la pelicula todos cumplen bien su trabajo y no hay queja alguna.',
    movie_id: movie1,
    user_id: user1
  )

review2 =
  Review.create(
    content: "Esta es una reseña.",
    movie_id: movie1,
    user_id: user2
  )

watchlist1 = Watchlist.create(title: "Para ver", user_id: user1)

watchlist2 = Watchlist.create(title: "Para ver", user_id: user2)

movie2 =
  Movie.create(
    title: "Cadena perpetua",
    description:
      "Acusado del asesinato de su mujer, Andrew Dufresne, tras ser condenado a cadena perpetua, es enviado a la prisión de Shawshank. Con el paso de los años conseguirá ganarse la confianza del director del centro y el respeto de sus compañeros presidiarios, especialmente de Red, el jefe de la mafia de los sobornos",
    year: "1994",
    length: "142",
    genre: "Crimen",
    platform: ["HBO Max"]
  )

user3 = User.create(email: "user3@example.com", password: "123456")

user4 = User.create(email: "user4@example.com", password: "123456")

rating3 = Rating.create(rate: 4, movie_id: movie2, user_id: user3)

rating4 = Rating.create(rate: 5, movie_id: movie2, user_id: user4)

review3 =
  Review.create(
    content: "Un ejemplo perfecto de porque NUNCA hay que perder la esperanza.",
    movie_id: movie2,
    user_id: user3
  )

review4 =
  Review.create(
    content: "Esta es una reseña.",
    movie_id: movie2,
    user_id: user4
  )

watchlist3 = Watchlist.create(title: "Para ver", user_id: user3)

watchlist4 = Watchlist.create(title: "Para ver", user_id: user4)

movie3 =
  Movie.create(
    title: "La lista de Schindler ",
    description:
      "Oskar Schindler, un hombre de enorme astucia y talento para las relaciones públicas, organiza un ambicioso plan para ganarse la simpatía de los nazis. Después de la invasión de Polonia por los alemanes, consigue, gracias a sus relaciones con los nazis, la propiedad de una fábrica de Cracovia. Allí emplea a cientos de operarios judíos, cuya explotación le hace prosperar rápidamente. Su gerente, también judío, es el verdadero director en la sombra, pues Schindler no tiene el menor conocimiento industrial.",
    year: "1993",
    length: "195",
    genre: "Drama",
    platform: ["HBO Max"]
  )

user5 = User.create(email: "user5@example.com", password: "123456")

user6 = User.create(email: "user6@example.com", password: "123456")

rating5 = Rating.create(rate: 4, movie_id: movie3, user_id: user5)

rating6 = Rating.create(rate: 5, movie_id: movie3, user_id: user6)

review5 =
  Review.create(
    content: "Spielberg magnum opus",
    movie_id: movie3,
    user_id: user5
  )

review6 =
  Review.create(
    content: "Esta es una reseña.",
    movie_id: movie3,
    user_id: user6
  )

watchlist5 = Watchlist.create(title: "Para ver", user_id: user5)

watchlist6 = Watchlist.create(title: "Para ver", user_id: user6)

movie4 =
  Movie.create(
    title: "Parásitos",
    description:
      "Tanto Gi Taek como su familia están sin trabajo. Cuando su hijo mayor, Gi Woo, empieza a recibir clases particulares en casa de Park, las dos familias, que tienen mucho en común pese a pertenecer a dos mundos totalmente distintos, comienzan una interrelación de resultados imprevisibles.",
    year: "2019",
    length: "132",
    genre: "Comedia",
    platform: ["Netflix"]
  )

user7 = User.create(email: "user7@example.com", password: "123456")

user8 = User.create(email: "user8@example.com", password: "123456")

rating7 = Rating.create(rate: 3, movie_id: movie4, user_id: user7)

rating8 = Rating.create(rate: 5, movie_id: movie4, user_id: user8)

review7 =
  Review.create(
    content: "Lo que amo de las historias coreanas es que son tan impredecibles que tu atención y tus emociones siempre están al full. Por algo creo que ganó los premio que ganó. Además creo que fue una gran aportación al mundo para darle apertura a series y películas coreanas. Creo que al estar del otro lado del charco, sólo sabemos o hemos visto (en lo personal) una manera distinta de vivir a comparación de la vida de la familia del barrio pobre. Es sorprendente cómo los sucesos van acomodándose, creo que la actriz principal es muy buena ya que su actuación (no soy experta pero...) me hace creer y sentir estar en la historia.",
    movie_id: movie4,
    user_id: user7
  )

review8 =
  Review.create(
    content: "Esta es una reseña.",
    movie_id: movie4,
    user_id: user8
  )

watchlist7 = Watchlist.create(title: "Para ver", user_id: user7)

watchlist8 = Watchlist.create(title: "Para ver", user_id: user8)

movie5 =
  Movie.create(
    title: "Pulp Fiction",
    description:
      "Jules y Vincent, dos asesinos a sueldo con muy pocas luces, trabajan para Marsellus Wallace. Vincent le confiesa a Jules que Marsellus le ha pedido que cuide de Mia, su mujer. Jules le recomienda prudencia porque es muy peligroso sobrepasarse con la novia del jefe. Cuando llega la hora de trabajar, ambos deben ponerse manos a la obra. Su misión: recuperar un misterioso maletín.",
    year: "1994",
    length: "154",
    genre: "Suspenso",
    platform: ["Netflix"]
  )

user9 = User.create(email: "user9@example.com", password: "123456")

user10 = User.create(email: "user10@example.com", password: "123456")

rating9 = Rating.create(rate: 4, movie_id: movie5, user_id: user9)

rating10 = Rating.create(rate: 5, movie_id: movie5, user_id: user10)

review9 =
  Review.create(
    content: "Esta es una reseña.",
    movie_id: movie5,
    user_id: user9
  )

review10 =
  Review.create(
    content: "Secuencia favorita?",
    movie_id: movie5,
    user_id: user10
  )

watchlist9 = Watchlist.create(title: "Para ver", user_id: user9)

watchlist10 = Watchlist.create(title: "Para ver", user_id: user10)

movie6 =
  Movie.create(
    title: "Forrest Gump",
    description:
      "Forrest Gump es un chico con deficiencias mentales no muy profundas y con alguna incapacidad motora que, a pesar de todo, llegará a convertirse, entre otras cosas, en un héroe durante la Guerra del Vietnam. Su persistencia y bondad le llevarán a conseguir una gran fortuna, ser objeto del clamor popular y a codearse con las más altas esferas sociales y políticas del país. Siempre sin olvidar a Jenny, su gran amor desde que era niño.",
    year: "1994",
    length: "142",
    genre: "Comedia",
    platform: ["HBO Max"]
  )

user11 = User.create(email: "user11@example.com", password: "123456")

user12 = User.create(email: "user12@example.com", password: "123456")

rating11 = Rating.create(rate: 4, movie_id: movie6, user_id: user11)

rating12 = Rating.create(rate: 3, movie_id: movie6, user_id: user12)

review11 =
  Review.create(
    content: "La película más repetida de toda la historia?",
    movie_id: movie6,
    user_id: user11
  )

review12 =
  Review.create(
    content: "Esta es una reseña.",
    movie_id: movie6,
    user_id: user12
  )

watchlist11 = Watchlist.create(title: "Para ver", user_id: user11)

watchlist12 = Watchlist.create(title: "Para ver", user_id: user12)

movie7 =
  Movie.create(
    title: "Cinema Paradiso",
    description:
      "En un pequeño pueblo siciliano durante los años previos a la llegada de la televisión (justo al finalizar la Segunda Guerra Mundial) el joven Toto vivía fascinado por el cine. Toto trata de entablar amistad con Alfredo, el proyeccionista del cine local, una persona muy irritable pero con un gran corazón. Todos estos hechos se presentan en forma de nostálgicos recuerdos de Toto que ha crecido hasta convertirse en un cineasta de éxito, y que revive a su infancia cuando recibe la noticia de que Alfredo ha muerto.",
    year: "1998",
    length: "155",
    genre: "Drama",
    platform: ["HBO Max"]
  )

user13 = User.create(email: "user13@example.com", password: "123456")

user14 = User.create(email: "user14@example.com", password: "123456")

rating13 = Rating.create(rate: 4, movie_id: movie7, user_id: user13)

rating14 = Rating.create(rate: 2, movie_id: movie7, user_id: user14)

review13 =
  Review.create(
    content: "Esta es una reseña.",
    movie_id: movie7,
    user_id: user13
  )

review14 =
  Review.create(
    content: "Recomiendo la versión original..",
    movie_id: movie7,
    user_id: user14
  )

watchlist13 = Watchlist.create(title: "Para ver", user_id: user13)

watchlist14 = Watchlist.create(title: "Para ver", user_id: user14)

movie8 =
  Movie.create(
    title: "Uno de los nuestros",
    description:
      "Henry, un niño de trece años de Brooklyn, vive fascinado con el mundo de los gángsters. Su sueño se hace realidad cuando entra a formar parte de la familia Pauline, dueña absoluta de la zona, que lo educan como un miembro más de la banda convirtiéndole en un destacado mafioso.",
    year: "1990",
    length: "146",
    genre: "Drama",
    platform: ["HBO Max"]
  )

user15 = User.create(email: "user15@example.com", password: "123456")

user16 = User.create(email: "user16@example.com", password: "123456")

rating15 = Rating.create(rate: 1, movie_id: movie8, user_id: user15)

rating16 = Rating.create(rate: 5, movie_id: movie8, user_id: user16)

review15 =
  Review.create(
    content: "Si te digo que ví esta película 50 veces..",
    movie_id: movie8,
    user_id: user15
  )

review16 =
  Review.create(
    content: "Esta es una reseña.",
    movie_id: movie8,
    user_id: user16
  )

watchlist15 = Watchlist.create(title: "Para ver", user_id: user15)

watchlist16 = Watchlist.create(title: "Para ver", user_id: user16)

movie9 =
  Movie.create(
    title: "El caballero oscuro",
    description:
      "Batman/Bruce Wayne regresa para continuar su guerra contra el crimen. Con la ayuda del teniente Jim Gordon y del Fiscal del Distrito Harvey Dent, Batman se propone destruir el crimen organizado en la ciudad de Gotham. El triunvirato demuestra su eficacia, pero, de repente, aparece Joker, un nuevo criminal que desencadena el caos y tiene aterrados a los ciudadanos.",
    year: "2008",
    length: "152",
    genre: "Drama",
    platform: ["HBO Max"]
  )

user17 = User.create(email: "user17@example.com", password: "123456")

user18 = User.create(email: "user18@example.com", password: "123456")

rating17 = Rating.create(rate: 4, movie_id: movie9, user_id: user17)

rating18 = Rating.create(rate: 5, movie_id: movie9, user_id: user18)

review17 =
  Review.create(
    content: "Todavía no me convence esta película",
    movie_id: movie9,
    user_id: user17
  )

review18 =
  Review.create(
    content: "Esta es una reseña.",
    movie_id: movie9,
    user_id: user18
  )

watchlist17 = Watchlist.create(title: "Para ver", user_id: user17)

watchlist18 = Watchlist.create(title: "Para ver", user_id: user18)

movie10 =
  Movie.create(
    title: "El bueno, el feo y el malo",
    description:
      "Durante la Guerra de Secesión, tres cazadores de recompensas se lanzan a la búsqueda de un tesoro que ninguno de los tres truhanes puede localizar sin la ayuda de los otros dos. Tuco sabe que el tesoro se encuentra en un cementerio, mientras que Joe conoce el nombre inscrito en la tumba que lo esconde. Mientras tanto, Sentenza no duda en matar a mujeres y niños para conseguir su meta. De esta forma, los tres hombres colaboran en apariencia, pero al final intentarán eliminarse mutuamente.",
    year: "1966",
    length: "161",
    genre: "Western",
    platform: ["Amazon Prime"]
  )

user19 = User.create(email: "user19@example.com", password: "123456")

user20 = User.create(email: "user20@example.com", password: "123456")

rating19 = Rating.create(rate: 4, movie_id: movie10, user_id: user19)

rating20 = Rating.create(rate: 3, movie_id: movie10, user_id: user20)

review19 =
  Review.create(
    content: "Érase una vez en el Oeste o El bueno, el feo y el malo?",
    movie_id: movie10,
    user_id: user19
  )

review20 =
  Review.create(
    content: "Esta es una reseña.",
    movie_id: movie10,
    user_id: user20
  )

watchlist19 = Watchlist.create(title: "Para ver", user_id: user19)

watchlist20 = Watchlist.create(title: "Para ver", user_id: user20)

puts("Finish seed MS.")

puts "generando seed"
titanic = Movie.create({ title: "Titanic", description: "Jack (DiCaprio), un joven artista, gana en una partida de cartas un pasaje para viajar a América en el Titanic, el transatlántico más grande y seguro jamás construido. A bordo conoce a Rose (Kate Winslet), una joven de una buena familia venida a menos que va a contraer un matrimonio de conveniencia con Cal (Billy Zane), un millonario engreído a quien sólo interesa el prestigioso apellido de su prometida. Jack y Rose se enamoran, pero el prometido y la madre de ella ponen todo tipo de trabas a su relación. Mientras, el gigantesco y lujoso transatlántico se aproxima hacia un inmenso iceberg.",
                         year: 1997, length: 195,
                         genre: "Romance", platform: ["Star+"] })
el_padrino = Movie.create({ title: "El Padrino", description: "América, años 40. Don Vito Corleone (Marlon Brando) es el respetado y temido jefe de una de las cinco familias de la mafia de Nueva York. Tiene cuatro hijos: Connie (Talia Shire), el impulsivo Sonny (James Caan), el pusilánime Fredo (John Cazale) y Michael (Al Pacino), que no quiere saber nada de los negocios de su padre. Cuando Corleone, en contra de los consejos de 'Il consigliere' Tom Hagen (Robert Duvall), se niega a participar en el negocio de las drogas, el jefe de otra banda ordena su asesinato. Empieza entonces una violenta y cruenta guerra entre las familias mafiosas. ",
                            year: 1972, length: 175,
                            genre: "Drama", platform: ["Netflix", "Star+"] })
marty = User.create(email: "martyfly@gmail.com", password: "123456")
rating_titanic = Rating.create(rate: 4, movie_id: titanic.id, user_id: marty.id)
review_titanic = Review.create(content: "muy buena peli, veanla", movie_id: titanic.id, user_id: marty.id)
watchlist_marty = Watchlist.create(title: "mis favoritas", user_id: marty.id)
markers_marty_mis_favoritas_titanic = Marker.create(seen: true, watchlist_id: watchlist_marty.id, movie_id: titanic.id)
markers_marty_mis_favoritas_el_padrino = Marker.create(seen: true, watchlist_id: watchlist_marty.id, movie_id: el_padrino.id)
el_padrino_2 = Movie.create({ title: "El Padrino. Parte II", description: "Continuación de la historia de los Corleone por medio de dos historias paralelas: la elección de Michael como jefe de los negocios familiares y los orígenes del patriarca, Don Vito Corleone, primero en su Sicilia natal y posteriormente en Estados Unidos, donde, empezando desde abajo, llegó a ser un poderosísimo jefe de la mafia de Nueva York.",
                              year: 1974, length: 200,
                              genre: "Drama", platform: ["Star+"] })
el_padrino_3 = Movie.create({ title: "El Padrino III", description: "Michael Corleone, heredero del imperio de don Vito Corleone, intenta rehabilitarse socialmente y legitimar todas las posesiones de la familia negociando con el Vaticano. Después de luchar toda su vida se encuentra cansado y centra todas sus esperanzas en encontrar un sucesor que se haga cargo de los negocios. Vincent, el hijo ilegítimo de su hermano Sonny, parece ser el elegido.",
                              year: 1990, length: 163,
                              genre: "Drama", platform: [""] })
star_wars = Movie.create({ title: "Star Wars. Episodio I. La amenaza fantasma", description: "Ambientada treinta años antes que 'La guerra de las galaxias' (1977), muestra la infancia de Darth Vader, el pasado de Obi-Wan Kenobi y el resurgimiento de los Sith, los caballeros Jedi dominados por el Lado Oscuro. La Federación de Comercio ha bloqueado el pequeño planeta de Naboo, gobernado por la joven Reina Amidala; se trata de un plan ideado por Sith Darth Sidious, que, manteniéndose en el anonimato, dirige a los neimoidianos, que están al mando de la Federación. El Jedi Qui-Gon Jinn y su aprendiz Obi-Wan Kenobi convencen a Amidala para que vaya a Coruscant, la capital de la República y sede del Consejo Jedi, y trate de neutralizar esta amenaza. Pero, al intentar esquivar el bloqueo, la nave real resulta averiada, viéndose así obligada la tripulación a aterrizar en el desértico y remoto planeta de Tatooine... ",
                           year: 1999, length: 130,
                           genre: "Ciencia Ficción", platform: ["Disney+"] })
star_wars_ii = Movie.create({ title: "Star Wars. Episodio II. El ataque de los clones", description: "Corren tenebrosos tiempos para la República, que continúa envuelta en luchas y sumida en el caos. Un movimiento separatista, formado por centenares de planetas y poderosas alianzas encabezadas por el misterioso conde Dooku, amenaza la galaxia. Ni siquiera los Jedi parecen capaces de conjurar el peligro. Este movimiento provoca el estallido de las guerras clones, que representa el principio del fin de la República. Para allanar el camino, los separatistas intentan asesinar a la senadora Padme Amidala. Para evitar futuros atentados, su seguridad es encomendada a dos caballeros Jedi...",
                              year: 2002, length: 136,
                              genre: "Ciencia Ficción", platform: ["Disney+"] })
star_wars_iii = Movie.create({ title: "Str Wars. Episodio III. La Venganza de los Sith", description: "Último capítulo de la trilogía de precuelas de Star Wars, en el que Anakin Skywalker definitivamente se pasa al lado oscuro. En el Episodio III aparece el General Grievous, un ser implacable mitad-alien mitad-robot, el líder del ejército separatista Droid. Los Sith son los amos del lado oscuro de la Fuerza y los enemigos de los Jedi. Fueron prácticamente exterminados por los Jedi hace mil años, pero esta orden del mal sobrevivió en la clandestinidad.",
                               year: 2005, length: 135,
                               genre: "Ciencia Ficción", platform: ["Disney+"] })
star_wars_iv = Movie.create({ title: "Star Wars. Episodio IV. La Guerra de las Galaxias", description: "La princesa Leia, líder del movimiento rebelde que desea reinstaurar la República en la galaxia en los tiempos ominosos del Imperio, es capturada por las Fuerzas Imperiales, capitaneadas por el implacable Darth Vader, el sirviente más fiel del Emperador. El intrépido y joven Luke Skywalker, ayudado por Han Solo, capitán de la nave espacial 'El Halcón Milenario', y los androides, R2D2 y C3PO, serán los encargados de luchar contra el enemigo e intentar rescatar a la princesa para volver a instaurar la justicia en el seno de la galaxia.",
                              year: 1977, length: 121,
                              genre: "Ciencia Ficción", platform: ["Disney+"] })
star_wars_v = Movie.create({ title: "Star Wars. Episodio V. El imperio contraataca", description: "Tras un ataque sorpresa de las tropas imperiales a las bases camufladas de la alianza rebelde, Luke Skywalker, en compañía de R2D2, parte hacia el planeta Dagobah en busca de Yoda, el último maestro Jedi, para que le enseñe los secretos de la Fuerza. Mientras, Han Solo, la princesa Leia, Chewbacca, y C3PO esquivan a las fuerzas imperiales y piden refugio al antiguo propietario del Halcón Milenario, Lando Calrissian, en la ciudad minera de Bespin, donde les prepara una trampa urdida por Darth Vader.",
                             year: 1980, length: 124,
                             genre: "Ciencia Ficción", platform: ["Disney+"] })
star_wars_vi = Movie.create({ title: "Star Wars. Episodio VI. El regreso del Jedi", description: "Para ir a Tatooine y liberar a Han Solo, Luke Skywalker y la princesa Leia deben infiltrarse en la peligrosa guarida de Jabba the Hutt, el gángster más temido de la galaxia. Una vez reunidos, el equipo recluta a tribus de Ewoks para combatir a las fuerzas imperiales en los bosques de la luna de Endor. Mientras tanto, el Emperador y Darth Vader conspiran para atraer a Luke al lado oscuro, pero el joven está decidido a reavivar el espíritu del Jedi en su padre. La guerra civil galáctica termina con un último enfrentamiento entre las fuerzas rebeldes unificadas y una segunda Estrella de la Muerte, indefensa e incompleta, en una batalla que decidirá el destino de la galaxia.",
                              year: 1983, length: 133,
                              genre: "Ciencia Ficción", platform: ["Disney"] })
paseando_a_miss_daisy = Movie.create({ title: "Paseando a Miss Daisy", description: "En la sureña Atlanta, Georgia, Miss Daisy (Jessica Tandy) es una antipática y autoritaria profesora jubilada de 72 años. Tras sufrir un accidente conduciendo su coche, su hijo (Dan Aykroyd), temiendo por la vida de su madre, contrata a un chófer negro (Morgan Freeman) para que la lleve de paseo. Al principio, la desconfianza de la anciana respecto al tranquilo conductor es absoluta.",
                                       year: 1989, length: 99,
                                       genre: "Drama", platform: ["HBOMax"] })
danza_con_lobos = Movie.create({ title: "Danza con lobos",
                                 description: "En torno a 1860, en vísperas de la Guerra de Secesión y a punto de terminar el periodo de colonización del Oeste (1785-1890), el teniente John J. Dunbar se dirige a un lejano puesto fronterizo que ha sido abandonado por los soldados. Su soledad lo impulsa a entrar en contacto con los indios sioux y, gracias a ello, conoce a 'En pie con el puño en alto', una mujer blanca que fue adoptada por la tribu cuando era niña. Poco a poco, entre Dunbar y los sioux se establece una relación de respeto y admiración mutuos.",
                                 year: 1990, length: 180,
                                 genre: "Western", platform: [""] })
top_gun = Movie.create({ title: "Top Gun", description: "La Marina de los Estados Unidos ha creado una escuela de élite para pilotos con el fin de sacar una promoción de expertos en técnicas de combate. En la academia, más conocida como Top Gun, a los mejores se les entrena para ser intrépidos y fríos al mismo tiempo, capaces de no perder los nervios en situaciones extremas y de no inmutarse al romper la barrera del sonido a los mandos de un F-14. A la escuela llega el joven Maverick, famoso por su temeraria aunque brillante forma de pilotar.",
                         year: 1986, length: 110,
                         genre: "Acción", platform: ["Star+", "HBOMax"] })
top_gun_maverick = Movie.create({ title: "Top Gun: Maverick", description: "Después de más de treinta años de servicio como uno de los mejores aviadores de la Armada, Pete 'Mavericks' Mitchel (Tom Cruise) se encuentra donde siempre quiso estar: superando los límites como un valiente piloto de pruebas y esquivando el ascenso de rango, que no le dejaría volar emplazándolo en tierra. Cuando es destinado a la academia de Top Gun con el objetivo de entrenar a los pilotos de élite para realizar una peligrosa misión en territorio enemigo, Maverick se encuentra allí con el joven teniente Bradley Bradshaw (Miles Teller), el hijo de su difunto amigo 'Goose'.",
                                  year: 2022, length: 131,
                                  genre: "Acción", platform: ["Star+"] })
anakin = User.create(email: "anakynsky@msn.com", password: "123456")
rating_star_wars = Rating.create(rate: 5, movie_id: star_wars.id, user_id: anakin.id)
review_star_wars = Review.create(content: "Gran película! La super recomiendo.",
                                 movie_id: star_wars.id, user_id: anakin.id)
watchlist_anakin = Watchlist.create(title: "Mis películas", user_id: anakin.id)
markers_anakin_mis_pelicula_star_wars = Marker.create(seen: true,
                                                      watchlist_id: watchlist_anakin.id, movie_id: star_wars.id)
markers_anakin_mis_favoritas_star_wars_v = Marker.create(seen: true,
                                                         watchlist_id: watchlist_anakin.id, movie_id: star_wars_ii.id)

puts "terminó seed"

keiber = User.create(
  email: "keiber@example.com",
  password: "123456",
  password_confirmation: "123456"
)

alex = User.create(
  email: "alex@example.com",
  password: "123456",
  password_confirmation: "123456"
)

avatar = Movie.create(
  title: "AVATAR II",
  description: "Jake Sully y Ney'tiri han formado una familia y hacen todo lo posible por permanecer juntos.
  Sin embargo, deben abandonar su hogar y explorar las regiones de Pandora cuando una antigua amenaza reaparece.",
  year: 2022,
  length: 192,
  genre: "Ciencia ficcion",
  platform: "Disney+",
)

happy = Movie.create(
  title: "Happy feet: El pingüino",
  description: "JMumble, un joven pingüino emperador, vive en la Antártida. Como otros animales de su especie, él necesita saber cantar para atraer a una pareja, pero tiene una voz horrible.
  En su lugar, Mumble debe expresarse a sí mismo y atraer a las hembras a través de su increíble talento para bailar tap.",
  year: 2006,
  length: 108,
  genre: "Infantil",
  platform: "HBOMax",
)

harry = Movie.create(
  title: "Harry Potter y la piedra filosofal",
  description: "El día de su cumpleaños, Harry Potter descubre que es hijo de dos conocidos hechiceros, de los que ha heredado poderes mágicos.
  Debe asistir a una famosa escuela de magia y hechicería, donde entabla una amistad con dos jóvenes que se convertirán en sus compañeros de aventura.",
  year: 2001,
  length: 152,
  genre: "Fantasia",
  platform: "HBOMax",
)

charlot = Movie.create(
  title: "La reina Charlotte",
  description: "La joven reina asciende a la prominencia y el poder mientras que su matrimonio con el rey Jorge da paso a una gran historia de amor.",
  year: 2023,
  length: 6,
  genre: "Romance",
  platform: "Netflix",
)

demon = Movie.create(
  title: "Demon Slayer",
  description: "Tanjiro emprende un viaje arriesgado para buscar una cura a la maldición de su hermana y vengar a su familia asesinada por un demonio.",
  year: 2019,
  length: 112,
  genre: "Anime",
  platform: "Netflix",
)

spider = Movie.create(
  title: "Spider-Man: a través del Spider-Verso",
  description: "Después de reunirse con Gwen Stacy, el amigable vecino de tiempo completo de Brooklyn Spiderman, es lanzado a través del multiverso, donde se encuentra a un equipo de gente araña encomendada con proteger su mera existencia.",
  year: 2023,
  length: 150,
  genre: "Accion/Aventura",
  platform: "Disaney+",
)

deadpool = Movie.create(
  title: "Deadpool 2",
  description: "Deadpool tiene que proteger a un mutante adolescente de Cable, un soldado del futuro genéticamente modificado, pero Deadpool no está solo: otros superhéroes igual de chiflados que él unen sus fuerzas contra el perverso Cable.",
  year: 2018,
  length: 119,
  genre: "Accion/comedia",
  platform: "HBOMax",
)

guardianes = Movie.create(
  title: "Guardianes de la Galaxia",
  description: "Aunque sigue afectado por la pérdida de Gamora, Peter Quill debe reunir a su equipo para defender el universo de una nueva amenaza o, en caso de fracasar, será el final de los Guardianes.",
  year: 2023,
  length: 150,
  genre: "Ciencia ficcion",
  platform: "Disney+",
)

sirenita = Movie.create(
  title: "La sirenita",
  description: "Anhelando conocer el mundo más allá del mar, una joven sirena visita la superficie y se enamora del apuesto príncipe Eric. Siguiendo su corazón, hace un trato con la malvada bruja del mar, Úrsula, para experimentar la vida en tierra.",
  year: 2023,
  length: 135,
  genre: "Fantasia",
  platform: "Disney+",
)

shrek = Movie.create(
  title: "Shrek",
  description: "es un gran ogro verde que vive en un pantano. Allí reside felizmente, asustando a los humanos que se aventuran o se pierden, hasta que un día descubre que el lugar ha sido invadido por personajes de cuentos de hadas que han sido expulsados de la comarca por el villano Lord Farquaad.",
  year: 2001,
  length: 90,
  genre: "Fantasia",
  platform: "HBOMax",
)

rating_spider = Rating.create(rate: 5, movie_id: spider.id, user_id: alex.id)
review_spider = Review.create(content: "La mejor pelicula animada", movie_id: spider.id, user_id: alex.id)
watchlist_alex = Watchlist.create(title: "Mis favoritas xd", user_id: alex.id)
markers_alex_mis_favoritas_spider = Marker.create(seen: true, watchlist_id: watchlist_alex.id, movie_id: spider.id)
markers_alex_mis_favoritas_sirenita = Marker.create(seen: true, watchlist_id: watchlist_alex.id, movie_id: sirenita.id)

rating_guardianes = Rating.create(rate: 5, movie_id: guardianes.id, user_id: keiber.id)
review_guardianes = Review.create(content: "Tremendo peliculon", movie_id: guardianes.id, user_id: keiber.id)
watchlist_keiber = Watchlist.create(title: "Las mejores", user_id: keiber.id)
markers_keiber_las_mejores_guardianes = Marker.create(seen: true, watchlist_id: watchlist_keiber.id, movie_id: guardianes.id)
markers_keiber_las_mejores_demond = Marker.create(seen: true, watchlist_id: watchlist_keiber.id, movie_id: demon.id)

puts "seed lista"

puts("Seeds...")

movie1 =
  Movie.create(
    title: "Sin City: La Mujer Por La Que Mataria",
    description: "En la historia central, Dwight McCarthy lucha con sus demonios internos y trata de mantener el control hasta que su ex amante, Ava Lord, regresa y quiere su ayuda para escapar de su esposo abusivo. No hay justicia sin pecado.",
    year: 2014,
    length: 102,
    genre: "Suspenso",
    platform: %w[Disney+ HBO]
  )

movie2 =
  Movie.create(
    title: "El Asombroso Hombre Araña",
    description: "Peter Parker, un estudiante de secundaria marginado, es mordido por una araña radiactiva y adquiere superpoderes. Pronto, se ve obligado a usar sus habilidades para luchar contra un enemigo monstruoso.",
    year: 2012,
    length: 129,
    genre: "Acción",
    platform: %w[Disney+ AmazonPrime]
  )

movie3 =
    Movie.create(
      title: "Thor",
      description: "The Mighty Thor es un guerrero poderoso pero arrogante cuyas acciones imprudentes reavivan una guerra antigua. Thor es arrojado a la Tierra y obligado a vivir entre humanos como castigo. Una vez aquí, Thor aprende lo que se necesita para ser un verdadero héroe.",
      year: 2011,
      length: 92,
      genre: "Acción",
      platform: %w[Disney+ AmazonPrime]
  )

  movie4 =
    Movie.create(
      title: "Airbender: El Último Guerrero",
      description: "Un niño extraordinario con poderes increíbles intenta poner fin al antiguo conflicto entre las cuatro naciones: Aire, Agua, Tierra y Fuego.",
      year: 2010,
      length: 86,
      genre: "Fantasía",
      platform: %w[Netflix]
)

movie5 =
  Movie.create(
    title: "Scott Pilgrim Contra El Mundo",
    description: "Scott Pilgrim conoce a Ramona y se enamora instantáneamente de ella. Pero cuando conoce a uno de sus ex en una competencia de bandas, se da cuenta de que tiene que lidiar con sus siete ex para cortejarla.",
    year: 2010,
    length: 112,
    genre: "Comedy",
    platform: %w[Netflix]
)

movie6 =
  Movie.create(
    title: "Green Zone: Distrito Protegido",
    description: "Durante la ocupación de Bagdad liderada por Estados Unidos en los primeros días de la guerra de Irak, el oficial Roy Miller dirige un equipo de profesionales para encontrar armas de destrucción masiva.",
    year: 2010,
    length: 93,
    genre: "Guerra/Acción",
    platform: %w[AmazonPrime]
)

movie7 =
  Movie.create(
    title: "Temporada de Brujas",
    description: "Behmen, un cruzado, recibe la orden de transportar a una supuesta bruja a una abadía remota. Durante su viaje, Behmen y los soldados descubren el secreto de la mujer y conocen los peligros que les acechan.",
    year: 2011,
    length: 95,
    genre: "Ciencia Ficción",
    platform: %w[AmazonPrime]
)

movie8 =
  Movie.create(
    title: "The Town (Ciudad de Ladrones)",
    description: "Mientras planifica su próximo golpe, Doug MacRay (Ben Affleck), un atracador de bancos de Boston, tiene que esforzarse por controlar sus sentimientos por Claire (Rebecca Hall), la directora de uno de los bancos que atracó. Al mismo tiempo, intenta esquivar al agente del FBI (Jon Hamm) que le sigue los pasos.",
    year: 2010,
    length: 120,
    genre: "Acción",
    platform: %w[HBO]
)

movie9 =
  Movie.create(
    title: "La saga Crepúsculo: Eclipse",
    description: "Tercera entrega de la popular saga de vampiros basada en las novelas de Stephenie Meyer. Bella (Kristen Stewart) tendrá que elegir entre Edward (Robert Pattinson) y Jacob (Taylor Lautner). La ciudad de Seattle es devastada por una serie de misteriosos asesinatos que va en aumento, mientras una vampiresa busca venganza. Bella debe elegir entre su amor por Edward y su amistad con Jacob, consciente de que su decisión puede originar una batalla entre vampiros y licántropos. Rodeada de peligros y con su graduación acercándose, ahora se enfrenta a la decisión más importante de su vida",
    year: 2010,
    length: 124,
    genre: "Fantasía",
    platform: %w[DisneyPlus]
)

movie10 =
  Movie.create(
    title: "El Origen",
    description: "Un ladrón que roba secretos corporativos mediante el uso de tecnología para compartir sueños se le asigna la tarea inversa de plantar una idea en la mente de un director ejecutivo.",
    year: 2010,
    length: 148,
    genre: "Acción",
    platform: %w[HBO Netflix]
)

charlie = User.create(email: "charlie@gmail.com", password: "123456")
armando = User.create(email: "armando@gmail.com", password: "123456")


rating_Sin_City = Rating.create(rate: 9, movie_id: movie1.id, user_id: charlie.id)
rating_Hombre_Araña = Rating.create(rate: 2, movie_id: movie2.id, user_id: armando.id)

review_Sin_City = Review.create(content: "¡Una película policíaca perfecta y súper elegante! La película te involucra cada segundo. Thriller, Acción, Crimen, ¡todos ustedes llegan aquí! ¡El alto contraste, el fondo oscuro y los increíbles sonidos completan la obra maestra", movie_id: movie1.id, user_id: charlie.id)
review_Hombre_Araña = Review.create(content: "Esta es la peor película de historietas que he visto. Al menos puedo disfrutar un poco irónicamente de hacer pedazos a Daredevil (la película, por supuesto) o Los Cuatro Fantásticos, o incluso TASM 2, pero esto es solo una experiencia miserable. ¿Cómo pasamos de la brillantez cursi de Spider-Man 3 a esto? Hay una escena en toda esta película que disfruté. Uno. Y ahí es cuando casi se convierte en un villano. El peter parker de Andrew en esto es un tipo llorón que anda en patineta, el traje se ve horrible y la trama es tan tonta. El hombre lagarto quiere convertir a las personas en hombres lagarto. ¿Por qué? No lo sé, porque la película ni siquiera TRATA de justificarlo. Es solo 'esto es lo que está pasando. Afrontar.' Esta es, sin ironía, una de mis películas más odiadas y, sinceramente, no entiendo cómo todos piensan que es buena, o incluso que está bien. Esta película es horrible.", movie_id: movie2.id, user_id: armando.id)

watchlist_charlie = Watchlist.create(title: "las mejores", user_id: charlie.id)
watchlist_armando = Watchlist.create(title: "para ver con amigos", user_id: armando.id)

markers_charlie_lasmejores = Marker.create(seen: true, watchlist_id: watchlist_charlie.id, movie_id: movie1.id)
markers_charlie_lasmejores = Marker.create(seen: true, watchlist_id: watchlist_charlie.id, movie_id: movie3.id)

markers_armando_ver_con_amigos = Marker.create(seen: true, watchlist_id: watchlist_armando.id, movie_id: movie4.id)
markers_armando_ver_con_amigos = Marker.create(seen: true, watchlist_id: watchlist_armando.id, movie_id: movie5.id)

puts "seeds Charlie finish"
