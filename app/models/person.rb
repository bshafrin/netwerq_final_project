class Person < ApplicationRecord
  # Direct associations

  belongs_to :work_sector,
             :required => false,
             :counter_cache => true

  belongs_to :company,
             :required => false,
             :counter_cache => true

  has_many   :outreaches,
             :foreign_key => "recipient_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
