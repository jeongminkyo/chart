class Load < ActiveRecord::Base
  validates :date, :sun, :home, :ev, presence: true
  require 'csv'

  def self.import(file)
    message = ''
    begin
      CSV.foreach(file.path, headers: true) do |row|
        load = Load.new(date: row[0], home: row[1], ev: row[2], sun: row[3])
        load.save!
        message = 'succeess upload'
      end
    rescue
      message = 'fail to upload'
    end
    message
  end
end
