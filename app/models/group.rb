class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users

  has_one_attached :image

  validates :name, presence: true
  validates :introduction, presence: true

  def get_image(width, height)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/noimage-group.png')
      image.attach(io: File.open(file_path), filename: 'no-image.png', content_type: 'image/png')
    end
    image.variant(resize_to_limit: [width, height]).processed
  end
end
