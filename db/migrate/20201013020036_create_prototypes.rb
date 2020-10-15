class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|

      t.timestamps
      t.string :title, null: false #タイトル名
      t.text :catch_copy, null: false #キャッチコピー
      t.text :concept, null: false #コンセプト
      t.references :user, foreign_key: true #ユーザー
    end
  end
end
