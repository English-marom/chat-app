class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users
  has_many :messages, dependent: :destroy

  validates :name, presence: true

end

✨create branch
master（中心部） → branch（実装した内容で動くかどうか確認）
　　↑　　　　　　　　　　　　　　　　　　 　　↓
✨pull request, merge　　　　　　　　　　　↓
master（中心部） ← branch（実装した内容で動くかどうか確認）
