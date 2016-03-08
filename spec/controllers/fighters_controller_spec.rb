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

	describe "DELETE #destroy" do
		it "destroys the requested fighter" do
			@fighter = FactoryGirl.create(:fighter)
			expect {
				delete :destroy, {id: @fighter.to_param}
			}.to change(Fighter, :count).by(-1)
		end

		it "redirects to the fighters list" do
			@fighter = FactoryGirl.create(:fighter)
			delete :destroy, {id: @fighter.to_param}
			expect(response).to redirect_to(root_url)
		end
	end

=begin
	describe "#create method" do

		it "creates fighter" do

			expect {
				post :create, @fighter = FactoryGirl.create(:fighter) 
			}.to change(Fighter, :count).by(1)
		end
	end

	describe "GET #edit" do
		it "assigns the requested fighter as fighter" do
			@fighter = FactoryGirl.create(:fighter)
			get :edit, {id: @fighter.to_param}
			expect(controller.fighter).to eq @fighter
		end
	end

=end

end