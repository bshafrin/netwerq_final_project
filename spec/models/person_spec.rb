require 'rails_helper'

RSpec.describe Person, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:work_sector) }

    it { should belong_to(:company) }

    it { should have_many(:outreaches) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
