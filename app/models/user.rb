class User < ApplicationRecord
  validates :email, presence: true
  # validate :email_sun_asterisk_format
  validates :email, sun_asterisk_format: { message: "must be in sun-asterisk.com domain" }

  # private

  # def email_sun_asterisk_format
  #   return if email.to_s.match?(/\A([^@\s]+)@(sun-asterisk.com)\z/)

  #   errors.add :email, :invalid
  # end
end

