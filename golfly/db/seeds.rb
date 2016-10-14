# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# default set of data for users
default_users = [
	{
		fname: "Hillary",
		lname: "Clinton",
		email: "hillary.clinton@democratic.com"
	},{
		fname: "Bernie",
		lname: "Sanders",
		email: "feelthebern@independent.com"
	},{
		fname: "Jill",
		lname: "Stein",
		email: "jill.stein@green.com"
	},{
		fname: "Donald",
		lname: "Trump",
		email: "donald.trump@republican.com"
	}]

# default set of data for tournaments
default_tournaments = [
	{
		title: "Skule Golf Cup",
		location: "UTSU Lawn",
		description: "Play golf while do charity on our very own UTSU lawn"
	}, {
		title: "Michael Stumm Gold Cup",
		location: "King's College Circle",
		description: "Play golf while do charity on our very own King's College Circle"
	}, {
		title: "BMW PGA Championship",
		location: "Virginia Water, Surrey, UK",
		description: "Raise money for kids fighting cancer"
	}]

# delete to avoid duplicate
User.destroy_all(fname: default_users.map do |u| u[:fname] end)
Tournament.destroy_all(title: default_tournaments.map do |u| u[:title] end)

# add to db
users = User.create(default_users)
tournaments = Tournament.create(default_tournaments)

  # create_table "tournaments", force: :cascade do |t|
  #   t.string   "title"
  #   t.string   "location"
  #   t.datetime "start"
  #   t.datetime "end"
  #   t.text     "description"
  #   t.datetime "created_at",  null: false
  #   t.datetime "updated_at",  null: false
  # end