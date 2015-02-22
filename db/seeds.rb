# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'open-uri'
Team.destroy_all
Player.destroy_all


teams = Nokogiri::HTML(
    open(
        'http://www.basketball-reference.com/leagues/NBA_2015.html'
        )
    )
.css('table#team tr')[1..30]

teams.each do |team|
    Team.create({
		team_name: 								team.css('td')[1].text,
		team_page: 								team.css('td')[1].css('a')[0]['href'],
		games_played: 						team.css('td')[2].text,
		field_goals:                  team.css('td')[4].text,
        field_goals_attempted: 		team.css('td')[5].text,
        three_pointers: 					team.css('td')[7].text,
        three_pointers_attempted: team.css('td')[8].text,
        two_pointers: 						team.css('td')[10].text,
        two_pointers_attempted: 	team.css('td')[11].text,
        free_throws: 							team.css('td')[13].text,
        free_throws_attempted: 		team.css('td')[14].text,
        offensive_rebounds: 			team.css('td')[16].text,
        defensive_rebounds: 			team.css('td')[17].text,
        assists: 									team.css('td')[19].text,
        steals: 									team.css('td')[20].text,
        blocks: 									team.css('td')[21].text,
        turnovers: 								team.css('td')[22].text,
       	personal_fouls: 					team.css('td')[23].text
	})
end

Team.all do |team|
    
end
