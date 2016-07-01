class Notepad < ActiveRecord::Base

  def make_me_big
      self.text.upcase.reverse
  end

end
