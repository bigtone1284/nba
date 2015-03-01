class TeamsController < ApplicationController

	def index
		@teams = Team.all
		respond_to do |format|
			format.html { render nothing: :true }
			format.json { render json: @teams }
		end
	end

	def show
		@team = Team.find(params[:id])
		respond_to do |format|
			format.html { render nothing: :true }
			format.json { render json: @team }
		end
	end

	def players
		binding.pry
		@players = (Team.find_by team_abbrev: params[:team_abbrev]).players
		respond_to do |format|
			format.html { render nothing: :true }
			format.json { render json: @players }
		end
	end

end