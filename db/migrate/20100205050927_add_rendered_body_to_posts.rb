class AddRenderedBodyToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :rendered_body, :text
  end

  def self.down
    remove_column :posts, :rendered_body
  end
end
