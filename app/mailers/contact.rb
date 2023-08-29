class Contact < ApplicationRecord
  # Validations
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  # Enums
  enum link_precedence: %i[primary secondary]
end