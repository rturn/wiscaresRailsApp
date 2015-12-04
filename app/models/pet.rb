class Pet < ActiveRecord::Base
  has_attached_file :photo, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }, default_url: "http://s3.amazonaws.com/wiscares/GenericPetIcon.png"

  def photo_url
    photo.url(:thumb)
  end

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
