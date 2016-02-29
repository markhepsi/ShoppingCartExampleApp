class Product < ActiveRecord::Base
  has_many :order_items
  belongs_to :category

  default_scope { where(active: true) }
  has_attached_file :image,
                  styles: { thumb: ["86x86>", :jpg],
                  original: ["1000x1000>", :jpg] },
                  convert_options: { thumb: "-quality 75 -strip",
                                     original: "-quality 85 -strip" }

  validates_attachment :image,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end



