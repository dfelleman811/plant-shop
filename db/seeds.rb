# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Plant.create([
    {
        common_name: "Fiddle Leaf Fig",
        scientific_name: "ficus lyrata",
        image_url: "plant-logo",
        price: 35.00, 
        quantity: 20
    },
    {
        common_name: "ZZ Plant",
        scientific_name: "zamioculcas zamiifolia",
        image_url: "plant-logo",
        price: 15.00, 
        quantity: 40
    },
    {
        common_name: "Rattle Snake Plant",
        scientific_name: "goeppertia insignis",
        image_url: "plant-logo",
        price: 30.00, 
        quantity: 25
    },
    {
        common_name: "Arrowhead Plant, Pink",
        scientific_name: "syngonium phodophyllum",
        image_url: "plant-logo",
        price: 15.00, 
        quantity: 35
    },
    {
        common_name: "Rubber Fig Tree",
        scientific_name: "ficus elastica",
        image_url: "plant-logo",
        price: 35.00, 
        quantity: 20
    },
    {
        common_name: "Umbrella Fig Tree",
        scientific_name: "ficus umbellata",
        image_url: "plant-logo",
        price: 35.00, 
        quantity: 20
    },
    {
        common_name: "Tineke Fig Tree",
        scientific_name: "ficus elastica tineke",
        image_url: "plant-logo",
        price: 35.00, 
        quantity: 20
    }
])