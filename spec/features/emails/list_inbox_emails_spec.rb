require "rails_helper"

RSpec.describe "List inbox emails", type: :feature do
  describe "User see list of inbox emails in GImail" do
    before do
      @email = create(:email, :with_users)

      sign_in_helper(@email.users.first)
      visit emails_path
    end

    it "User see list of emails" do
      expect(page).to have_content(@email.subject)
      expect(page).to have_content(@email.user_sent.name)
    end

    it "User click on email" do
      first(:link, @email.user_sent.name).click

      expect(page).to have_content(@email.subject)
      expect(page).to have_content(@email.body)
    end
  end
end
