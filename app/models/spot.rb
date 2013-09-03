class Spot < ActiveRecord::Base
    belongs_to :watercourse

  def upvote
    self.votes ||= 0
    self.votes += 1
  end

  def self.search(search)
    if search
      where("description LIKE ?", "%#{search}%")
    else
      all
    end
  end
end
