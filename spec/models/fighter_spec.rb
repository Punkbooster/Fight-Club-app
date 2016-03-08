require 'rails_helper'
require 'spec_helper'

RSpec.describe Fighter, type: :model do

	context "Valid factory" do
		it "has a valid factory" do
			expect(FactoryGirl.build(:fighter)).to be_valid
		end 

		it "invalid factory if first_name is blank" do
			expect(FactoryGirl.build(:fighter, first_name: '')).to_not be_valid
		end 

		it "invalid factory if last_name is blank" do
			expect(FactoryGirl.build(:fighter, last_name: '')).to_not be_valid
		end 
	end


	context "Fighter responds to attributes" do
		it { is_expected.to respond_to :first_name } #check if Fighter has first_name attribute
		it { is_expected.to respond_to :last_name }
		it { is_expected.to respond_to :description }
		it { is_expected.to respond_to :image }
		it { is_expected.to respond_to :experience }
	end

	context "Associations" do
		it { is_expected.to have_many(:skills) }
	end

	context "Validations" do
		it { is_expected.to validate_presence_of(:first_name) }
		it { is_expected.to validate_presence_of(:last_name) }
		it { is_expected.to validate_presence_of(:description) }
		it { is_expected.to validate_presence_of(:image) }
	end

end