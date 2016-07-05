class Folder < ActiveRecord::Base
  validates :name, :desc, presence: true
  has_many :notepads
  belongs_to :user
  default_scope -> {order(:id)}
  scope :visible, -> {where(visible:true)}
  scope :hidden, -> {where(visible:false)}

end
