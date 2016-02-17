class SkillsController < ApplicationController

	def create
		@fighter = Fighter.find(params[:fighter_id])
		@skill = @fighter.skills.create(params[:skill].permit(:name, :level))

		if @skill.save
			redirect_to fighter_path(@fighter)
		else
			render 'new'
		end
	end

	def edit 
		@fighter = Fighter.find(params[:fighter_id])
		@skill = @fighter.skills.find(params[:id])
	end

	def update
		@fighter = Fighter.find(params[:fighter_id])
		@skill = @fighter.skills.find(params[:id])

		if @skill.update(params[:skill].permit(:name, :level))
			redirect_to fighter_path(@fighter)
		else
			render 'edit'
		end
	end	

	def destroy
		@fighter = Fighter.find(params[:fighter_id])
		@skill = @fighter.skills.find(params[:id])
		@comment.destroy
		redirect_to fighter_path(@fighter)
	end

end
