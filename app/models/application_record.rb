class ApplicationRecord < ActiveRecord::Base #ここでApplicationRecordにActiveRecordを継承
  self.abstract_class = true     
end