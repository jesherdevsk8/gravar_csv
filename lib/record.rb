# frozen_string_literal: true

require_relative 'record/version'
require_relative 'record/data'

class Document
  def self.write(path, data = [])
    Record::Data.new(path, data)
  end
end
