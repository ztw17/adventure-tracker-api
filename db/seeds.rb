Activity.destroy_all
Tag.destroy_all
ActivityTag.destroy_all
User.destroy_all

# Users
user1 = User.create(first_name: "Zach", last_name: "Weber", email: "zach@email.io", location: "Denver, CO", username: "ztw", password: BCrypt::Password.create("muirwoods"))
user2 = User.create(first_name: "Paul", last_name: "Bramos",email: "paul@email.io", location: "Denver, CO", username: "pauljb", password: BCrypt::Password.create("olympicnational"))

# Activities
activity1 = Activity.create(name: "Mt. Lady Washington & Storm Peak", location: "Allenspark, CO", trail: ["Longs Peak Trail", "The Boulderfield"], distance: 12.05, elevation_gain: 4432, date: "2023-06-14", notes: "Completely dry below 11,500', then patchy snow above. No true path to Mt. Lady Washington or Storm Peak.", user_id: user1.id)
activity2 = Activity.create(name: "Twin Sisters Peak", location: "Boulder, CO", trail: ["Gross Reservoir Trail", "CR 68J"], distance: 6.8, elevation_gain: 1299, date: "2023-06-19", notes: "Hike along the county road to avoid private property. Look closely where the trail splits off from the road.", user_id: user2.id)

# Tags
tag1 = Tag.create(name: "forested")
tag2 = Tag.create(name: "scrambling")
tag3 = Tag.create(name: "challenging")
tag4 = Tag.create(name: "moderate")
tag5 = Tag.create(name: "water crossings")
tag6 = Tag.create(name: "gorgeous")

# ActivityTags
ActivityTag.create(activity_id: activity2.id, tag_id: tag1.id)
ActivityTag.create(activity_id: activity1.id, tag_id: tag2.id)
ActivityTag.create(activity_id: activity1.id, tag_id: tag5.id)
ActivityTag.create(activity_id: activity2.id, tag_id: tag6.id)