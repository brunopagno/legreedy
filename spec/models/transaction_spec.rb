require 'spec_helper'

describe Transaction do

  context 'validations' do
    it { should validate_presence_of :user_id }
    it { should validate_presence_of :way }
    it { should validate_presence_of :value }
    it { should validate_presence_of :date }
  end

  context 'associations' do
    it { should belong_to :user }
  end

end
