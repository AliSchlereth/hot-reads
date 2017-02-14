class Link < ApplicationRecord

  def self.top_ten
    where('updated_at > ?', 24.hours.ago).order(updated_at: :desc).limit(10)
  end
end
