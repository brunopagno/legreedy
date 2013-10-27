require 'spec_helper'

describe User do

  context "validations" do
    it { should validate_presence_of :email }
    it { should validate_presence_of :name }
  end

  context "associations" do
    it { should have_many :transactions }
  end

end
