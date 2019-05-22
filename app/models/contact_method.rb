class ContactMethod < ApplicationRecord
  # Direct associations

  has_many   :outreaches,
             :foreign_key => "outreach_method_id",
             :dependent => :nullify

  # Indirect associations

  # Validations

end
