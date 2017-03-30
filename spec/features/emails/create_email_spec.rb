require "rails_helper"

RSpec.describe "Create email", type: :feature do
  describe "User can create email in GImail" do
    let(:email)    { build(:email) }
    let(:received) { create(:user) }

    before do
      sign_in_helper(received)
      visit new_email_path
    end

    it "User create email and redirect to index" do
      select(received.name, from: "email_user_ids", visible: false)
      fill_in :email_subject, with: email.subject
      fill_in :email_body, with: email.body

      click_button I18n.t("simple_form.general.email.submit")

      expect(page).to have_content(I18n.t("general.email.index.notice"))
    end

    it "User create email with invalid value" do
      select(received.name, from: "email_user_ids", visible: false)
      fill_in :email_body, with: email.body

      click_button I18n.t("simple_form.general.email.submit")

      expect(page).to have_content("Please review the problems below")
    end
  end
end
