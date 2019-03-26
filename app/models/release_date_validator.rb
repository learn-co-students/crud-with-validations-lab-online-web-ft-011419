require 'date'

class ReleaseDateValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if record.released == true
      if value.blank?
        record.errors.add attribute, (options[:message] || "must give a release year if the song has been released")
      elsif value > Date::today.year
        record.errors.add attribute, (options[:message] || "release year must not be in the future")
      end
    end
  end
end
