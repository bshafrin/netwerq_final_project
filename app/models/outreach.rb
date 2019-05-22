class Outreach < ApplicationRecord
  # Direct associations

  belongs_to :recipient,
             :class_name => "Person",
             :counter_cache => true

  # Indirect associations

  # Validations

end
