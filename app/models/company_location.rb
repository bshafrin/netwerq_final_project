class CompanyLocation < ApplicationRecord
  # Direct associations

  belongs_to :company,
             :counter_cache => true

  # Indirect associations

  # Validations

end
