class ContactsController < ApplicationController
  def new
    @contact = current_user.contacts.new
  end

  def create
    @contact = current_user.contacts.new(contact_params)
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
