class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    # TODO: your code here to create the posts table
    create_table :posts do |p|
      p.string :title
      p.string :url
      p.timestamps
    end
  end
end
