class Need < ActiveRecord::Base
  #已经有user_id价格belongsto有啥后果？
  validates :tags, presence: true
  belongs_to :user
end
