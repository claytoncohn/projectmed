class Watch < ActiveRecord::Base
  
  belongs_to :watcher, :class_name => 'User', :foreign_key => "user_id"
  belongs_to :watched_item, :class_name => 'Item', :foreign_key => "item_id"
end
