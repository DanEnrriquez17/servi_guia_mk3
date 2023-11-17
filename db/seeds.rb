# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require 'open-uri'
puts "Destruyendo las bases de datos"
Review.destroy_all
Suplier.destroy_all

# Proveedor seeds
puts "Creando la base de datos de proveedores"
dionisio = Suplier.create!(
  name: "Dionisio",
  last_name: "Montalvo",
  email: "No tiene",
  phone: "55-4469-5941",
  job: "Lavado de autos",
  hour: "Lunes a Viernes de 9am a 6pm",
  cost: 90.00,
  location: "Residencial Natura",
  grade: 4.9
)
dionisio_img = URI.open("https://res.cloudinary.com/djmnbuel1/image/upload/v1696960374/Servi%20guia/car-wash_ynjioi.png")
dionisio.avatar.attach(io: dionisio_img, filename: "dionisio.png", content_type: "image/png")

paty = Suplier.create!(
  name: "Patricia",
  last_name: "Castañeda",
  email: "No tiene",
  phone: "55-7194-1909",
  job: "Comida",
  hour: "Por pedido",
  cost: 90.00,
  location: "Residencial Natura",
  grade: 4.9
)

# Reseñas seeds
puts "Creando la base de datos de reseñas"
review1 = dionisio.reviews.create!(
  name: "Daniel Maximiliano",
  last_name: "Enrriquez",
  review: "Muy buen servicio del señor Dionisio, deja el coche muy limpio y hace bien su trabajo",
  grade: 4.9
)
review1file = URI.open("https://res.cloudinary.com/djmnbuel1/image/upload/v1696960919/Servi%20guia/20221106_101651_ipgwn3.jpg")
review1.photos.attach(io: review1file, filename: "review1.jpg", content_type: "image/jpg")
review2 = dionisio.reviews.create!(
  name: "Santos",
  last_name: "Enrriquez",
  review: "Deja el coche muy limpio y hace bien su trabajo",
  grade: 4.8
)
review2file = URI.open("https://res.cloudinary.com/djmnbuel1/image/upload/v1696960919/Servi%20guia/20221106_101651_ipgwn3.jpg")
review2.photos.attach(io: review2file, filename: "review2.jpg", content_type: "image/jpg")
