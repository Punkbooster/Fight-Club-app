class FightsController < ApplicationController
	before_action :find_fight, only: [:show]

	def new
		@fight = Fight.new
	end

	def show

	end

	def create
		@fight = Fight.new(fight_params)

		@fight.winner = @fight.fighter_1
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
