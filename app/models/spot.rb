class Spot < ActiveRecord::Base
  belongs_to :watercourse

  def self.search(search)
    if search
      where("description LIKE ?", "%#{search}%")
    else
      all
    end
  end
end
