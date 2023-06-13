# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

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
