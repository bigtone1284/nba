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
).css('table#team tr')[1..30]

teams.each do |team|
  Team.create({
		team_name: 							    		team.css('td')[1].text,
		team_page: 											team.css('td')[1].css('a')[0]['href'],
    team_abbrev:                    team.css('td')[1].css('a')[0]['href'][7..9],
		games_played: 							    team.css('td')[2].text,
		field_goals:                    team.css('td')[4].text,
    field_goals_attempted: 		      team.css('td')[5].text,
    field_goal_percentage:          team.css('td')[6].text,
    three_pointers: 							  team.css('td')[7].text,
    three_pointers_attempted:       team.css('td')[8].text,
    three_point_percentage:         team.css('td')[9].text,
    two_pointers: 						 	   	team.css('td')[10].text,
    two_pointers_attempted: 	      team.css('td')[11].text,
    two_point_percentage:           team.css('td')[12].text,
    free_throws: 										team.css('td')[13].text,
    free_throws_attempted: 		      team.css('td')[14].text,                       
    free_throw_percentage:          team.css('td')[15].text,
    offensive_rebounds: 		        team.css('td')[16].text,
    defensive_rebounds: 		        team.css('td')[17].text,
    rebounds:                       team.css('td')[18].text,
    assists: 										    team.css('td')[19].text,
    steals: 												team.css('td')[20].text,
    blocks: 												team.css('td')[21].text,
    turnovers: 											team.css('td')[22].text,
   	personal_fouls: 					    	team.css('td')[23].text,
    points:                         team.css('td')[24].text
	})
end

Team.all.each do |team|
  roster = Nokogiri::HTML(
    open('http://www.basketball-reference.com' +
      team.team_page
    )
  ).css('table#totals tr')[1..-1]
  roster.each do |player|
    Player.create({
      name:                       player.css('td')[1].text,
      age:                        player.css('td')[2].text,
      games:                      player.css('td')[3].text,
      games_started:              player.css('td')[4].text,
      minutes:                    player.css('td')[5].text,
      field_goals:                player.css('td')[6].text,
      field_goals_attempted:      player.css('td')[7].text,
      field_goal_percentage:      player.css('td')[8].text,
      three_pointers:             player.css('td')[9].text,
      three_pointers_attempted:   player.css('td')[10].text,
      three_point_percentage:     player.css('td')[11].text,  
      two_pointers:               player.css('td')[12].text,
      two_pointers_attempted:     player.css('td')[13].text,
      two_point_percentage:       player.css('td')[14].text,
      effective_fg_percentage:    player.css('td')[15].text,  
      free_throws:                player.css('td')[16].text,
      free_throws_attempted:      player.css('td')[17].text,
      free_throw_percentage:      player.css('td')[18].text,
      offensive_rebounds:         player.css('td')[19].text,
      defensive_rebounds:         player.css('td')[20].text,
      rebounds:                   player.css('td')[21].text,
      assists:                    player.css('td')[22].text,
      steals:                     player.css('td')[23].text,
      blocks:                     player.css('td')[24].text,
      turnovers:                  player.css('td')[25].text,
      personal_fouls:             player.css('td')[26].text,
      points:                     player.css('td')[27].text,
      team:                       team
    })
  end
end
