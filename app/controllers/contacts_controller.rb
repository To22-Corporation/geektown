class ContactsController < ApplicationController
  def new
    @contact = current_user.user_contacts.new
  end

  def confirm_new
    @contact = current_user.user_contacts.new(contact_params)
    render :new unless @contact.valid?
  end

  def create
    @contact = current_user.user_contacts.new(contact_params)

    if params[:back].present?
      render :new
      return
    end

    if @contact.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:engineer_id, :language_id, :content)
  end

end
