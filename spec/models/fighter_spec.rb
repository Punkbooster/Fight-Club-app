require 'rails_helper'
require 'spec_helper'

RSpec.describe Fighter, type: :model do

	let(:fighter) { FactoryGirl.create(:fighter) }

	it { is_expected.to respond_to :first_name }
	it { is_expected.to respond_to :last_name }
	it { is_expected.to respond_to :description }
	it { is_expected.to respond_to :image }
	it { is_expected.to respond_to :experience }

	it "checks created fighter" do
		@fighter = FactoryGirl.create(:fighter)
		visit 'fighters/1'
		#visit '/' Visit root
		save_and_open_page
	end

end