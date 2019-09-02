require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user){User.new('email': 'test@testington.com', 'password': 'password')}


  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }

  describe "#is_password?" do
    it 'checks for correct password' do
      expect(user.is_password?('password')).to be true
    end

    it 'returns false if given the wrong password' do
      expect(user.is_password?('username')).to be false
    end
  end

  describe "#reset_session_token!" do
    it 'creates a new session token' do
      session_token1 = user.session_token
      user.reset_session_token!

      expect(user.session_token).to_not eq(session_token1)
    end
  end

  describe "::find_by_credentials" do
    it 'returns the user with matching credentials' do
      user.save!
      expect(User.find_by_credentials('test@testington.com', 'password')).to eq(user)
    end

    it 'returns nil if no user exists with that email and password' do
      expect(User.find_by_credentials('tester@tester.com', 'password')).to eq(nil)
    end
  end


end
