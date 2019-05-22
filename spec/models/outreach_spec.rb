require 'rails_helper'

RSpec.describe Outreach, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:outreach_method) }

    it { should belong_to(:recipient) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
