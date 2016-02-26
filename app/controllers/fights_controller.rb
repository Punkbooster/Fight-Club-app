class FightsController < ApplicationController
	before_action :find_fight, only: [:show]

	def new
		@fight = Fight.new
	end

	def show

	end

	def create
		@fight = Fight.new(fight_params)

		if @fight.fighter_1.experience > @fight.fighter_2.experience
			@fight.winner = @fight.fighter_1
			@fight.winner.experience += 1
			@fight.winner.wins += 1
			@fight.fighter_2.losses += 1

			@fight.fighter_2.save
			@fight.winner.save
			
		elsif @fight.fighter_2.experience > @fight.fighter_1.experience
			@fight.winner = @fight.fighter_2
			@fight.winner.experience += 1
			@fight.winner.wins += 1
			@fight.fighter_1.losses += 1
			
			@fight.fighter_1.save
			@fight.winner.save
		else
		end

		if @fight.save

			redirect_to @fight
			
		else
			render 'new'
		end
	end

	private

	def find_fight 
		@fight = Fight.find(params[:id])
	end

	def fight_params
		params.require(:fight).permit(:fighter_1_id, :fighter_2_id, :winner)
	end

end
