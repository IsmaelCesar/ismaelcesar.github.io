# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

coordinator = Corrdinator.create({ name: 'Adenilton José da Silva', 
                                  })
Project.create([{
                title: 'Lorem ipsum dolor sit amet',
                description: 'Hasellus neque purus, 
                              placerat eget nisl sit amet,
                              auctor faucibus lacus. 
                              Aenean ipsum tellus, lacinia id sem sit amet, 
                              imperdiet vulputate turpis. 
                              Quisque odio sem, sagittis at gravida fermentum, 
                              mollis varius mauris. 
                              Praesent sodales leo in tortor varius, 
                              nec rutrum mauris molestie. 
                              Praesent malesuada, justo sed viverra tempor, 
                              dui lectus faucibus diam, 
                              vel hendrerit eros lacus vulputate lectus.',
                coordinator: coordinator
                }, 
                {
                  title: 'Consectetur adipiscing elit', 
                  description: 'Donec tristique tincidunt efficitur. 
                                Fusce vitae euismod eros, sed interdum erat. 
                                Interdum et malesuada fames ac ante ipsum primis in faucibus.
                                In hac habitasse platea dictumst. 
                                Donec mi dolor, elementum quis nunc at, varius vehicula eros.
                                Nam et pellentesque magna, non fermentum neque.',
                  coordinator: coordinator
                }])


authors = Author.create([
                        {name: 'Lex Bradshaw'},
                        {name: 'Hawwa Bouvet'},
                        {name: 'Ceara Baird'}, 
                        {name: 'Mercedes Richards'},
                        {name: 'Liliana Rice'}, 
                        {name: 'Micah Lowe'}, 
                        {name: 'Kingston Herring'}, 
                        {name: 'Gideon Chase'}, 
                        {name: 'Ernie Travers'}, 
                        {name: 'Meg Cotton'}
                        ])

publications = Publication.create([
                                   {
                                     title: 'Publication 1',
                                     publication_place: 'asdasdasda'
                                   },
                                   {
                                    title: 'Publication 2',
                                    publication_place: 'ajdhkasdkjhadkad'
                                    },
                                   {
                                    title: 'Publication 3',
                                    publication_place: 'adaodkaodoakk'
                                    }
                                  ])

publications_authors = PublicationAuthor.create([
                                                 {
                                                   publication: publications[0],
                                                   author: authors[0]
                                                 },
                                                 {
                                                  publication: publications[0],
                                                  author: authors[1]
                                                  },
                                                  {
                                                    publication: publications[0],
                                                    author: authors[2]
                                                  },
                                                  {
                                                    publication: publications[1],
                                                    author: authors[1]
                                                  },
                                                  {
                                                    publication: publications[1],
                                                    author: authors[2]
                                                  },
                                                  {
                                                    publication: publications[1],
                                                    author: authors[3]
                                                  }, 
                                                  {
                                                    publication: publications[2],
                                                    author: authors[2]
                                                  },
                                                  {
                                                    publication: publications[2],
                                                    author: authors[3]
                                                  },
                                                  {
                                                    publication: publications[2],
                                                    author: authors[4]
                                                  },
                                                  {
                                                    publication: publications[2],
                                                    author: authors[5]
                                                  }
                                                 ])

languages = Language.create([
                              {
                                name: 'portuguese'  
                              },
                              {
                                name: 'french'  
                              },
                              {
                                name: 'english'  
                              }
                            ])
