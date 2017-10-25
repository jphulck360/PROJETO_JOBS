class AddAttachmentFotoCurrToCurriculums < ActiveRecord::Migration
  def self.up
    change_table :curriculums do |t|
      t.attachment :foto_curr
    end
  end

  def self.down
    remove_attachment :curriculums, :foto_curr
  end
end
