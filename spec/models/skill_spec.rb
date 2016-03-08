require 'rails_helper'
require 'spec_helper'

RSpec.describe Skill, type: :model do

	context "Valid factory" do
		it "has a valid factory" do
			expect(FactoryGirl.build(:skill)).to be_valid
		end 
	end

	context "Skill responds to attributes" do
		it { is_expected.to respond_to :name } #check if Fighter has first_name attribute
		it { is_expected.to respond_to :level }
	end

	context "Associations" do 
		it { is_expected.to belong_to(:fighter) }
	end

end