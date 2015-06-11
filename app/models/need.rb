class Need < ActiveRecord::Base
  validates :tags, presence: true
  belongs_to :user
  has_many :answers
end
