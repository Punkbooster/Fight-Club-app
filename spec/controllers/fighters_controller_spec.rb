require 'rails_helper'
require 'spec_helper'

RSpec.describe FightersController, type: :controller do

	describe "GET #index" do
		it "returns http success" do
			get :index
			expect(response).to have_http_status(:success)
		end
		it "renders index template" do
			get :index
			expect(response).to render_template(:index)
		end
	end

	describe "GET #new" do
		it "returns http success" do
			get :new
			expect(response).to have_http_status(:success)
		end
	end

	describe "GET #show" do
		before(:each) do
			@fighter = FactoryGirl.create(:fighter)
			@fighter.save!
		end
		it "returns http success" do
			get :show, id: @fighter.id
			expect(response).to have_http_status(:success)
		end
	end

end