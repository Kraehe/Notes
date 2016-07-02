class Folder < ActiveRecord::Base
  validates :name, :desc, presence: true
  has_many :notepads
end
