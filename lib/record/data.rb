# frozen_string_literal: true

require 'csv'
require 'pry-byebug'

module Record
  class Data
    attr_accessor :file, :data

    # Parameters:
    #   file - Name of the CSV file to be created. If it's null or empty, the default value
    #          '/tmp/default_file.csv' will be used.
    #   data - An array of hashes containing the data to be written to the CSV file (mandatory).
    #
    # Usage example:
    #   file = 'my_data.csv'
    #   data = [{ name: 'Alice', age: 30 }, { name: 'Bob', age: 25 }]
    #   Record::Data.new(file, dados)
    def initialize(file, data = [{}])
      return unless data_is_valid?(data)

      file = default_file(file)

      Data.create(file, data)
    end

    def self.create(file, data)
      create_csv = lambda { |csv_file, value|
        CSV.open(csv_file, 'wb') do |csv|
          csv << value.map(&:keys)[0]

          value.each do |row|
            csv << row.values
          end
        end

        puts "Arquivo CSV '#{csv_file}' criado com sucesso!"
      }

      create_csv.call(file, data)
    end

    private

    def data_is_valid?(data)
      data = data[0..2].split('') if data.is_a?(String)
      data.all? { |hash| !hash.values.all?(&:nil?) if hash.is_a?(Hash) } && data.any?
    end

    def default_file(file)
      "#{file.nil? || file.empty? ? '/tmp/default_file' : file}.csv"
    end
  end
end
