class CreateJoinTableCompaniesTags < ActiveRecord::Migration[5.2]
  def change
    create_join_table :companies, :tags do |t|
      t.index [:company_id, :tag_id]
      t.index [:tag_id, :company_id]
    end
  end
end
