puts 'Cleaning database...'
Artwork.destroy_all
User.destroy_all
puts 'Creating Users & artworks...'


user1 = User.create!(
  first_name: 'Alexander',
  last_name: 'Calder',
  email: 'hangmeup@example.com',
  password: 'password'
)

user2 = User.create(
  first_name: 'Egon',
  last_name: 'Scheile',
  email: 'ilovenudes@example.com',
  password: 'password'
)

user3 = User.create(
  first_name: 'Mark',
  last_name: 'Rothko',
  email: '4sides2colors@example.com',
  password: 'password'
)

user4 = User.create(
  first_name: 'Helen',
  last_name: 'Frankenthaler',
  email: 'moreinterestingthanrothko@example.com',
  password: 'password'
)

user5 = User.create(
  first_name: 'Jean-Michel',
  last_name: 'Basquiat',
  email: 'crown@example.com',
  password: 'password'
)

Artwork.create!(
  price_per_day: 200.0,
  title: "Double Gong",
  description: "A mixed media mobile, of sheet metal, wire, and paint",
  category: "Sculpture",
  image: "https://sfmoma-media-dev.s3.us-west-1.amazonaws.com/www-media/2022/05/21014105/FC.671_01_H02-Artsy-JPEG_4000-pixels-long.jpg",
  user_id: user1.id
)


Artwork.create(
  price_per_day: 200.0,
  title: "Man on Wire",
  description: "Single wire sculpture of men on wires",
  category: "Sculpture",
  image: "https://dl6pgk4f88hky.cloudfront.net/2021/06/2015_46_alexander_calder-scaled.jpg",
  user_id: user1.id
)

Artwork.create(
  price_per_day: 200.0,
  title: "Brazillian fish",
  description: "Mixed media mobile, depicting a fish",
  category: "Painting",
  image: "https://img.artlogic.net/w_1800,h_1800,c_limit/exhibit-e/559650f9cfaf34ff158b4568/13ae6712667c118a8910e12ee16aecfd.jpeg",
  user_id: user1.id
)

Artwork.create(
  price_per_day: 200.0,
  title: "Self Portrait",
  description: "Watercolor, gouache, and graphite on paper, depicting a self portrait.",
  category: "Painting",
  image: "https://collectionapi.metmuseum.org/api/collection/v1/iiif/483438/1016551/main-image",
  user_id: user2.id
)

Artwork.create(
  price_per_day: 200.0,
  title: "Seated Male Nude, Right Hand Outstretched",
  description: "Painting of contorted main nude, with no visable head, with arm outstretched.",
  category: "Painting",
  image: "https://uploads1.wikiart.org/images/egon-schiele/seated-male-nude-right-hand-outstretched-1910.jpg!PinterestSmall.jpg",
  user_id: user2.id
)

Artwork.create(
  price_per_day: 200.0,
  title: "Composition with Three Male Figures",
  description: "Three male figues overlap, monotone using reds",
  category: "Painting",
  image: "https://uploads2.wikiart.org/images/egon-schiele/composition-with-three-male-figures-self-portrait-1911.jpg!Large.jpg",
  user_id: user2.id
)

Artwork.create(
  price_per_day: 200.0,
  title: "No. 1 (Royal Red and Blue)",
  description: "Colour field painting, oil on canvas, red and blue.",
  category: "Painting",
  image: "https://uploads2.wikiart.org/images/mark-rothko/no-1-royal-red-and-blue-1954.jpg!Large.jpg",
  user_id: user3.id
)

Artwork.create(
  price_per_day: 200.0,
  title: "White Center",
  description: "Yellow, Pink and Lavender on Rose, colour field painting, oil on canvas, 1950.",
  category: "Painting",
  image: "https://uploads4.wikiart.org/images/mark-rothko/white-center.jpg!Large.jpg",
  user_id: user3.id
)

Artwork.create(
  price_per_day: 200.0,
  title: "No. 3",
  description: "Oil on canvas, colour field, bright red and raw canvas",
  category: "Painting",
  image: "https://uploads1.wikiart.org/images/mark-rothko/no-3-1953.jpg!Large.jpg",
  user_id: user3.id
)

Artwork.create(
  price_per_day: 200.0,
  title: "Beginings",
  description: "Lyrical abstraction, oil wash on raw canvas",
  category: "Painting",
  image: "https://uploads5.wikiart.org/images/helen-frankenthaler/beginnings-2002.jpg",
  user_id: user4.id
)

Artwork.create(
  price_per_day:200.0,
  title: "Mauve District",
  description: "1966 abstract colour field work, acrylic poured on canvas.",
  category: "Painting",\
  image: "https://uploads1.wikiart.org/images/helen-frankenthaler/mauve-district-1966.jpg!Large.jpg",
  user_id: user4.id
)

Artwork.create(
  price_per_day: 200.0,
  title: "Tutti-Fruitti",
  description: "Lyrical volour field abstraction, earthen acrylic on canvas. 1966",
  category: "Painting",
  image: "https://uploads0.wikiart.org/images/helen-frankenthaler/tutti-fruitti-1966.jpg!Large.jpg",
  user_id: user4.id
)

Artwork.create(
  price_per_day: 200.0,
  title: "Untitled",
  description: "Famously known as Skull, created in 1981 at the age of 20",
  category: "Contemporary Graffiti",
  image: "https://www.jean-michel-basquiat.org/Skull%20Jean-Michel%20Basquiat.jpg?ezimgfmt=rs:400x469/rscb2/ngcb2/notWebP",
  user_id: user5.id
)

Artwork.create(
  price_per_day: 200.0,
  title: "Riding with Death",
  description: "Vocal peice about political and racial issues of the time",
  category: "Painting",
  image: "https://www.jean-michel-basquiat.org/Riding%20with%20Death%20Jean-Michel%20Basquiat.jpg?ezimgfmt=rs:400x340/rscb2/ngcb2/notWebP",
  user_id: user5.id
)

Artwork.create(
  price_per_day: 200.0,
  title: "Flexible",
  description: "new-expressionist portrait of a shattered man",
  category: "Screen Print",
  image: "https://www.jean-michel-basquiat.org/Flexible%20Jean-Michel%20Basquiat.jpg?ezimgfmt=rs:400x543/rscb2/ngcb2/notWebP",
  user_id: user5.id
)

puts 'Finished!'
