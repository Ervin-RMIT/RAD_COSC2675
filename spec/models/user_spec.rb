require 'rails_helper'

RSpec.describe User, type: :model do
    subject { User.new(name: "Example User", 
                          email: "user@example.com",
                          password: "test123",
                          password_confirmation: "test123") }
                          
    it { is_expected.to be_valid }
    
    it 'should have name present' do
        subject.name = "    "
        expect(subject).to_not be_valid
    end
end

