class AddFeedbackToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :Feedback, :text
    add_column :posts, :business, :text
    add_column :posts, :tomorrow, :text
  end
end
