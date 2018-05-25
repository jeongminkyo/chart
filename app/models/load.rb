class Load < ActiveRecord::Base
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      load = Load.new(date: row[0], home: row[1], ev: row[2], sun: row[3])
      load.save
    end
  end
end
