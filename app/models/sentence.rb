class Sentence < ActiveRecord::Base
  validates :text, presence: true

  def say
    spawn('say', '-v', 'kyoko', text)
  end
end
