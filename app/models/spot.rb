class Spot < ActiveRecord::Base
    belongs_to :watercourse

  def upvote
    self.votes ||= 0
    self.votes += 1
  end
end
