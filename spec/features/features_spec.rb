require 'rails_helper'
require 'spec_helper'

RSpec.describe "Perform fight", type: feature do

	it "Create fighters & skills, create fight" do
		visit '/fighters/new'

		fill_in 'fighter[first_name]', with: 'Grave'
		fill_in 'fighter[last_name]', with: 'Robber'
		fill_in 'fighter[description]', with: 'Some sample description'
		attach_file('Image', 'app/assets/images/Grave_Robber.png')
		click_button 'Create Fighter'

		fill_in 'skill[name]', with: 'Peak to the Face'
		select 3, from: 'skill[level]'
		click_button 'Create Skill'

		expect(page).to have_text('Grave')
		expect(page).to have_text('Robber')
		expect(page).to have_text('Some sample description')
		expect(page).to have_text('Peak to the Face')

		visit'/fighters/new'

		fill_in 'fighter[first_name]', with: 'Bounty'
		fill_in 'fighter[last_name]', with: 'Hunter'
		fill_in 'fighter[description]', with: 'Some sample description 2'
		attach_file('Image', 'app/assets/images/BountyHunter.png')
		click_button 'Create Fighter'

		fill_in 'skill[name]', with: 'Collect Bounty'
		select 2, from: 'skill[level]'
		click_button 'Create Skill'

		expect(page).to have_text('Bounty')
		expect(page).to have_text('Hunter')
		expect(page).to have_text('Some sample description 2')
		expect(page).to have_text('Collect Bounty')
		
		visit '/fights/new'
		select 'Grave Robber', from: 'fight[fighter_1_id]'
		select 'Bounty Hunter', from: 'fight[fighter_2_id]'
		click_button 'Create Fight'

		expect(page).to have_text('Winner is: Grave Robber')
		expect(page).to have_text('His experience is: 1')
		expect(page).to have_text('Wins 1 : 0 Losses')

		click_link 'DARKEST DUNGEON'
		expect(page).to have_text('Grave Robber')
		expect(page).to have_text('Bounty Hunter')

		#save_and_open_page

	end	

end