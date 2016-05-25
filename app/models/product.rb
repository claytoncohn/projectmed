class Product < ActiveRecord::Base
  has_many :watches
  has_many :watchers, :through => :watches
  has_attached_file :image, styles: {main: "800x300>", thumb: "320x150>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  def self.search(search)
    where("name LIKE ? OR description LIKE ? OR category LIKE ? OR id LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
  end
end
