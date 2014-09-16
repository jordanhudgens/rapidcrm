class Lead < ActiveRecord::Base
  
  def self.import(file)
    CSV.foreach(file.path, headers:true) do |row|
      Lead.create!(row.to_hash)
    end
  end
  
  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |lead|
        csv << lead.attributes.values_at(*column_names)
      end
    end
  end
  
  
end
