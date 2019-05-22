require 'rails_helper'

RSpec.describe CompanyLocation, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:company) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
