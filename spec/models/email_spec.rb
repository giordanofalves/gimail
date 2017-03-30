require "rails_helper"

RSpec.describe Email, type: :model do
  describe "Should Respond" do
    it { should respond_to(:subject) }
    it { should respond_to(:body) }
    it { should respond_to(:user_sent_id) }
    it { should respond_to(:created_at) }
    it { should respond_to(:updated_at) }
  end

  describe "Validations" do
    it { should validate_presence_of(:subject) }
    it { should validate_presence_of(:body) }
  end

  describe "Associations" do
    it { have_and_belong_to_many :emails }
  end

  describe "Factory" do
    let(:email) { build(:email) }

    it { expect(email).to be_a Email }
    it { expect(email).to be_valid }
  end
end
