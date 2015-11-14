class AddPhotoToPets < ActiveRecord::Migration
   def self.up
    add_attachment :pets, :photo
  end

  def self.down
    remove_attachment :pets, :photo
  end
end
