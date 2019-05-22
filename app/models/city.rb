class City < ApplicationRecord
  # Direct associations

  has_many   :people,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
