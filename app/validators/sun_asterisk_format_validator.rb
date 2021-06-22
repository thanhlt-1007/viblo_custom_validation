class SunAsteriskFormatValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value && value.match?(/\A([^@\s]+)@(sun-asterisk.com)\z/)

    record.errors.add attribute, :invalid_sun_asterisk_format
  end
end
