class User < ApplicationRecord
  validates :email, presence: true

  validate :email_sun_asterisk_format

  private

  def email_sun_asterisk_format
    return if email.to_s.match?(/\A([^@\s]+)@(sun-asterisk.com)\z/)

    errors.add :email, :invalid
  end
end
