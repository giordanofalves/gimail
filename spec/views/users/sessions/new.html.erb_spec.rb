require "rails_helper"

include UserHelper
include DeviseHelpers
include ApplicationHelper

RSpec.describe "users/sessions/new.html.erb", type: :view do
  before do
    render
  end

  it "displays general info" do
    expect(rendered).to have_content(t("devise.login"))
    expect(rendered).to have_content(t("devise.login_description"))
  end

  it "display login form" do
    expect(rendered).to have_field(:user_email)
    expect(rendered).to have_field(:user_password)
  end

  it "display links" do
    expect(rendered).to have_link(t("devise.sign_up"))
    expect(rendered).to have_link(t("devise.sign_in.forgot_password?"))
  end
end
