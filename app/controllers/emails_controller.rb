class EmailsController < ApplicationController
  before_action :set_email, only: :show

  def index
    @emails = Email.all
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
