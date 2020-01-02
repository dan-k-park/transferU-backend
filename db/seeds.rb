require_relative '../config/environment'
require 'rest-client'

response = RestClient.get("http://localhost:8100/colleges?order=name&page=1,10000&transform=1")

allSchools = JSON.parse(response)["colleges"]

filteredSchools = allSchools.filter do |school|
  !school["address"]["addressRegion"].include?("PR") && !school["name"].include?("Opportunity") && !school["name"].include?("WyoTech") && !school["name"].include?("Colleges") && !school["name"].include?("Industr") && !school["name"].include?("College of") && !school["name"].include?("Beth ") && !school["name"].include?("Berea") && !school["name"].include?("Aveda") && !school["name"].include?("Pharma") && !school["name"].include?("Media") && !school["name"].include?("ILSC") && !school["name"].include?("Antonelli") && !school["name"].include?("Graduate") && !school["name"].include?("Educators") && !school["name"].include?("Upper Bucks") && !school["name"].include?("Paul Mitchell") && !school["name"].include?("Studies") && !school["name"].include?("Divinity") && !school["name"].include?("Learning") && !school["name"].include?("De Anza") && !school["name"].include?("International") && !school["name"].include?("OISE") && !school["name"].include?("Visual") && !school["name"].include?("Concordia") && !school["name"].include?("Ballet") && !school["name"].include?("Public") && !school["name"].include?("Boat") && !school["name"].include?(" Inc") && !school["name"].include?("Construction") && !school["name"].include?("Conservatory") && !school["name"].include?("Group") && !school["name"].include?("Radio") && !school["name"].include?("Online") && !school["name"].include?("Auto") && !school["name"].include?("Albany-Schoharie-Schenectady BOCES") && !school["name"].include?("Therap") && !school["name"].include?("Air") && !school["name"].include?("ACT") && !school["name"].include?("AmsEd") && !school["name"].include?("ACE") && !school["name"].include?("AmeriTech") && !school["name"].include?("Theatre") && !school["name"].include?("Management") && !school["name"].include?("Make") && !school["name"].include?("Defense") && !school["name"].include?("Institute for") && !school["name"].include?("Blind") && !school["name"].include?("Inc.") && !school["name"].include?("inlingua") && !school["name"].include?("ICDC") && !school["name"].include?("Truck") && !school["name"].include?("National") && !school["name"].include?("Tomorrow")  && !school["name"].include?("Esthetics") && !school["name"].include?("Theolo") && !school["name"].include?("Partner") && !school["name"].include?("Beis Medrash Heichal Dovid") && !school["name"].include?("Rabbinical") && !school["name"].include?("English") && !school["name"].include?("Yeshiva") && !school["name"].include?("Services")  && !school["name"].include?("Access") && !school["name"].include?("Professional") && !school["name"].include?("Associates") && !school["name"].include?("Office") && !school["name"].include?("Collective") && !school["name"].include?("Applied") && !school["name"].include?("Midwife") && !school["name"].include?("Trade") && !school["name"].include?("Mechanical") && !school["name"].include?("Agricultural") && !school["name"].include?("ABCO") && !school["name"].include?("Nail") && !school["name"].include?("Bible") && !school["name"].include?("Beauty") && !school["name"].include?("Solutions") && !school["name"].include?("Aaniiih") && !school["name"].include?("Aviation") && !school["name"].include?("Optometry") && !school["name"].include?("Clinic") && !school["name"].include?("Ultrasound") && !school["name"].include?("Internship") && !school["name"].include?("Association") && !school["name"].include?("Program") && !school["name"].include?("Village") && !school["name"].include?("Children") && !school["name"].include?("Hair") && !school["name"].include?("Massage") && !school["name"].include?("Occupation") && !school["name"].include?("Recording") && !school["name"].include?("Dental") && !school["name"].include?("LLC") && !school["name"].include?("Medical") && !school["name"].include?("Nursing") && !school["name"].include?("Church") && !school["name"].include?("Oriental") && !school["name"].include?("Therapy") && !school["name"].include?("Advanced") && !school["name"].include?("Health") && !school["name"].include?("Hospital") && !school["name"].include?("Vocational") && !school["name"].include?("Health") && !school["name"].include?("Academy") && !school["name"].include?("Medicine") && !school["name"].include?("Technical") && !school["name"].include?("Adult") && !school["name"].include?("Community") && !school["name"].include?("Career") && !school["name"].include?("Cosmetology") && !school["name"].include?("Dentistry") && !school["name"].include?("Barber") && !school["name"].include?("Training") && !school["name"].include?("Commercial") && !school["name"].include?("Culinary") && !school["name"].include?("Center") && !school["name"].include?("Teacher") && !school["name"].include?("Care") && !school["name"].include?("Residency") && !school["name"].include?("General") && !school["name"].include?("Practice") && !school["name"].include?("Education") && !school["name"].include?("Ocular") && !school["name"].include?("Ocular") && !school["name"].include?("Seminary") && !school["name"].include?("Language")   
end

filteredSchools.each do |school|
  name = school["name"]
  address = school["address"]["streetAddress"] + " " + school["address"]["addressRegion"] + " " + school["address"]["postalCode"]
  state = school["address"]["addressRegion"]

  School.create(name: name, address: address, state: state)
end

User.create(username: 'user1', password: 'words')
User.create(username: 'user2', password: 'words')
User.create(username: 'user3', password: 'words')

Profile.create(name: 'Dan Park', age: 23, bio: 'I have no idea what I\'m doing, someone please help. Ahhhhhhhh', avatarURL: 'https://pbs.twimg.com/media/DhYNqnGUYAAr6cC.jpg', school_id: 2929, user_id: 1)
Profile.create(name: 'Pan Dark', age: 32, bio: 'I need an ice pack, IMMEDIATELY.', avatarURL: 'https://pbs.twimg.com/media/DhYNqnGUYAAr6cC.jpg', school_id: 3115, user_id: 2)

Category.create(name: 'Outdoor')
Category.create(name: 'Social')
Category.create(name: 'Athletic')
Category.create(name: 'Academic')
Category.create(name: 'Other')

Event.create(name: 'Pick Up Pennies', date: '12-25-2019', description: 'We\'ll be picking up pennies on the ground. Make sure they aren\'t actually holes so you don\'t fall in.', location: '1411 4th Ave Seattle, WA 98101', attendees: 0, category_id: 2, school_id: 2929, user_id: 1)
Event.create(name: 'Cycling Burke-Gilman', date: '1-21-2019', description: 'Meet up to cycle down the trail.  There\'re plenty of Lime bikes lying around for those who don\'t have their own bike.', location: 'Northeast Seattle Seattle, WA 98105', attendees: 0, category_id: 1, school_id: 2929, user_id: 1)
Event.create(name: 'Basketball!', date: '1-15-2019', description: 'Looking for a group of people to run casual games.  No tryhards please.', location: '3924 Montlake Blvd NE, Seattle, WA 98195', attendees: 0, category_id: 3, school_id: 2929, user_id: 3)
Event.create(name: 'Country Roads', date: '4-12-1971', description: 'Country roads, take me home, to the place I belong. West Virginia, mountain mama, take me home, country roads', location: 'Shenandoah River', attendees: 0, category_id: 5, school_id: 3115, user_id: 2)
Event.create(name: 'Pike Place Meetup', date: '12-29-2019', description: 'Out-of-state student looking for a group of people to explore the city with!  I figured Pike\'s would be a good place to start.', location: 'Pike St Seattle, WA 98101', attendees: 0, category_id: 2, school_id: 2929, user_id: 3)


