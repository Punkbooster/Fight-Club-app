# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Fighter.destroy_all
Skill.destroy_all

Fighter.create!([ 

	{ id: 1, first_name: "Grave",  last_name: "Robber", description: "The Grave Robber is a versatile and nimble combatant, moving back and forth through the ranks with ease. She strikes without warning and retreats to the shadows, continuing her assault at range. If her throwing daggers and poison darts aren't getting the job done, she can return to the melee, buffed and slinging her pickaxe!", 
		image: File.new("app/assets/images/Grave_Robber.png"), experience: 3 },

	{ id: 2, first_name: "Bounty",  last_name: "Hunter", description: "Sinister and precise, the Bounty Hunter specializes in targeting a single foe to deliver its head for the reward. He has found that simply striking before thinking is an ineffective way to kill, so he has taught himself many ways to take advantage of his foe's vulnerabilities.", image: File.new("app/assets/images/BountyHunter.png"), experience: 1 },

	{ id: 3, first_name: "Plague",  last_name: "Doctor", description: "A doctor, researcher and alchemist who prefers to hang back, eating away at her foes with stacking damage-over-time abilities like toxic clouds & plague-filled grenades. She is equally effective in a support role, blinding and confusing foes while enhancing a party's survival with damage-increasing tonics, and remedies for bleed and blight effects.", 
	image: File.new("app/assets/images/PlagueDoc.png"), experience: 5 },

	{ id: 4, first_name: "Hound",  last_name: "Master", description: "A tough and uncommonly compassionate ex-lawman, the Houndmaster and his faithful Wolfhound work in tandem to bring down their enemies and protect the innocent.Together they stalk the back ranks, bursting forth in a flurry of harrying bleeds, gnashing teeth, and stunning blows. Should the tide of battle turn, the pair can support an ailing party by protecting the weak, and rallying the stressed.", image: File.new("app/assets/images/Hound_Master.png"), experience: 2 }

	])

Skill.create!([

	{ id: 1,  name: "Pick to the Face", level: 3, fighter_id: 1 },
	{ id: 2,  name: "Lunge", level: 2, fighter_id: 1 },
	{ id: 3,  name: "Flashing Daggers", level: 1, fighter_id: 1 },

	{ id: 4,  name: "Collect Bounty", level: 1, fighter_id: 2 },
	{ id: 5,  name: "Mark for Death", level: 5, fighter_id: 2 },
	{ id: 6,  name: "Uppercut", level: 2, fighter_id: 2 },
	{ id: 7,  name: "Come Hither", level: 2, fighter_id: 2 },

	{ id: 8,  name: "Noxious Blast", level: 5, fighter_id: 3 },
	{ id: 9,  name: "Plague Grenade", level: 4, fighter_id: 3 },
	{ id: 10,  name: "Blinding Gas", level: 1, fighter_id: 3 },

	{ id: 11,  name: "Hound's Rush", level: 3, fighter_id: 4 },
	{ id: 12,  name: "Hound's Harry", level: 1, fighter_id: 4 },
	{ id: 13,  name: "Whistle", level: 4, fighter_id: 4 }

	])

p "Created #{Fighter.count} fighters"
p "Created #{Skill.count} skills"
