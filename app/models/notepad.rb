class Notepad < ActiveRecord::Base
  validates :text, :url, presence: true
  belongs_to :folder
  def make_me_big
      self.text.upcase.reverse
  end

end
