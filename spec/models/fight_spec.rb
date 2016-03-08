require 'rails_helper'
require 'spec_helper'

RSpec.describe Fight, type: :model do

	context "Valid factory" do
		it "has a valid factory" do
			expect(FactoryGirl.build(:fight)).to be_valid
		end 
	end

	context "Fight responds to attributes" do
		it { is_expected.to respond_to :fighter_1 } #check if Fighter has first_name attribute
		it { is_expected.to respond_to :fighter_2 }
	end

	context "Associations" do 
		it { is_expected.to belong_to(:fighter_1) }
		it { is_expected.to belong_to(:fighter_2) }
		it { is_expected.to belong_to(:winner) }
	end

end