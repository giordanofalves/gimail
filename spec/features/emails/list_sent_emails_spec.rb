require "rails_helper"

RSpec.describe "List sent emails", type: :feature do
  describe "User see list of sent emails in GImail" do
    before do
      user   = create(:user)
      @email = create(:email, :with_users, user_sent_id: user.id )

      sign_in_helper(user)
      visit sent_emails_path
    end

    it "User see list of emails" do
      expect(page).to have_content(@email.subject)
      expect(page).to have_content(@email.users.first.name)
    end

    it "User click on email" do
      first(:link, @email.users.first.name).click

      expect(page).to have_content(@email.subject)
      expect(page).to have_content(@email.body)
    end
  end
end
