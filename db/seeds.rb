require_relative '../config/environment'
require 'rest-client'

response = RestClient.get("http://localhost:8100/colleges?order=name&page=1,10000&transform=1")

allSchools = JSON.parse(response)["colleges"]

filteredSchools = allSchools.filter do |school|
  !school["name"].include?("Beauty") && !school["name"].include?("Optometry") && !school["name"].include?("Clinic") && !school["name"].include?("Ultrasound") && !school["name"].include?("Internship") && !school["name"].include?("Association") && !school["name"].include?("Program") && !school["name"].include?("Village") && !school["name"].include?("Children") && !school["name"].include?("Hair") && !school["name"].include?("Massage") && !school["name"].include?("Occupation") && !school["name"].include?("Recording") && !school["name"].include?("Dental") && !school["name"].include?("LLC") && !school["name"].include?("Medical") && !school["name"].include?("Nursing") && !school["name"].include?("Church") && !school["name"].include?("Oriental") && !school["name"].include?("Therapy") && !school["name"].include?("Advanced") && !school["name"].include?("Health") && !school["name"].include?("Hospital") && !school["name"].include?("Vocational") && !school["name"].include?("Health") && !school["name"].include?("Academy") && !school["name"].include?("Medicine") && !school["name"].include?("Technical") && !school["name"].include?("Adult") && !school["name"].include?("Community") && !school["name"].include?("Career") && !school["name"].include?("Cosmetology") && !school["name"].include?("Dentistry") && !school["name"].include?("Barber") && !school["name"].include?("Training") && !school["name"].include?("Commercial") && !school["name"].include?("Culinary") && !school["name"].include?("Center") && !school["name"].include?("Teacher") && !school["name"].include?("Care") && !school["name"].include?("Residency") && !school["name"].include?("General") && !school["name"].include?("Practice") && !school["name"].include?("Education") && !school["name"].include?("Ocular") && !school["name"].include?("Ocular") && !school["name"].include?("Seminary") && !school["name"].include?("Language")   
end

filteredSchools.each do |school|
  name = school["name"]
  address = school["address"]["streetAddress"] + " " + school["address"]["addressRegion"] + " " + school["address"]["postalCode"]

  School.create(name: name, address: address)
end

User.create(username: 'gmact61', password: 'words')

Profile.create(name: 'Dan Park', age: 23, bio: 'I have no idea what I\'m doing, someone please help. Ahhhhhhhh', avatarURL: 'https://pbs.twimg.com/media/DhYNqnGUYAAr6cC.jpg', school_id: 3957, user_id: 1)

Category.create(name: 'Outdoor')
Category.create(name: 'Social')
Category.create(name: 'Athletic')
Category.create(name: 'Academic')
Category.create(name: 'Other')

Event.create(name: 'Pick Up Pennies', date: '12-25-2019', description: 'We\'ll be picking up pennies on the ground. Make sure they aren\'t actually holes so you don\'t fall in.', location: '1411 4th Ave Seattle, WA 98101', attendees: 0, category_id: 2)
Event.create(name: 'Cycling Burke-Gilman', date: '1-21-2019', description: 'Meet up to cycle down the trail.  There\'re plenty of Lime bikes lying around for those who don\'t have their own bike.', location: 'Northeast Seattle Seattle, WA 98105', attendees: 0, category_id: 1)
Event.create(name: 'Basketball!', date: '1-15-2019', description: 'Looking for a group of people to run casual games.  No tryhards please.', location: '3924 Montlake Blvd NE, Seattle, WA 98195', attendees: 0, category_id: 3)
Event.create(name: 'Country Roads', date: '4-12-1971', description: 'Country roads, take me home, to the place I belong. West Virginia, mountain mama, take me home, country roads', location: 'Shenandoah River', attendees: 0, category_id: 5)
Event.create(name: 'Pike Place Meetup', date: '12-29-2019', description: 'Out-of-state student looking for a group of people to explore the city with!  I figured Pike\'s would be a good place to start.', location: 'Pike St Seattle, WA 98101', attendees: 0, category_id: 2)

