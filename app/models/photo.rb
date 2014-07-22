class Photo < ActiveRecord::Base
  validates_presence_of :filename
  scope :with_file_type_jpg,-> { where("filename like '%.jpg'")}
  scope :with_thumbnail, -> {where("thumbnail not null and thumbnail != ''")}
  scope :with_filetype, lambda {|ftype| where(["filename like ?","%.#{ftype}"])}
  has_many :slides
  has_and_belongs_to_many :categories
end
