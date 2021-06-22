class SunAsteriskFormatValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value && value.match?(/\A([^@\s]+)@(sun-asterisk.com)\z/)

    record.errors.add attribute, (options[:message] || :invalid)
  end
end
