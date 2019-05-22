class Company < ApplicationRecord
  # Direct associations

  has_many   :company_locations,
             :dependent => :destroy

  has_many   :people,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
