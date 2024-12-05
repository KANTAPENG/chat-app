class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image
  
  # バリデーション：送られてきたデータをチェックするもの
  # presence: true：データの中身が空では保存できない
  validates :content, presence: true
end
