class Sentence < ActiveRecord::Base
  validates :text, presence: true

  def say
    `say -v kyoko #{text}`
  end
end
