characters = [
    {
        "name": "Luke Skywalker",
        "height": "172",
        "gender": "male",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "Revenge of the Sith"
        ],
        "species": [],
        "vehicles": [
            "T-47 Airspeeder",
            "Imperial Speeder Bike"
        ],
        "starships": [
            "T-65 X-Wing",
            "Lambda-class T-4A Shuttle"
        ]
    },
    {
        "name": "C-3PO",
        "height": "167",
        "gender": "n/a",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "The Phantom Menace",
            "Attack of the Clones",
            "Revenge of the Sith"
        ],
        "vehicles": [],
        "starships": [],
    },
    {
        "name": "R2-D2",
        "height": "96",
        "gender": "n/a",
        "homeworld": "Naboo",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "The Phantom Menace",
            "Attack of the Clones",
            "Revenge of the Sith"
        ],
        "vehicles": [],
        "starships": [],
    },
    {
        "name": "Darth Vader",
        "height": "202",
        "gender": "male",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "Revenge of the Sith"
        ],
        "vehicles": [],
        "starships": [
            "TIE Advanced x1"
        ]
    },
    {
        "name": "Leia Organa",
        "height": "150",
        "gender": "female",
        "homeworld": "Alderaan",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "Revenge of the Sith"
        ],
        "vehicles": [
            "74-Z speeder bike"
        ],
        "starships": []
    },
    {
        "name": "Owen Lars",
        "height": "178",
        "gender": "male",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope",
            "Attack of the Clones",
            "Revenge of the Sith"
        ],
        "vehicles": [],
        "starships": [],
    },
    {
        "name": "Beru Whitesun lars",
        "height": "165",
        "gender": "female",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope",
            "Attack of the Clones",
            "Revenge of the Sith"
        ],
        "vehicles": [],
        "starships": []
    },
    {
        "name": "R5-D4",
        "height": "97",
        "gender": "n/a",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope"
        ],
        "vehicles": [],
        "starships": [],
    },
    {
        "name": "Biggs Darklighter",
        "height": "183",
        "gender": "male",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope"
        ],
        "vehicles": [],
        "starships": [
            "T-65 X-wing"
        ]
    },
    {
        "name": "Obi-Wan Kenobi",
        "height": "182",
        "gender": "male",
        "homeworld": "Stewjon",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "The Phantom Menace",
            "Attack of the Clones",
            "Revenge of the Sith"
        ],
        "vehicles": [
            "Tribubble Bongo"
        ],
        "starships": [
            "Delta-7 Aethersprite-class interceptor",
            "Providence-class Carrier/destroyer",
            "J-type Naboo Star Skiff",
            "Eta-2 Actis-class Light Interceptor",
            "Belbullab-22 Starfighter"
        ]
    },
    {
        "name": "Han Solo",
        "height": "180",
        "gender": "male",
        "homeworld": "Corellia",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi"
        ],
        "vehicles": [],
        "starships": [
            "Millennium Falcon",
            "Lambda-class T-4a shuttle"
        ]
    },
    {
        "name": "Chewbacca",
        "height": "228",
        "gender": "male",
        "homeworld": "Kashyyyk",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "Revenge of the Sith"
        ],
        "vehicles": [
            "All Terrain Scout Transport"
        ],
        "starships": [
            "Millennium Falcon",
            "Lambda-class T-4a shuttle"
        ]
    },
    {
        "name": "Lando Calrissian",
        "height": "177",
        "gender": "male",
        "homeworld": "Socorro",
        "films": [
            "The Empire Strikes Back",
            "Return of the Jedi"
        ],
        "vehicles": [],
        "starships": [
            "Millennium Falcon"
        ],
    }
]


# Challenge #1 

# Get a unique list of the homeworlds

# ["Tatooine", "Naboo", "Alderaan" ... ]

homeworlds = characters.map { |character| character[:homeworld] }.uniq
#p homeworlds

# characters.each do |character|
#     homeworlds << character[:homeworld] # key is in quotes but is still a symbol
# end
# p homeworlds.uniq


# Challenge #2

# Get a list of the characters who have starships

# ["Luke Skywalker", "Darth Vader", "Biggs Darklighter" ... ]

chars_with_starships = []
characters.each do |character|
    chars_with_starships << character[:name] unless character[:starships].empty?
end

#p chars_with_starships
# CHALLENGE #3

# Create a new hash such that each character points to their collection of starships: 

# {
#     "Luke Skywalker" => ["T-65 X-Wing", "Lambda-class T-4A Shuttle"],
#     "C-3PO" => [],
#     "R2-D2" => [],
#     "Darth Vader" => ["TIE Advanced x1"]
#     ...
#     ...
#     ...
# }
starships_collection = {}
# accessed each nested hash, use the value of each :name key and assign the new keys of the new hash those values 
# and the values equal to the array of the starships
characters.each do |character|
    starships_collection[character[:name]] = character[:starships]
end

#p starships_collection


# Challenge #4 

# Create a new hash such that each movie points to a collection of characters 

# {
#     "A New Hope" => ["Luke Skywalker", "C-3PO", ... ],
#     "The Empire Strikes Back" => ["Luke Skywalker", "C-3PO" ... ], 
#      ...
#      ...
#      ...
# }


films = []
films_one_d = []
characters.each do |h|
    films << h[:films]
end

films.each do |sub_array|
    sub_array.each do |i|
        films_one_d.push(i) unless films_one_d.include?(i)
    end
end

films_one_d
char_hash = {}

characters.each do |h|
    char_hash[h[:name]] = h[:films]
end

char_hash
movie_chars_hash = {}

films_one_d.each do |ele|
    movie_chars_hash[ele] = []
end

#movie_chars_hash

# steps:
# created array containing all movies
# created new Hash with characters as keys and their films as name values as arrays
# Created new empty hash 
# Assigned elements from movies array as keys in new Hash
# Iterated through character/film Hash, checked for truthy value, then updated Hash

char_hash.each do |k, v|
    for i in films_one_d
        if v.include?(i)
            #movie_chars_hash[films_one_d[0]].push(char_hash.key(v)) unless movie_chars_hash[films_one_d[0]].include?(char_hash.key(v))
            movie_chars_hash[i] << char_hash.key(v) unless movie_chars_hash[i].include?(char_hash.key(v))
        end
    end 
    movie_chars_hash
end

p movie_chars_hash