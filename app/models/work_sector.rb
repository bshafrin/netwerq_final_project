class WorkSector < ApplicationRecord
  # Direct associations

  has_many   :people,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
