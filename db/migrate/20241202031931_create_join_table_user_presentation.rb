class CreateJoinTableUserPresentation < ActiveRecord::Migration[8.0]
  def change
    create_join_table :users, :presentations do |t|
      # t.index [:user_id, :presentation_id]
      # t.index [:presentation_id, :user_id]
    end
  end
end
