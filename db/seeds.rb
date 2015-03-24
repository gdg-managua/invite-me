# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
speakers_list = [
  [ "Oscar Cortez", "He is Oscar" ],
  [ "Hansel Miranda", "That's Hänsel" ],
  [ "Victor Vanegas", "I'm V.V." ],
  [ "Another person", "Who knows" ]
]

talks_list = [
	["Android","Let's talk about human robots",1],
	["Apple","Fancy stuff",1],
	["App Engine","Yeah this is google tech",2]
]

place_list = [
	["Ajuapa",12.1251934,-86.2720621,"Umm descripción"],
	["Managua",12.1251934,-86.2720621,"Alguna descripción"]
]
speakers_list.each do | name, bio|
  Speaker.create(name: name, bio: bio )
end

talks_list.each do |title,desc,id|
	Talk.create(title: title, description: desc,speaker_id: id)
end

place_list.each do |name,latitud,longitud,desc|
	Place.create(name: name, latitud: latitud,longitud: longitud,description: desc)
end


