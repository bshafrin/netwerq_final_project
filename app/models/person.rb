class Person < ApplicationRecord
  # Direct associations

  has_many   :outreaches,
             :foreign_key => "recipient_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
