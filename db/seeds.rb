puts 'Cleaning database...'
Movie.destroy_all
puts 'Creating Users & artworks...'


user1 = User.create(
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
  first_name: 'Salvador',
  last_name: 'Dali',
  email: 'anteaterman123@example.com',
  password: 'password'
)

user5 = User.create(
  first_name: 'Jean-Michel',
  last_name: 'Basquiat',
  email: 'crown@example.com',
  password: 'password'
)

Artwork.create(
  title: "Double Gong",
  description: "A mixed media mobile, of sheet metal, wire, and paint",
  category: "Sculpture",
  image: "https://sfmoma-media-dev.s3.us-west-1.amazonaws.com/www-media/2022/05/21014105/FC.671_01_H02-Artsy-JPEG_4000-pixels-long.jpg",
  user: user1
)


Artwork.create(
  title: "Man on Wire",
  description: "Single wire sculpture of men on wires",
  category: "Sculpture",
  image: "https://dl6pgk4f88hky.cloudfront.net/2021/06/2015_46_alexander_calder-scaled.jpg",
  user: user1
)

Artwork.create(
  title: "Mona Lisa",
  description: "Leonardo da Vinci's iconic portrait of a mysterious woman, known for her enigmatic smile and captivating gaze.",
  category: "Painting",
  user: "user 1"
)

Artwork.create(
  title: "Guernica",
  description: "Pablo Picasso's powerful anti-war mural, conveying the horrors of the bombing of Guernica during the Spanish Civil War.",
  category: "Painting",
  user: "user 1"
)

Artwork.create(
  title: "The Scream",
  description: "Edvard Munch's iconic expressionist painting depicting a figure in agony against a tumultuous, swirling sky.",
  category: "Painting",
  user: "user 1"
)

Artwork.create(
  title: "The Starry Night",
  description: "An abstract interpretation of Van Gogh's 'Starry Night,' created by a contemporary artist, exploring new perspectives and techniques.",
  category: "Mixed Media",
  user: "user 2"
)

Artwork.create(
  title: "Les Demoiselles d'Avignon",
  description: "Pablo Picasso's groundbreaking cubist painting portraying five nude women, challenging traditional ideals of beauty.",
  category: "Painting",
  user: "user 2"
)

Artwork.create(
  title: "Girl with a Pearl Earring",
  description: "Johannes Vermeer's iconic portrait featuring a young girl with a turban and a luminous pearl earring.",
  category: "Painting",
  user: "user 2"
)

Artwork.create(
  title: "Water Lilies",
  description: "Claude Monet's series of water lily paintings, capturing the beauty and tranquility of his garden pond in Giverny.",
  category: "Painting",
  user: "user 2"
)

Artwork.create(
  title: "The Birth of Venus",
  description: "Sandro Botticelli's classic Renaissance painting depicting the goddess Venus emerging from a seashell.",
  category: "Painting",
  user: "user 2"
)

Artwork.create(
  title: "American Gothic",
  description: "Grant Wood's iconic portrayal of a stern-faced farmer and his daughter standing in front of a Gothic-style farmhouse.",
  category: "Painting",
  user: "user 3"
)

Artwork.create(
  title: "Dance at Le Moulin de la Galette",
  description: "Pierre-Auguste Renoir's lively depiction of people dancing and enjoying themselves at a popular Parisian dancehall.",
  category: "Painting",
  user: "user 3"
)

Artwork.create(
  title: "The Great Wave off Kanagawa",
  description: "Katsushika Hokusai's woodblock print capturing a powerful wave and Mount Fuji in the background.",
  category: "Printmaking",
  user: "user 3"
)

Artwork.create(
  title: "Nighthawks",
  description: "Edward Hopper's iconic painting featuring people in a late-night diner, bathed in the eerie glow of fluorescent lights.",
  category: "Painting",
  user: "user 3"
)


Artwork.create(
  title: "Whistler's Mother",
  description: "James McNeill Whistler's portrait of his mother, known for its simplicity and the sitter's calm demeanor.",
  category: "Painting",
  user: "user 3"
)

Artwork.create(
  title: "Balloon Dog",
  description: "Jeff Koons' large, stainless steel sculpture of a balloon dog, a playful and iconic piece in contemporary art.",
  category: "Sculpture",
  user: "user 4"
)

Artwork.create(
  title: "Les Nymphéas",
  description: "A section of Claude Monet's Water Lilies series, showcasing the artist's mastery of capturing the ever-changing qualities of light.",
  category: "Painting",
  user: "user 4"
)

Artwork.create(
  title: "Blue Poles",
  description: "Jackson Pollock's abstract expressionist masterpiece, featuring tall poles of dripping and splattered paint on a canvas.",
  category: "Painting",
  user: "user 4"
)

Artwork.create(
  title: "The Kiss",
  description: "Gustav Klimt's iconic painting portraying a couple locked in an intimate embrace, adorned with gold leaf and intricate patterns.",
  category: "Painting",
  user: "user 4"
)

Artwork.create(
  title: "Three Ball Total Equilibrium Tank",
  description: "Jeff Koons' sculptural installation featuring three basketballs suspended in equilibrium within a water-filled tank.",
  category: "Sculpture",
  user: "user 4"
)

Artwork.create(
  title: "The Elephants",
  description: "Salvador Dalí's surreal painting featuring long-legged elephants carrying obelisks on their backs in a barren landscape.",
  category: "Painting",
  user: "user 5"
)

Artwork.create(
  title: "Campbell's Soup Cans",
  description: "Andy Warhol's iconic series of 32 paintings featuring Campbell's Soup cans, a cornerstone of pop art.",
  category: "Painting",
  user: "user 5"
)

Artwork.create(
  title: "Whirling Dervishes",
  description: "A mesmerizing painting capturing the ecstatic dance of whirling dervishes in the Sufi tradition.",
  category: "Painting",
  user: "user 5"
)

Artwork.create(
  title: "Bird in Space",
  description: "Constantin Brâncuși's abstract sculpture portraying the essence of a bird's movement and form.",
  category: "Sculpture",
  user: "user 5"
)

Artwork.create(
  title: "The Night Café",
  description: "Vincent van Gogh's vibrant depiction of a café interior at night, filled with intense colors and swirling energy.",
  category: "Painting",
  user: "user 5"
)

puts 'Finished!'
