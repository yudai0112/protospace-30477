class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|

      t.timestamps
      t.text :text, null: false #テキスト
      t.references :user, foreign_key: true #ユーザーID
      t.references :prototype, foreign_key: true #プロトタイプID
    end
  end
end
