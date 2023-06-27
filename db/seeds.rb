User.destroy_all
Activity.destroy_all

# Users
user1 = User.create(first_name: "Zach", last_name: "Weber", email: "zach@email.io", location: "Denver, CO", username: "ztw", password: BCrypt::Password.create("muirwoods"))
user2 = User.create(first_name: "Paul", last_name: "Bramos",email: "paul@email.io", location: "Denver, CO", username: "pauljb", password: BCrypt::Password.create("olympicnational"))

# Activities
Activity.create(name: "Mt. Lady Washington & Storm Peak", location: "Allenspark, CO", trail: ["Longs Peak Trail", "The Boulderfield"], distance: 12.05, elevation_gain: 4432, date: "2023-06-14", notes: "Completely dry below 11,500', then patchy snow above. No true path to Mt. Lady Washington or Storm Peak.", user_id: user1.id)
Activity.create(name: "Twin Sisters Peak", location: "Boulder, CO", trail: ["Gross Reservoir Trail", "CR 68J"], distance: 6.8, elevation_gain: 1299, date: "2023-06-19", notes: "Hike along the county road to avoid private property. Look closely where the trail splits off from the road.", user_id: user2.id)