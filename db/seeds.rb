# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

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
