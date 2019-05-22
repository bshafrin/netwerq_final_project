require 'rails_helper'

RSpec.describe City, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:company_locations) }

    it { should have_many(:people) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
