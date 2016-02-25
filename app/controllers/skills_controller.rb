class SkillsController < ApplicationController
	before_action :find_fighter, only: [:create, :edit, :update, :destroy]
	before_action :find_skill, only: [:edit, :update, :destroy]

	def create
		@skill = @fighter.skills.create(params[:skill].permit(:name, :level))

		if @skill.save
			redirect_to fighter_path(@fighter)
		else
			render 'new'
		end
	end

	def edit 

	end

	def update
		if @skill.update(params[:skill].permit(:name, :level))
			redirect_to fighter_path(@fighter)
		else
			render 'edit'
		end

	end	

	def destroy
		@skill.destroy
		redirect_to fighter_path(@fighter)
	end

private
	
	def find_fighter
		@fighter = Fighter.find(params[:fighter_id])
	end

	def find_skill
		@skill = @fighter.skills.find(params[:id])
	end

end
