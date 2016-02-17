class FightersController < ApplicationController
	before_action :find_fighter, only: [:show, :edit, :update, :destroy]

	def index 
		@fighter = Fighter.all.order("created_at DESC")
	end

	def show
	end

	def new
		@fighter = Fighter.new
	end

	def create 
		@fighter = Fighter.new(fighter_params)

		if @fighter.save
			redirect_to @fighter
		else
			render 'new'
		end
	end

	def edit

	end

	def update
		if @fighter.update(fighter_params)
			redirect_to @fighter
		else
			render 'edit'
		end
	end

	def destroy
		@fighter.destroy
		redirect_to root_path
	end

	private

	def find_fighter
		@fighter = Fighter.find(params[:id])
	end

	def fighter_params
		params.require(:fighter).permit(:first_name, :last_name, :description, :image)
	end
end
