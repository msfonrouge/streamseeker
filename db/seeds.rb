# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

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
