class AddAttachmentFotoCToCareers < ActiveRecord::Migration
  def self.up
    change_table :careers do |t|
      t.attachment :foto_c
    end
  end

  def self.down
    remove_attachment :careers, :foto_c
  end
end
