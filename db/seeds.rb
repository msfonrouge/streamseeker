require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Marker.destroy_all
Watchlist.destroy_all
Review.destroy_all
Movie.destroy_all
User.destroy_all

puts("Seed MS..")

movie1 =
  Movie.create(
    title: "El padrino",
    description:
      "Don Vito Corleone, conocido dentro de los círculos del hampa como 'El Padrino', es el patriarca de una de las cinco familias que ejercen el mando de la Cosa Nostra en Nueva York en los años cuarenta. Don Corleone tiene cuatro hijos: una chica, Connie, y tres varones; Sonny, Michael y Fredo. Cuando el Padrino reclina intervenir en el negocio de estupefacientes, empieza una cruenta lucha de violentos episodios entre las distintas familias del crimen organizado.",
    year: 1972,
    length: 175,
    genre: "Drama",
    platform: "Netflix Star+"
  )
photo_movie1 =
  URI.open(
    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRFnUIGQQtTzUxD9Y19nl3uum8SZA6TSA8eWnJoPy1UdHVF8fDn"
  )
movie1.photo.attach(
  io: photo_movie1,
  filename: "movie1.png",
  content_type: "image/png"
)
movie1.save!

principal_user = User.create(email: "user@example.com", password: "123456")
photo_principal_user =
  URI.open(
    "https://i.pinimg.com/originals/2c/e9/c3/2ce9c35cc8d84b3107f764ea3ad9e135.jpg"
  )
principal_user.photo.attach(
  io: photo_principal_user,
  filename: "principal_user.png",
  content_type: "image/png"
)
principal_user.save!

user1 = User.create(email: "user1@lewagon.com", password: "123456")
photo_user1 =
  URI.open(
    "https://i.pinimg.com/originals/36/cf/17/36cf17e353812867462b88b7006e085f.jpg"
  )
user1.photo.attach(
  io: photo_user1,
  filename: "user1.png",
  content_type: "image/png"
)
user1.save!

user2 = User.create(email: "user2@example.com", password: "123456")
photo_user2 = URI.open("https://avatars.githubusercontent.com/u/129775423?v=4")
user2.photo.attach(
  io: photo_user2,
  filename: "user2.png",
  content_type: "image/png"
)
user2.save!

review1 =
  Review.create(
    content: "La Historia o el Argumento:** nos ambienta en el año 1945",
    rate: 2,
    movie_id: movie1.id,
    user_id: user1.id
  )

review2 =
  Review.create(
    content: "Esta es una reseña.",
    rate: 4,
    movie_id: movie1.id,
    user_id: user2.id
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
    platform: "HBO Max"
  )
photo_movie2 =
  URI.open(
    "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTv45qUNctbXnWYx3U-2nHwbIR7WGQKZQPMCayuvaq3ZLO8XlEA"
  )
movie2.photo.attach(
  io: photo_movie2,
  filename: "movie2.png",
  content_type: "image/png"
)
movie2.save!

user3 = User.create(email: "user3@example.com", password: "123456")

user4 = User.create(email: "user4@example.com", password: "123456")

review3 =
  Review.create(
    content: "Un ejemplo perfecto de porque NUNCA hay que perder la esperanza.",
    rate: 4,
    movie_id: movie2.id,
    user_id: user3.id
  )

review4 =
  Review.create(
    content: "Esta es una reseña.",
    rate: 3,
    movie_id: movie2.id,
    user_id: user4.id
  )

watchlist3 = Watchlist.create(title: "Para ver", user_id: user3)

watchlist4 = Watchlist.create(title: "Para ver", user_id: user4)

movie3 =
  Movie.create(
    title: "La lista de Schindler",
    description:
      "Oskar Schindler, un hombre de enorme astucia y talento para las relaciones públicas, organiza un ambicioso plan para ganarse la simpatía de los nazis. Después de la invasión de Polonia por los alemanes, consigue, gracias a sus relaciones con los nazis, la propiedad de una fábrica de Cracovia. Allí emplea a cientos de operarios judíos, cuya explotación le hace prosperar rápidamente. Su gerente, también judío, es el verdadero director en la sombra, pues Schindler no tiene el menor conocimiento industrial.",
    year: "1993",
    length: "195",
    genre: "Drama",
    platform: "HBO Max"
  )
photo_movie3 =
  URI.open(
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCDJCIbCC4DQiu4nWZDx4jiYJML9K0vub2Odnmvjy6E8u2IwjS"
  )
movie3.photo.attach(
  io: photo_movie3,
  filename: "movie3.png",
  content_type: "image/png"
)
movie3.save!

user5 = User.create(email: "user5@example.com", password: "123456")

user6 = User.create(email: "user6@example.com", password: "123456")

review5 =
  Review.create(
    content: "Spielberg magnum opus",
    rate: 4,
    movie_id: movie3.id,
    user_id: user5.id
  )

review6 =
  Review.create(
    content: "Esta es una reseña.",
    rate: 3,
    movie_id: movie3.id,
    user_id: user6.id
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
    platform: "Netflix"
  )
photo_movie4 =
  URI.open(
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9QDUD6KEnFIQDJYJ_3Wdr51hQzDKLk13fapk1bUBrre3ysog0"
  )
movie4.photo.attach(
  io: photo_movie4,
  filename: "movie4.png",
  content_type: "image/png"
)
movie4.save!

user7 = User.create(email: "user7@example.com", password: "123456")

user8 = User.create(email: "user8@example.com", password: "123456")

review7 =
  Review.create(
    content:
      "Lo que amo de las historias coreanas es que son tan impredecibles que tu atención y tus emociones siempre están al full. Por algo creo que ganó los premio que ganó. Además creo que fue una gran aportación al mundo para darle apertura a series y películas coreanas. Creo que al estar del otro lado del charco, sólo sabemos o hemos visto (en lo personal) una manera distinta de vivir a comparación de la vida de la familia del barrio pobre. Es sorprendente cómo los sucesos van acomodándose, creo que la actriz principal es muy buena ya que su actuación (no soy experta pero...) me hace creer y sentir estar en la historia.",
    rate: 4,
    movie_id: movie4.id,
    user_id: user7.id
  )

review8 =
  Review.create(
    content: "Esta es una reseña.",
    rate: 2,
    movie_id: movie4.id,
    user_id: user8.id
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
    platform: "Netflix"
  )
photo_movie5 =
  URI.open(
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7BtOmy_PoeUro7f1tfJ8BXFiermp-2Ynm4KMYYBXKRfADZDD3"
  )
movie5.photo.attach(
  io: photo_movie5,
  filename: "movie5.png",
  content_type: "image/png"
)
movie5.save!

user9 = User.create(email: "user9@example.com", password: "123456")

user10 = User.create(email: "user10@example.com", password: "123456")

review9 =
  Review.create(
    content: "Esta es una reseña.",
    rate: 2,
    movie_id: movie5.id,
    user_id: user9.id
  )

review10 =
  Review.create(
    content: "Secuencia favorita?",
    rate: 3,
    movie_id: movie5.id,
    user_id: user10.id
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
    platform: "HBO Max"
  )
photo_movie6 =
  URI.open("https://pics.filmaffinity.com/Forrest_Gump-598998346-large.jpg")
movie6.photo.attach(
  io: photo_movie6,
  filename: "movie6.png",
  content_type: "image/png"
)
movie6.save!

user11 = User.create(email: "user11@example.com", password: "123456")

user12 = User.create(email: "user12@example.com", password: "123456")

review11 =
  Review.create(
    content: "La película más repetida de toda la historia?",
    rate: 1,
    movie_id: movie6.id,
    user_id: user11.id
  )

review12 =
  Review.create(
    content: "Esta es una reseña.",
    rate: 3,
    movie_id: movie6.id,
    user_id: user12.id
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
    platform: "HBO Max"
  )
photo_movie7 =
  URI.open("https://pics.filmaffinity.com/Cinema_Paradiso-115567400-large.jpg")
movie7.photo.attach(
  io: photo_movie7,
  filename: "movie7.png",
  content_type: "image/png"
)
movie7.save!

user13 = User.create(email: "user13@example.com", password: "123456")

user14 = User.create(email: "user14@example.com", password: "123456")

review13 =
  Review.create(
    content: "Esta es una reseña.",
    rate: 4,
    movie_id: movie7.id,
    user_id: user13.id
  )

review14 =
  Review.create(
    content: "Recomiendo la versión original..",
    rate: 2,
    movie_id: movie7.id,
    user_id: user14.id
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
    platform: "HBO Max"
  )
photo_movie8 =
  URI.open(
    "https://es.web.img2.acsta.net/medias/nmedia/18/67/70/14/20077949.jpg"
  )
movie8.photo.attach(
  io: photo_movie8,
  filename: "movie8.png",
  content_type: "image/png"
)
movie8.save!

user15 = User.create(email: "user15@example.com", password: "123456")

user16 = User.create(email: "user16@example.com", password: "123456")

review15 =
  Review.create(
    content: "Si te digo que ví esta película 50 veces..",
    rate: 5,
    movie_id: movie8.id,
    user_id: user15.id
  )

review16 =
  Review.create(
    content: "Esta es una reseña.",
    rate: 1,
    movie_id: movie8.id,
    user_id: user16.id
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
    platform: "HBO Max"
  )
photo_movie9 =
  URI.open(
    "https://www.themoviedb.org/t/p/w500/8QDQExnfNFOtabLDKqfDQuHDsIg.jpg"
  )
movie9.photo.attach(
  io: photo_movie9,
  filename: "movie9.png",
  content_type: "image/png"
)
movie9.save!

user17 = User.create(email: "user17@example.com", password: "123456")
photo_user17 =
  URI.open(
    "https://i.pinimg.com/236x/66/fe/5d/66fe5d802f424054e69bea16f3a0181e--batman-returns-batman-and-catwoman.jpg"
  )
user17.photo.attach(
  io: photo_user17,
  filename: "user17.png",
  content_type: "image/png"
)
user17.save!

user18 = User.create(email: "user18@example.com", password: "123456")

review17 =
  Review.create(
    content: "Todavía no me convence esta película",
    rate: 2,
    movie_id: movie9.id,
    user_id: user17.id
  )

review18 =
  Review.create(
    content: "Esta es una reseña.",
    rate: 1,
    movie_id: movie9.id,
    user_id: user18.id
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
    platform: "Amazon Prime"
  )
photo_movie10 =
  URI.open(
    "https://pics.filmaffinity.com/El_bueno_el_feo_y_el_malo-589330734-large.jpg"
  )
movie10.photo.attach(
  io: photo_movie10,
  filename: "movie10.png",
  content_type: "image/png"
)
movie10.save!

user19 = User.create(email: "user19@example.com", password: "123456")

user20 = User.create(email: "user20@example.com", password: "123456")

review19 =
  Review.create(
    content: "Érase una vez en el Oeste o El bueno, el feo y el malo?",
    rate: 2,
    movie_id: movie10.id,
    user_id: user19.id
  )

review20 =
  Review.create(
    content: "Esta es una reseña.",
    rate: 3,
    movie_id: movie10.id,
    user_id: user20.id
  )

watchlist19 = Watchlist.create(title: "Para ver", user_id: user19)

watchlist20 = Watchlist.create(title: "Para ver", user_id: user20)

puts("Finish seed MS.")

puts "generando seed"
titanic =
  Movie.create(
    {
      title: "Titanic",
      description:
        "Jack (DiCaprio), un joven artista, gana en una partida de cartas un pasaje para viajar a América en el Titanic, el transatlántico más grande y seguro jamás construido. A bordo conoce a Rose (Kate Winslet), una joven de una buena familia venida a menos que va a contraer un matrimonio de conveniencia con Cal (Billy Zane), un millonario engreído a quien sólo interesa el prestigioso apellido de su prometida. Jack y Rose se enamoran, pero el prometido y la madre de ella ponen todo tipo de trabas a su relación. Mientras, el gigantesco y lujoso transatlántico se aproxima hacia un inmenso iceberg.",
      year: 1997,
      length: 195,
      genre: "Romance",
      platform: "Star+"
    }
  )
photo_titanic =
  URI.open(
    "https://cdn.shopify.com/s/files/1/0089/5326/6261/products/1-100994-1_480x480.jpg?v=1569215887"
  )
titanic.photo.attach(
  io: photo_titanic,
  filename: "titanic.png",
  content_type: "image/png"
)
titanic.save!
marty = User.create(email: "martyfly@gmail.com", password: "123456")
review_titanic =
  Review.create(
    content: "muy buena peli, veanla",
    rate: 5,
    movie_id: titanic.id,
    user_id: marty.id
  )
watchlist_marty = Watchlist.create(title: "mis favoritas", user_id: marty.id)
markers_marty_mis_favoritas_titanic =
  Marker.create(
    seen: true,
    watchlist_id: watchlist_marty.id,
    movie_id: titanic.id
  )
el_padrino_2 =
  Movie.create(
    {
      title: "El Padrino. Parte II",
      description:
        "Continuación de la historia de los Corleone por medio de dos historias paralelas: la elección de Michael como jefe de los negocios familiares y los orígenes del patriarca, Don Vito Corleone, primero en su Sicilia natal y posteriormente en Estados Unidos, donde, empezando desde abajo, llegó a ser un poderosísimo jefe de la mafia de Nueva York.",
      year: 1974,
      length: 200,
      genre: "Drama",
      platform: "Star+"
    }
  )
photo_el_padrino_2 =
  URI.open(
    "https://images-na.ssl-images-amazon.com/images/S/pv-target-images/aef2c14fa2092344f51a7ed10a3950963648c9d0e3348c683bc7cd5d7f040c8f._RI_TTW_.jpg"
  )
el_padrino_2.photo.attach(
  io: photo_el_padrino_2,
  filename: "el_padrino_2.png",
  content_type: "image/png"
)
el_padrino_2.save!
el_padrino_3 =
  Movie.create(
    {
      title: "El Padrino III",
      description:
        "Michael Corleone, heredero del imperio de don Vito Corleone, intenta rehabilitarse socialmente y legitimar todas las posesiones de la familia negociando con el Vaticano. Después de luchar toda su vida se encuentra cansado y centra todas sus esperanzas en encontrar un sucesor que se haga cargo de los negocios. Vincent, el hijo ilegítimo de su hermano Sonny, parece ser el elegido.",
      year: 1990,
      length: 163,
      genre: "Drama",
      platform: ""
    }
  )
photo_el_padrino_3 =
  URI.open(
    "https://es.web.img3.acsta.net/medias/nmedia/18/68/09/69/20420487.jpg"
  )
el_padrino_3.photo.attach(
  io: photo_el_padrino_3,
  filename: "el_padrino_3.png",
  content_type: "image/png"
)
el_padrino_3.save!
star_wars =
  Movie.create(
    {
      title: "Star Wars. Episodio I. La amenaza fantasma",
      description:
        "Ambientada treinta años antes que 'La guerra de las galaxias' (1977), muestra la infancia de Darth Vader, el pasado de Obi-Wan Kenobi y el resurgimiento de los Sith, los caballeros Jedi dominados por el Lado Oscuro. La Federación de Comercio ha bloqueado el pequeño planeta de Naboo, gobernado por la joven Reina Amidala; se trata de un plan ideado por Sith Darth Sidious, que, manteniéndose en el anonimato, dirige a los neimoidianos, que están al mando de la Federación. El Jedi Qui-Gon Jinn y su aprendiz Obi-Wan Kenobi convencen a Amidala para que vaya a Coruscant, la capital de la República y sede del Consejo Jedi, y trate de neutralizar esta amenaza. Pero, al intentar esquivar el bloqueo, la nave real resulta averiada, viéndose así obligada la tripulación a aterrizar en el desértico y remoto planeta de Tatooine... ",
      year: 1999,
      length: 130,
      genre: "Ciencia Ficción",
      platform: "Disney+"
    }
  )
photo_star_wars =
  URI.open(
    "https://m.media-amazon.com/images/M/MV5BYTRhNjcwNWQtMGJmMi00NmQyLWE2YzItODVmMTdjNWI0ZDA2XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg"
  )
star_wars.photo.attach(
  io: photo_star_wars,
  filename: "star_wars.png",
  content_type: "image/png"
)
star_wars.save!
star_wars_ii =
  Movie.create(
    {
      title: "Star Wars. Episodio II. El ataque de los clones",
      description:
        "Corren tenebrosos tiempos para la República, que continúa envuelta en luchas y sumida en el caos. Un movimiento separatista, formado por centenares de planetas y poderosas alianzas encabezadas por el misterioso conde Dooku, amenaza la galaxia. Ni siquiera los Jedi parecen capaces de conjurar el peligro. Este movimiento provoca el estallido de las guerras clones, que representa el principio del fin de la República. Para allanar el camino, los separatistas intentan asesinar a la senadora Padme Amidala. Para evitar futuros atentados, su seguridad es encomendada a dos caballeros Jedi...",
      year: 2002,
      length: 136,
      genre: "Ciencia Ficción",
      platform: "Disney+"
    }
  )
photo_star_wars_ii =
  URI.open(
    "https://static.wikia.nocookie.net/esstarwars/images/7/7c/Episode_two_poster.jpg/revision/latest?cb=20060405025053"
  )
star_wars_ii.photo.attach(
  io: photo_star_wars_ii,
  filename: "star_wars_ii.png",
  content_type: "image/png"
)
star_wars_ii.save!
star_wars_iii =
  Movie.create(
    {
      title: "Star Wars. Episodio III. La Venganza de los Sith",
      description:
        "Último capítulo de la trilogía de precuelas de Star Wars, en el que Anakin Skywalker definitivamente se pasa al lado oscuro. En el Episodio III aparece el General Grievous, un ser implacable mitad-alien mitad-robot, el líder del ejército separatista Droid. Los Sith son los amos del lado oscuro de la Fuerza y los enemigos de los Jedi. Fueron prácticamente exterminados por los Jedi hace mil años, pero esta orden del mal sobrevivió en la clandestinidad.",
      year: 2005,
      length: 135,
      genre: "Ciencia Ficción",
      platform: "Disney+"
    }
  )
photo_star_wars_iii =
  URI.open(
    "https://static.wikia.nocookie.net/esstarwars/images/f/fa/Ep3_poster.jpg/revision/latest?cb=20060407220934"
  )
star_wars_iii.photo.attach(
  io: photo_star_wars_iii,
  filename: "star_wars_iii.png",
  content_type: "image/png"
)
star_wars_iii.save!
star_wars_iv =
  Movie.create(
    {
      title: "Star Wars. Episodio IV. La Guerra de las Galaxias",
      description:
        "La princesa Leia, líder del movimiento rebelde que desea reinstaurar la República en la galaxia en los tiempos ominosos del Imperio, es capturada por las Fuerzas Imperiales, capitaneadas por el implacable Darth Vader, el sirviente más fiel del Emperador. El intrépido y joven Luke Skywalker, ayudado por Han Solo, capitán de la nave espacial 'El Halcón Milenario', y los androides, R2D2 y C3PO, serán los encargados de luchar contra el enemigo e intentar rescatar a la princesa para volver a instaurar la justicia en el seno de la galaxia.",
      year: 1977,
      length: 121,
      genre: "Ciencia Ficción",
      platform: "Disney+"
    }
  )
photo_star_wars_iv =
  URI.open(
    "https://images.cdn1.buscalibre.com/fit-in/360x360/93/d1/93d145bf27fca2074a89b8f64250328c.jpg"
  )
star_wars_iv.photo.attach(
  io: photo_star_wars_iv,
  filename: "star_wars_iv.png",
  content_type: "image/png"
)
star_wars_iv.save!
star_wars_v =
  Movie.create(
    {
      title: "Star Wars. Episodio V. El imperio contraataca",
      description:
        "Tras un ataque sorpresa de las tropas imperiales a las bases camufladas de la alianza rebelde, Luke Skywalker, en compañía de R2D2, parte hacia el planeta Dagobah en busca de Yoda, el último maestro Jedi, para que le enseñe los secretos de la Fuerza. Mientras, Han Solo, la princesa Leia, Chewbacca, y C3PO esquivan a las fuerzas imperiales y piden refugio al antiguo propietario del Halcón Milenario, Lando Calrissian, en la ciudad minera de Bespin, donde les prepara una trampa urdida por Darth Vader.",
      year: 1980,
      length: 124,
      genre: "Ciencia Ficción",
      platform: "Disney+"
    }
  )
photo_star_wars_v =
  URI.open(
    "https://i.pinimg.com/originals/10/c2/f2/10c2f2302f9c8d618e6f2258eda4be3b.jpg"
  )
star_wars_v.photo.attach(
  io: photo_star_wars_v,
  filename: "star_wars_v.png",
  content_type: "image/png"
)
star_wars_v.save!
star_wars_vi =
  Movie.create(
    {
      title: "Star Wars. Episodio VI. El regreso del Jedi",
      description:
        "Para ir a Tatooine y liberar a Han Solo, Luke Skywalker y la princesa Leia deben infiltrarse en la peligrosa guarida de Jabba the Hutt, el gángster más temido de la galaxia. Una vez reunidos, el equipo recluta a tribus de Ewoks para combatir a las fuerzas imperiales en los bosques de la luna de Endor. Mientras tanto, el Emperador y Darth Vader conspiran para atraer a Luke al lado oscuro, pero el joven está decidido a reavivar el espíritu del Jedi en su padre. La guerra civil galáctica termina con un último enfrentamiento entre las fuerzas rebeldes unificadas y una segunda Estrella de la Muerte, indefensa e incompleta, en una batalla que decidirá el destino de la galaxia.",
      year: 1983,
      length: 133,
      genre: "Ciencia Ficción",
      platform: "Disney"
    }
  )
photo_star_wars_vi =
  URI.open(
    "https://static.wikia.nocookie.net/esstarwars/images/b/b2/ReturnOfTheJediPoster1983.jpg/revision/latest?cb=20200623214315"
  )
star_wars_vi.photo.attach(
  io: photo_star_wars_vi,
  filename: "star_wars_vi.png",
  content_type: "image/png"
)
star_wars_vi.save!
paseando_a_miss_daisy =
  Movie.create(
    {
      title: "Paseando a Miss Daisy",
      description:
        "En la sureña Atlanta, Georgia, Miss Daisy (Jessica Tandy) es una antipática y autoritaria profesora jubilada de 72 años. Tras sufrir un accidente conduciendo su coche, su hijo (Dan Aykroyd), temiendo por la vida de su madre, contrata a un chófer negro (Morgan Freeman) para que la lleve de paseo. Al principio, la desconfianza de la anciana respecto al tranquilo conductor es absoluta.",
      year: 1989,
      length: 99,
      genre: "Drama",
      platform: "HBO Max"
    }
  )
photo_paseando_a_miss_daisy =
  URI.open(
    "https://pics.filmaffinity.com/Paseando_a_Miss_Daisy-590168870-large.jpg"
  )
paseando_a_miss_daisy.photo.attach(
  io: photo_paseando_a_miss_daisy,
  filename: "paseando_a_miss_daisy.png",
  content_type: "image/png"
)
paseando_a_miss_daisy.save!
danza_con_lobos =
  Movie.create(
    {
      title: "Danza con lobos",
      description:
        "En torno a 1860, en vísperas de la Guerra de Secesión y a punto de terminar el periodo de colonización del Oeste (1785-1890), el teniente John J. Dunbar se dirige a un lejano puesto fronterizo que ha sido abandonado por los soldados. Su soledad lo impulsa a entrar en contacto con los indios sioux y, gracias a ello, conoce a 'En pie con el puño en alto', una mujer blanca que fue adoptada por la tribu cuando era niña. Poco a poco, entre Dunbar y los sioux se establece una relación de respeto y admiración mutuos.",
      year: 1990,
      length: 180,
      genre: "Western",
      platform: ""
    }
  )
photo_danza_con_lobos =
  URI.open(
    "https://static.wikia.nocookie.net/doblaje/images/3/32/Danza_con_Lobos_poster.png/revision/latest?cb=20200621205157&path-prefix=es"
  )
danza_con_lobos.photo.attach(
  io: photo_danza_con_lobos,
  filename: "danza_con_lobos.png",
  content_type: "image/png"
)
danza_con_lobos.save!
top_gun =
  Movie.create(
    {
      title: "Top Gun",
      description:
        "La Marina de los Estados Unidos ha creado una escuela de élite para pilotos con el fin de sacar una promoción de expertos en técnicas de combate. En la academia, más conocida como Top Gun, a los mejores se les entrena para ser intrépidos y fríos al mismo tiempo, capaces de no perder los nervios en situaciones extremas y de no inmutarse al romper la barrera del sonido a los mandos de un F-14. A la escuela llega el joven Maverick, famoso por su temeraria aunque brillante forma de pilotar.",
      year: 1986,
      length: 110,
      genre: "Acción",
      platform: "Star+, HBO Max"
    }
  )
photo_top_gun =
  URI.open(
    "https://m.media-amazon.com/images/I/51QyUYRk-kL._AC_UF894,1000_QL80_.jpg"
  )
top_gun.photo.attach(
  io: photo_top_gun,
  filename: "top_gun.png",
  content_type: "image/png"
)
top_gun.save!
top_gun_maverick =
  Movie.create(
    {
      title: "Top Gun: Maverick",
      description:
        "Después de más de treinta años de servicio como uno de los mejores aviadores de la Armada, Pete 'Mavericks' Mitchel (Tom Cruise) se encuentra donde siempre quiso estar: superando los límites como un valiente piloto de pruebas y esquivando el ascenso de rango, que no le dejaría volar emplazándolo en tierra. Cuando es destinado a la academia de Top Gun con el objetivo de entrenar a los pilotos de élite para realizar una peligrosa misión en territorio enemigo, Maverick se encuentra allí con el joven teniente Bradley Bradshaw (Miles Teller), el hijo de su difunto amigo 'Goose'.",
      year: 2022,
      length: 131,
      genre: "Acción",
      platform: "Star+"
    }
  )
photo_top_gun_maverick =
  URI.open(
    "https://cloudfront-us-east-1.images.arcpublishing.com/infobae/PKEDBYMES5GSLE5SWZISGXRVI4.jpg"
  )
top_gun_maverick.photo.attach(
  io: photo_top_gun_maverick,
  filename: "top_gun_maverick.png",
  content_type: "image/png"
)
top_gun_maverick.save!
anakin = User.create(email: "anakynsky@msn.com", password: "123456")
photo_anakin =
  URI.open("https://i.kym-cdn.com/photos/images/original/001/701/558/e6f.jpg")
anakin.photo.attach(
  io: photo_anakin,
  filename: "anakin.png",
  content_type: "image/png"
)
anakin.save!

review_star_wars =
  Review.create(
    content: "Gran película! La super recomiendo.",
    rate: 5,
    movie_id: star_wars.id,
    user_id: anakin.id
  )
watchlist_anakin = Watchlist.create(title: "Mis películas", user_id: anakin.id)
markers_anakin_mis_pelicula_star_wars =
  Marker.create(
    seen: true,
    watchlist_id: watchlist_anakin.id,
    movie_id: star_wars.id
  )
markers_anakin_mis_favoritas_star_wars_v =
  Marker.create(
    seen: true,
    watchlist_id: watchlist_anakin.id,
    movie_id: star_wars_ii.id
  )

puts "terminó seed"

keiber =
  User.create(
    email: "keiber@example.com",
    password: "123456",
    password_confirmation: "123456"
  )

photo_keiber = URI.open("https://avatars.githubusercontent.com/u/101483657?v=4")
keiber.photo.attach(
  io: photo_keiber,
  filename: "keiber.png",
  content_type: "image/png"
)
keiber.save!

alex =
  User.create(
    email: "alex@example.com",
    password: "123456",
    password_confirmation: "123456"
  )

photo_alex =
  URI.open(
    "https://i.pinimg.com/736x/fb/e4/79/fbe47969269a476fe22ee7106be36476.jpg"
  )
alex.photo.attach(
  io: photo_alex,
  filename: "alex.png",
  content_type: "image/png"
)
alex.save!

avatar =
  Movie.create(
    title: "AVATAR II",
    description:
      "Jake Sully y Ney'tiri han formado una familia y hacen todo lo posible por permanecer juntos.
  Sin embargo, deben abandonar su hogar y explorar las regiones de Pandora cuando una antigua amenaza reaparece.",
    year: 2022,
    length: 192,
    genre: "Ciencia Ficción",
    platform: "Disney+"
  )
photo_avatar =
  URI.open(
    "https://pics.filmaffinity.com/avatar_the_way_of_water-722646748-mmed.jpg"
  )
avatar.photo.attach(
  io: photo_avatar,
  filename: "avatar.png",
  content_type: "image/png"
)
avatar.save!

happy =
  Movie.create(
    title: "Happy feet: El pingüino",
    description:
      "JMumble, un joven pingüino emperador, vive en la Antártida. Como otros animales de su especie, él necesita saber cantar para atraer a una pareja, pero tiene una voz horrible.
  En su lugar, Mumble debe expresarse a sí mismo y atraer a las hembras a través de su increíble talento para bailar tap.",
    year: 2006,
    length: 108,
    genre: "Infantil",
    platform: "HBO Max"
  )
photo_happy =
  URI.open(
    "https://m.media-amazon.com/images/M/MV5BZWU2NDkxYjktNWVlMS00MTM4LWJjMDAtOWYxZjJkZWFhYzAxXkEyXkFqcGdeQXVyMTA1NjE5MTAz._V1_FMjpg_UX1000_.jpg"
  )
happy.photo.attach(
  io: photo_happy,
  filename: "happy.png",
  content_type: "image/png"
)
happy.save!

harry =
  Movie.create(
    title: "Harry Potter y la piedra filosofal",
    description:
      "El día de su cumpleaños, Harry Potter descubre que es hijo de dos conocidos hechiceros, de los que ha heredado poderes mágicos.
  Debe asistir a una famosa escuela de magia y hechicería, donde entabla una amistad con dos jóvenes que se convertirán en sus compañeros de aventura.",
    year: 2001,
    length: 152,
    genre: "Fantasía",
    platform: "HBO Max"
  )
photo_harry =
  URI.open("https://es.web.img2.acsta.net/pictures/14/04/30/11/55/592219.jpg")
harry.photo.attach(
  io: photo_harry,
  filename: "harry.png",
  content_type: "image/png"
)
harry.save!

charlot = Movie.create(
  title: "La reina Charlotte",
  description: "La joven reina asciende a la prominencia y el poder mientras que su matrimonio con el rey Jorge da paso a una gran historia de amor.",
  year: 2023,
  length: 6,
  genre: "Romance",
  platform: "Netflix",
  series: true
)
photo_charlot =
  URI.open(
    "https://pics.filmaffinity.com/La_reina_Carlota_Una_historia_de_Los_Bridgerton_Miniserie_de_TV-917871806-large.jpg"
  )
charlot.photo.attach(
  io: photo_charlot,
  filename: "charlot.png",
  content_type: "image/png"

)
charlot.save!

demon =
  Movie.create(
    title: "Demon Slayer",
    description:
      "Tanjiro emprende un viaje arriesgado para buscar una cura a la maldición de su hermana y vengar a su familia asesinada por un demonio.",
    year: 2019,
    length: 112,
    genre: "Anime",
    platform: "Netflix"
  )
photo_demon =
  URI.open(
    "https://static.wikia.nocookie.net/doblaje/images/b/b3/Kimetsu_no_Yaiba.png/revision/latest?cb=20210124024744&path-prefix=es"
  )
demon.photo.attach(
  io: photo_demon,
  filename: "demon.png",
  content_type: "image/png"
)
demon.save!


spider = Movie.create(
  title: "Spider-Man: a través del Spider-Verso",
  description: "Después de reunirse con Gwen Stacy, el amigable vecino de tiempo completo de Brooklyn Spiderman, es lanzado a través del multiverso, donde se encuentra a un equipo de gente araña encomendada con proteger su mera existencia.",
  year: 2023,
  length: 150,
  genre: "Acción/Aventura",
  platform: "Disney+",
  )
photo_spider =
  URI.open(
    "https://pics.filmaffinity.com/Spider_Man_Cruzando_el_Multiverso-257260163-mmed.jpg"
  )
spider.photo.attach(
  io: photo_spider,
  filename: "spider.png",
  content_type: "image/png"
)
spider.save!


deadpool = Movie.create(
  title: "Deadpool 2",
  description: "Deadpool tiene que proteger a un mutante adolescente de Cable, un soldado del futuro genéticamente modificado, pero Deadpool no está solo: otros superhéroes igual de chiflados que él unen sus fuerzas contra el perverso Cable.",
  year: 2018,
  length: 119,
  genre: "Acción/comedia",
  platform: "HBO Max",
)
photo_deadpool = URI.open("https://m.media-amazon.com/images/I/91KnqW+HkEL.jpg")
deadpool.photo.attach(
  io: photo_deadpool,
  filename: "deadpool.png",
  content_type: "image/png"
)
deadpool.save!

guardianes =
  Movie.create(
    title: "Guardianes de la Galaxia",
    description:
      "Aunque sigue afectado por la pérdida de Gamora, Peter Quill debe reunir a su equipo para defender el universo de una nueva amenaza o, en caso de fracasar, será el final de los Guardianes.",
    year: 2023,
    length: 150,
    genre: "Ciencia Ficción",
    platform: "Disney+"
  )
photo_guardianes =
  URI.open(
    "https://pics.filmaffinity.com/guardians_of_the_galaxy_vol_3-466272381-large.jpg"
  )
guardianes.photo.attach(
  io: photo_guardianes,
  filename: "guardianes.png",
  content_type: "image/png"
)
guardianes.save!

sirenita =
  Movie.create(
    title: "La sirenita",
    description:
      "Anhelando conocer el mundo más allá del mar, una joven sirena visita la superficie y se enamora del apuesto príncipe Eric. Siguiendo su corazón, hace un trato con la malvada bruja del mar, Úrsula, para experimentar la vida en tierra.",
    year: 2023,
    length: 135,
    genre: "Fantasía",
    platform: "Disney+"
  )
photo_sirenita =
  URI.open(
    "https://lumiere-a.akamaihd.net/v1/images/image_be473c63.jpeg?region=0,0,540,810"
  )
sirenita.photo.attach(
  io: photo_sirenita,
  filename: "sirenita.png",
  content_type: "image/png"
)
sirenita.save!

shrek =
  Movie.create(
    title: "Shrek",
    description:
      "es un gran ogro verde que vive en un pantano. Allí reside felizmente, asustando a los humanos que se aventuran o se pierden, hasta que un día descubre que el lugar ha sido invadido por personajes de cuentos de hadas que han sido expulsados de la comarca por el villano Lord Farquaad.",
    year: 2001,
    length: 90,
    genre: "Fantasía",
    platform: "HBO Max"
  )
photo_shrek =
  URI.open("https://pics.filmaffinity.com/Shrek-903764423-large.jpg")
shrek.photo.attach(
  io: photo_shrek,
  filename: "shrek.png",
  content_type: "image/png"
)
shrek.save!

review_spider =
  Review.create(
    content: "La mejor pelicula animada",
    rate: 4,
    movie_id: spider.id,
    user_id: alex.id
  )
watchlist_alex = Watchlist.create(title: "Mis favoritas xd", user_id: alex.id)
markers_alex_mis_favoritas_spider =
  Marker.create(
    seen: true,
    watchlist_id: watchlist_alex.id,
    movie_id: spider.id
  )
markers_alex_mis_favoritas_sirenita =
  Marker.create(
    seen: true,
    watchlist_id: watchlist_alex.id,
    movie_id: sirenita.id
  )

review_guardianes =
  Review.create(
    content: "Tremendo peliculon",
    rate: 4,
    movie_id: guardianes.id,
    user_id: keiber.id
  )
watchlist_keiber = Watchlist.create(title: "Las mejores", user_id: keiber.id)
markers_keiber_las_mejores_guardianes =
  Marker.create(
    seen: true,
    watchlist_id: watchlist_keiber.id,
    movie_id: guardianes.id
  )
markers_keiber_las_mejores_demond =
  Marker.create(
    seen: true,
    watchlist_id: watchlist_keiber.id,
    movie_id: demon.id
  )

puts "seed lista"

puts("Seeds...")

movie11 =
  Movie.create(
    title: "Sin City: La Mujer Por La Que Mataria",
    description:
      "En la historia central, Dwight McCarthy lucha con sus demonios internos y trata de mantener el control hasta que su ex amante, Ava Lord, regresa y quiere su ayuda para escapar de su esposo abusivo. No hay justicia sin pecado.",
    year: 2014,
    length: 102,
    genre: "Suspenso",
    platform: "Disney+, HBO Max"
  )
photo_movie11 =
  URI.open(
    "https://pics.filmaffinity.com/Sin_City_Una_dama_por_la_que_matar-788175705-large.jpg"
  )
movie11.photo.attach(
  io: photo_movie11,
  filename: "movie11.png",
  content_type: "image/png"
)
movie11.save!

movie12 =
  Movie.create(
    title: "El Asombroso Hombre Araña",
    description:
      "Peter Parker, un estudiante de secundaria marginado, es mordido por una araña radiactiva y adquiere superpoderes. Pronto, se ve obligado a usar sus habilidades para luchar contra un enemigo monstruoso.",
    year: 2012,
    length: 129,
    genre: "Acción",
    platform: "Disney+, Amazon Prime"
  )
photo_movie12 =
  URI.open(
    "https://pics.filmaffinity.com/The_Amazing_Spider_Man-672391099-large.jpg"
  )
movie12.photo.attach(
  io: photo_movie12,
  filename: "movie12.png",
  content_type: "image/png"
)
movie12.save!

movie13 =
  Movie.create(
    title: "Thor",
    description:
      "The Mighty Thor es un guerrero poderoso pero arrogante cuyas acciones imprudentes reavivan una guerra antigua. Thor es arrojado a la Tierra y obligado a vivir entre humanos como castigo. Una vez aquí, Thor aprende lo que se necesita para ser un verdadero héroe.",
    year: 2011,
    length: 92,
    genre: "Acción",
    platform: "Disney+, Amazon Prime"
  )
photo_movie13 =
  URI.open(
    "https://4.bp.blogspot.com/-0hGMLpEVW1k/T6QM-DTL-9I/AAAAAAAABVM/kL6QE4L_rSs/s1600/bds_thor_poster-05.jpg"
  )
movie13.photo.attach(
  io: photo_movie13,
  filename: "movie13.png",
  content_type: "image/png"
)
movie13.save!

movie14 =
  Movie.create(
    title: "Airbender: El Último Guerrero",
    description:
      "Un niño extraordinario con poderes increíbles intenta poner fin al antiguo conflicto entre las cuatro naciones: Aire, Agua, Tierra y Fuego.",
    year: 2010,
    length: 86,
    genre: "Fantasía",
    platform: "Netflix"
  )
photo_movie14 =
  URI.open("https://m.media-amazon.com/images/I/71zcUm+VWLL._AC_SY679_.jpg")
movie14.photo.attach(
  io: photo_movie14,
  filename: "movie14.png",
  content_type: "image/png"
)
movie14.save!

movie15 =
  Movie.create(
    title: "Scott Pilgrim Contra El Mundo",
    description:
      "Scott Pilgrim conoce a Ramona y se enamora instantáneamente de ella. Pero cuando conoce a uno de sus ex en una competencia de bandas, se da cuenta de que tiene que lidiar con sus siete ex para cortejarla.",
    year: 2010,
    length: 112,
    genre: "Comedia",
    platform: "Netflix"
  )
photo_movie15 =
  URI.open(
    "https://pics.filmaffinity.com/Scott_Pilgrim_contra_el_mundo-809979700-large.jpg"
  )
movie15.photo.attach(
  io: photo_movie15,
  filename: "movie15.png",
  content_type: "image/png"
)
movie15.save!

movie16 =
  Movie.create(
    title: "Green Zone: Distrito Protegido",
    description:
      "Durante la ocupación de Bagdad liderada por Estados Unidos en los primeros días de la guerra de Irak, el oficial Roy Miller dirige un equipo de profesionales para encontrar armas de destrucción masiva.",
    year: 2010,
    length: 93,
    genre: "Acción",
    platform: "Amazon Prime"
  )
photo_movie16 =
  URI.open(
    "https://pics.filmaffinity.com/Green_Zone_Distrito_protegido-480191344-large.jpg"
  )
movie16.photo.attach(
  io: photo_movie16,
  filename: "movie16.png",
  content_type: "image/png"
)
movie16.save!

movie17 =
  Movie.create(
    title: "Temporada de Brujas",
    description:
      "Behmen, un cruzado, recibe la orden de transportar a una supuesta bruja a una abadía remota. Durante su viaje, Behmen y los soldados descubren el secreto de la mujer y conocen los peligros que les acechan.",
    year: 2011,
    length: 95,
    genre: "Ciencia Ficción",
    platform: "Amazon Prime"
  )
photo_movie17 =
  URI.open(
    "https://static.wikia.nocookie.net/doblaje/images/7/7a/Season_of_the_witch_poster.jpg/revision/latest?cb=20110501022713&path-prefix=es"
  )
movie17.photo.attach(
  io: photo_movie17,
  filename: "movie17.png",
  content_type: "image/png"
)
movie17.save!

movie18 =
  Movie.create(
    title: "The Town (Ciudad de Ladrones)",
    description:
      "Mientras planifica su próximo golpe, Doug MacRay (Ben Affleck), un atracador de bancos de Boston, tiene que esforzarse por controlar sus sentimientos por Claire (Rebecca Hall), la directora de uno de los bancos que atracó. Al mismo tiempo, intenta esquivar al agente del FBI (Jon Hamm) que le sigue los pasos.",
    year: 2010,
    length: 120,
    genre: "Acción",
    platform: "HBO Max"
  )
photo_movie18 =
  URI.open(
    "https://pics.filmaffinity.com/The_Town_Ciudad_de_ladrones-203362356-large.jpg"
  )
movie18.photo.attach(
  io: photo_movie18,
  filename: "movie18.png",
  content_type: "image/png"
)
movie18.save!

movie19 =
  Movie.create(
    title: "La saga Crepúsculo: Eclipse",
    description:
      "Tercera entrega de la popular saga de vampiros basada en las novelas de Stephenie Meyer. Bella (Kristen Stewart) tendrá que elegir entre Edward (Robert Pattinson) y Jacob (Taylor Lautner). La ciudad de Seattle es devastada por una serie de misteriosos asesinatos que va en aumento, mientras una vampiresa busca venganza. Bella debe elegir entre su amor por Edward y su amistad con Jacob, consciente de que su decisión puede originar una batalla entre vampiros y licántropos. Rodeada de peligros y con su graduación acercándose, ahora se enfrenta a la decisión más importante de su vida",
    year: 2010,
    length: 124,
    genre: "Fantasía",
    platform: "Disney+"
  )
photo_movie19 =
  URI.open(
    "https://static.wikia.nocookie.net/doblaje/images/2/2f/Poster_Eclipse.jpg/revision/latest?cb=20110311022959&path-prefix=es"
  )
movie19.photo.attach(
  io: photo_movie19,
  filename: "movie19.png",
  content_type: "image/png"
)
movie19.save!

movie20 =
  Movie.create(
    title: "El Origen",
    description:
      "Un ladrón que roba secretos corporativos mediante el uso de tecnología para compartir sueños se le asigna la tarea inversa de plantar una idea en la mente de un director ejecutivo.",
    year: 2010,
    length: 148,
    genre: "Acción",
    platform: "HBO Max, Netflix"
  )
photo_movie20 =
  URI.open(
    "https://static.wikia.nocookie.net/doblaje/images/c/cf/Inception.png/revision/latest?cb=20211028042030&path-prefix=es"
  )
movie20.photo.attach(
  io: photo_movie20,
  filename: "movie20.png",
  content_type: "image/png"
)
movie20.save!

charlie = User.create(email: "charlie@gmail.com", password: "123456")
photo_charlie =
  URI.open("https://avatars.githubusercontent.com/u/130188802?v=4")
charlie.photo.attach(
  io: photo_charlie,
  filename: "charlie.png",
  content_type: "image/png"
)
charlie.save!

maximo = User.create(email: "maximo@gmail.com", password: "123456")
photo_maximo = URI.open("https://avatars.githubusercontent.com/u/37337680?v=4")
maximo.photo.attach(
  io: photo_maximo,
  filename: "maximo.png",
  content_type: "image/png"
)
maximo.save!

review_Sin_City =
  Review.create(
    content:
      "¡Una película policíaca perfecta y súper elegante! La película te involucra cada segundo. Thriller, Acción, Crimen, ¡todos ustedes llegan aquí! ¡El alto contraste, el fondo oscuro y los increíbles sonidos completan la obra maestra",
    rate: 4,
    movie_id: movie11.id,
    user_id: charlie.id
  )
review_Hombre_Araña =
  Review.create(
    content:
      "Esta es la peor película de historietas que he visto. Al menos puedo disfrutar un poco irónicamente de hacer pedazos a Daredevil (la película, por supuesto) o Los Cuatro Fantásticos, o incluso TASM 2, pero esto es solo una experiencia miserable. ¿Cómo pasamos de la brillantez cursi de Spider-Man 3 a esto? Hay una escena en toda esta película que disfruté. Uno. Y ahí es cuando casi se convierte en un villano. El peter parker de Andrew en esto es un tipo llorón que anda en patineta, el traje se ve horrible y la trama es tan tonta. El hombre lagarto quiere convertir a las personas en hombres lagarto. ¿Por qué? No lo sé, porque la película ni siquiera TRATA de justificarlo. Es solo 'esto es lo que está pasando. Afrontar.' Esta es, sin ironía, una de mis películas más odiadas y, sinceramente, no entiendo cómo todos piensan que es buena, o incluso que está bien. Esta película es horrible.",
    rate: 1,
    movie_id: movie12.id,
    user_id: maximo.id
  )

watchlist_charlie = Watchlist.create(title: "las mejores", user_id: charlie.id)
watchlist_maximo =
  Watchlist.create(title: "para ver con amigos", user_id: maximo.id)

markers_charlie_lasmejores =
  Marker.create(
    seen: true,
    watchlist_id: watchlist_charlie.id,
    movie_id: movie11.id
  )
markers_charlie_lasmejores =
  Marker.create(
    seen: true,
    watchlist_id: watchlist_charlie.id,
    movie_id: movie13.id
  )

markers_maximo_ver_con_amigos =
  Marker.create(
    seen: true,
    watchlist_id: watchlist_maximo.id,
    movie_id: movie14.id
  )
markers_maximo_ver_con_amigos =
  Marker.create(
    seen: true,
    watchlist_id: watchlist_maximo.id,
    movie_id: movie15.id
  )

Watchlist.create(title: "Mis favoritas", user_id: principal_user.id)
principal_user.favorite(movie9)
principal_user.favorite(top_gun)
principal_user.favorite(movie14)
principal_user.favorite(movie2)

Watchlist.create(title: "Watchlist", user_id: principal_user.id)
principal_user.favorite(movie1, scope: :watchlist)
principal_user.favorite(movie4, scope: :watchlist)
principal_user.favorite(movie6, scope: :watchlist)
principal_user.favorite(movie13, scope: :watchlist)

Watchlist.create(title: "Domingueras", user_id: principal_user.id)
principal_user.favorite(spider, scope: :domingueras)
principal_user.favorite(movie20, scope: :domingueras)
principal_user.favorite(demon, scope: :domingueras)
principal_user.favorite(harry, scope: :domingueras)

Watchlist.create(title: "Chistosas", user_id: principal_user.id)
principal_user.favorite(shrek, scope: :chistosas)
principal_user.favorite(deadpool, scope: :chistosas)
principal_user.favorite(happy, scope: :chistosas)
principal_user.favorite(movie15, scope: :chistosas)

puts "seeds Charlie finish"
puts "iniciando series"
serie1 =
  Movie.create(
    title: "Dinastia",
    description: "Dos de las familias más ricas de los Estados Unidos, los Carrington y los Colby, se disputan el control de su fortuna y sus hijos, y exponen la oscura vorágine de un mundo corrupto.",
    year: 2017,
    length: 4,
    genre: "Drama",
    platform: "Netflix",
    series: true
)
photo_serie1 = URI.open("https://upload.wikimedia.org/wikipedia/en/a/a7/Dynasty_%282017%29_S4_poster.png")
serie1.photo.attach(io: photo_serie1, filename: "serie1.png", content_type: "image/png")
serie1.save!
serie2 =
  Movie.create(
    title: "The Witcher",
    description: "El brujo Geralt, un cazador de monstruos, trata de encontrar su lugar en un mundo en el que las personas suelen ser más malvadas que las bestias.",
    year: 2019,
    length: 4,
    genre: "Fantasía",
    platform: "Netflix",
    series: true
)
photo_serie2 = URI.open("https://static.wikia.nocookie.net/netflix9203/images/3/32/The_Witcher_%28T2%2C_p%C3%B3ster_ingl%C3%A9s%29.jpg/revision/latest?cb=20221024210648&path-prefix=es")
serie2.photo.attach(io: photo_serie2, filename: "serie2.png", content_type: "image/png")
serie2.save!
serie3 =
  Movie.create(
    title: "Euphoria",
    description: "Un grupo de estudiantes de secundaria navega entre drogas, relaciones sexuales, traumas, redes sociales, amor y amistad.",
    year: 2019,
    length: 2,
    genre: "Drama",
    platform: "HBO Max",
    series: true
)
photo_serie3 = URI.open("https://pics.filmaffinity.com/euphoria-465825702-mmed.jpg")
serie3.photo.attach(io: photo_serie3, filename: "serie3.png", content_type: "image/png")
serie3.save!
serie4 =
  Movie.create(
    title: "The Last of Us",
    description: "Joel y Ellie, dos personas conectadas por la brutalidad del mundo en el que viven, se ven obligados a enfrentarse a criaturas y asesinos despiadados, mientras viajan a través de un Estados Unidos posapocalíptico.",
    year: 2023,
    length: 4,
    genre: "Fantasía",
    platform: "HBO Max",
    series: true
)
photo_serie4 = URI.open("https://m.media-amazon.com/images/M/MV5BZGUzYTI3M2EtZmM0Yy00NGUyLWI4ODEtN2Q3ZGJlYzhhZjU3XkEyXkFqcGdeQXVyNTM0OTY1OQ@@._V1_QL75_UX190_CR0,0,190,281_.jpg")
serie4.photo.attach(io: photo_serie4, filename: "serie4.png", content_type: "image/png")
serie4.save!
serie5 =
  Movie.create(
    title: "Game of Throne",
    description: "Quien se sienta en el trono de hierro, controla los siete reinos. Game of trhones sigue la lucha de las casas nobles que codician tal poder",
    year: 2011,
    length: 8,
    genre: "Drama",
    platform: "HBO Max",
    series: true
)
photo_serie5 = URI.open("https://mx.web.img2.acsta.net/pictures/19/04/03/18/26/4991295.jpg")
serie5.photo.attach(io: photo_serie5, filename: "serie5.png", content_type: "image/png")
serie5.save!
serie6 =
  Movie.create(
    title: "Daredevil",
    description: "Ciego desde que era joven, Matt Murdock lucha contra la injusticia de día como abogado y por la noche como Daredevil en Nueva York.",
    year: 2015,
    length: 4,
    genre: "Acción",
    platform: "Disney+",
    series: true
)
photo_serie6 = URI.open("https://static.wikia.nocookie.net/marvel/images/b/b2/Marvel%27s_Daredevil_poster_Disney_Plus.png/revision/latest?cb=20220629132039&path-prefix=es")
serie6.photo.attach(io: photo_serie6, filename: "serie6.png", content_type: "image/png")
serie6.save!
serie7 =
  Movie.create(
    title: "Rick and Morty",
    description: "Después de haber estado desaparecido durante casi 20 años, Rick Sánchez llega de imprevisto a la puerta de la casa de su hija Beth y se va a vivir con ella y su familia utilizando el garaje como su laboratorio personal.",
    year: 2013,
    length: 4,
    genre: "Fantasía",
    platform: "HBO Max",
    series: true
)
photo_serie7 = URI.open("https://es.web.img3.acsta.net/pictures/18/10/31/17/34/2348073.jpg")
serie7.photo.attach(io: photo_serie7, filename: "serie7.png", content_type: "image/png")
serie7.save!
serie8 =
  Movie.create(
    title: "Loki",
    description: "Loki se aleja de la sombra de su hermano para embarcarse en una aventura que se desarrolla tras los acontecimientos de Avengers: Endgame.",
    year: 2022,
    length: 4,
    genre: "Acción",
    platform: "Disney+",
    series: true
)
photo_serie8 = URI.open("https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2021/03/loki-nuevo-cartel-2270891.jpg?tf=1200x")
serie8.photo.attach(io: photo_serie8, filename: "serie8.png", content_type: "image/png")
serie8.save!
serie9 =
  Movie.create(
    title: "Vikingos",
    description: "El vikingo Ragnar Lothbrok es un joven agricultor y hombre de familia que se siente frustrado por las políticas de Earl Haraldson, el conde del lugar que envía a sus invasores vikingos al este de los países bálticos y Rusia, cuyos residentes son pobres como los escandinavos.",
    year: 2013,
    length: 4,
    genre: "Acción",
    platform: "Netflix",
    series: true
)
photo_serie9 = URI.open("https://www.formulatv.com/images/series/posters/700/748/dest_1.jpg")
serie9.photo.attach(io: photo_serie9, filename: "serie9.png", content_type: "image/png")
serie9.save!
serie10 =
  Movie.create(
    title: "One Punch Man",
    description: "El superhéroe más poderoso del mundo puede matar a cualquiera de un solo golpe, pero al no tener retos, lucha contra la depresión y el hastío.",
    year: 2019,
    length: 4,
    genre: "Anime",
    platform: "Netflix",
    series: true
)
photo_serie10 = URI.open("https://static.wikia.nocookie.net/onepunchman/images/d/d9/OPM_Key_visual.png/revision/latest?cb=20230327234802&path-prefix=es")
serie10.photo.attach(io: photo_serie10, filename: "serie10.png", content_type: "image/png")
serie10.save!
serie11 =
  Movie.create(
    title: "Grey's Anatomy",
    description: "Un drama que se enfoca en el personaje de Merdith Grey, una integrante de un grupo de doctores jóvenes en el hospital de Seattle. La hija de una famosa cirujana, que lucha para mantener sus relaciones con sus colegas.",
    year: 2029,
    length: 4,
    genre: "Drama",
    platform: "Start+",
    series: true
)
photo_serie11 = URI.open("https://mx.web.img3.acsta.net/pictures/22/10/06/21/38/5529680.jpg")
serie11.photo.attach(io: photo_serie11, filename: "serie11.png", content_type: "image/png")
serie11.save!
serie12 =
  Movie.create(
    title: "El Zorro",
    description: "El héroe enmascarado que de día es el aristócrata Diego de la Vega y de noche un espadachín justiciero en la California española.",
    year: 1957,
    length: 3,
    genre: "Western",
    platform: "Disney+",
    series: true
)
photo_serie12 = URI.open("https://static.wikia.nocookie.net/doblaje/images/e/ef/El_Zorro-1957-1959-1a22.jpg/revision/latest?cb=20230210123638&path-prefix=es")
serie12.photo.attach(io: photo_serie12, filename: "serie12.png", content_type: "image/png")
serie12.save!
serie13 =
  Movie.create(
    title: "Invasión Secreta",
    description: "Cuando Nick Fury se entera de una invasión secreta de la Tierra por parte de una facción de Skrulls metamorfos, se une a sus aliados y juntos emprenden una carrera contrarreloj para frustrar una inminente invasión Skrull y salvar a la humanidad.",
    year: 2023,
    length: 3,
    genre: "Ciencia Ficción",
    platform: "Disney+",
    series: true
)
photo_serie13 = URI.open("https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRg6MXUIHmjSYa_M8GpHDjy1cobFlLxyN4Y9RXfWBZWQWph1IbC")
serie13.photo.attach(io: photo_serie13, filename: "serie13.png", content_type: "image/png")
serie13.save!
serie14 =
  Movie.create(
    title: "Black Mirror",
    description: "El lado oscuro de la era tecnológica en la que se vive: la paranoia de ser vigilados como en un panóptico, los usos terroristas de las nuevas herramientas y su relación con la experiencia cotidiana.",
    year: 2011,
    length: 3,
    genre: "Ciencia Ficción",
    platform: "Netflix",
    series: true
)
photo_serie14 = URI.open("https://images.justwatch.com/poster/239582769/s718/black-mirror.%7Bformat%7D")
serie14.photo.attach(io: photo_serie14, filename: "serie14.png", content_type: "image/png")
serie14.save!
serie15 =
  Movie.create(
    title: "Sense8",
    description: "Ocho desconocidos tienen una conexión y comparten sentimientos y habilidades a medida que tratan de evitar su exterminio.",
    year: 2015,
    length: 2,
    genre: "Drama",
    platform: "Netflix",
    series: true
)
photo_serie15 = URI.open("https://static.wikia.nocookie.net/sensate/images/3/39/Sense8_S1Poster_01.jpg/revision/latest?cb=20180616215114&path-prefix=es")
serie15.photo.attach(io: photo_serie15, filename: "serie15.png", content_type: "image/png")
serie15.save!
serie16 =
  Movie.create(
    title: "The Vampire Diaries",
    description: "Pocos meses después de que sus padres fallecieron en un accidente automovilístico, Elena Gilbert y su hermano, Jeremy tratan de mitigar la pena de su pérdida. Para Elena, una chica que fue muy popular y que está involucrada en su colegio y con sus amigos, le es difícil esconder su tristeza de los demás.",
    year: 2009,
    length: 8,
    genre: "Drama",
    platform: "HBO Max",
    series: true
)
photo_serie16 = URI.open("https://m.media-amazon.com/images/I/91F4amRqOEL._AC_UF1000,1000_QL80_.jpg")
serie16.photo.attach(io: photo_serie16, filename: "serie16.png", content_type: "image/png")
serie16.save!
serie17 =
  Movie.create(
    title: "Peaky Blinders",
    description: "Gran Bretaña vive la posguerra. Los soldados regresan, se acuñan nuevas revoluciones y nacen bandas criminales en una nación agitada. En Birmingham, una pandilla de gánsters callejeros asciende hasta convertirse en los reyes de la clase obrera.",
    year: 2013,
    length: 6,
    genre: "Drama",
    platform: "Netflix",
    series: true
)
photo_serie17 = URI.open("https://elargentinodiario.com.ar/wp-content/uploads/2022/07/peaky-blinders.jpg")
serie17.photo.attach(io: photo_serie17, filename: "serie17.png", content_type: "image/png")
serie17.save!
serie18 =
  Movie.create(
    title: "Stranger Things",
    description: "Cuando un niño desaparece, sus amigos, la familia y la policía se ven envueltos en una serie de eventos misteriosos al tratar de encontrarlo. Su ausencia coincide con el avistamiento de una criatura terrorífica y la aparición de una extraña niña.",
    year: 2016,
    length: 4,
    genre: "Ciencia Ficción",
    platform: "Netflix",
    series: true
)
photo_serie18 = URI.open("https://static.wikia.nocookie.net/strangerthings/images/0/09/Stranger_Things_Season_1.png/revision/latest?cb=20170110205004&path-prefix=es")
serie18.photo.attach(io: photo_serie18, filename: "serie18.png", content_type: "image/png")
serie18.save!
serie19 =
  Movie.create(
    title: "Amor y Muerte",
    description: "se centra en el terrible asesinato de Betty Gore, ocurrido en Texas en 1980, por parte de Candy Montgomery.",
    year: 2023,
    length: 4,
    genre: "Crimen",
    platform: "HBO Max",
    series: true
)
photo_serie19 = URI.open("https://pics.filmaffinity.com/love_death-796244921-mmed.jpg")
serie19.photo.attach(io: photo_serie19, filename: "serie19.png", content_type: "image/png")
serie19.save!
serie20 =
  Movie.create(
    title: "S.W.A.T",
    description: "Un teniente de policía se debate entre la fidelidad al cuerpo y la vinculación que mantiene con los amigos junto a los que creció en las calles más duras de Los Ángeles, para quienes, a menudo, la policía es el enemigo.",
    year: 2017,
    length: 6,
    genre: "Acción",
    platform: "Star+",
    series: true
)
photo_serie20 = URI.open("https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRg6MXUIHmjSYa_M8GpHDjy1cobFlLxyN4Y9RXfWBZWQWph1IbC")
serie20.photo.attach(io: photo_serie20, filename: "serie20.png", content_type: "image/png")
serie20.save!
