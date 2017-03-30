class EmailsController < ApplicationController
  before_action :set_email, only: :show
  before_action :emails_count, except: :create

  def index
    @emails = Email.received(current_user.id)
  end

  def sent
    @emails = Email.sent(current_user.id)
  end

  def show; end

  def new
    @email = Email.new
  end

  def create
    @email = Email.new(email_params)
    params[:email][:user_ids].reject!(&:blank?)
    @email.users << User.find(params[:email][:user_ids])

    if @email.save
      flash[:notice] = t("general.email.index.notice")
      redirect_to action: :index
    else
      render action: :new
    end
  end

  private

  def emails_count
    @sent_emails_count     = Email.sent(current_user.id).count
    @received_emails_count = Email.received(current_user.id).count
  end

  def set_email
    @email = Email.find(params[:id])
  end

  def email_params
    params.require(:email).permit(
      :subject,
      :body,
      :user_sent_id
    )
  end
end
