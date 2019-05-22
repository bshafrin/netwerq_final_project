class Outreach < ApplicationRecord
  # Direct associations

  belongs_to :outreach_method,
             :class_name => "ContactMethod",
             :counter_cache => true

  belongs_to :recipient,
             :class_name => "Person",
             :counter_cache => true

  # Indirect associations

  # Validations

end
