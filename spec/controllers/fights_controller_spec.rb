require 'rails_helper'
require 'spec_helper'

RSpec.describe FightsController, type: :controller do

	describe "GET #new" do
		it "returns http success" do
			get :new
			expect(response).to have_http_status(:success)
		end
	end

=begin
	describe "GET #show" do
		it "assigns the requested fight as fight" do
			fight = FactoryGirl.create(:fight)
			get :show, {id: fight.to_param}
			expect(controller.fight).to eq(fight)
		end
	end
=end	

end