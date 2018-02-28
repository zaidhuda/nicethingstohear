class NiceThing < ApplicationRecord
  extend FriendlyId
  friendly_id :text, use: :slugged
  
  validates :text,
            presence: true,
            length: { maximum: 100, minimum: 7 }

  scope :enabled, -> { where(enabled: true) }
  scope :disabled, -> { where(enabled: false) }

  def self.random
    self.find self.ids.sample
  end
end
