class ContactsController < ApplicationController
  def identify
    email, phone_number = params[:email], params[:phone_number]
    link_precedence = determine_link_precedence(email, phone_number)
    contact = Contact.find_or_create_by(email: email, phone_number: phone_number, link_precedence: link_precedence)
    render json: contact
  end

  private

  def determine_link_precedence(email, phone_number)
    if Contact.find_by(email: email).present? || Contact.find_by(phone_number: phone_number).present?
      :secondary
    else
      :primary
    end
  end
end