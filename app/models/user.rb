class User < ApplicationRecord
  validates :last_seen_at, presence: true
  rolify
  acts_as_voter
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy
  has_many :created_events, class_name: 'Event', foreign_key: 'user_id', dependent: :destroy
  has_many :user_events, dependent: :destroy
  has_many :events, :through => :user_events
  has_many :user_courses, dependent: :destroy
  has_many :courses, :through => :user_courses
  has_many :moderator_roles, dependent: :destroy
  has_many :moderator_requests, dependent: :destroy
  has_many :sender_messages, class_name: 'Message', foreign_key: 'sender_id', dependent: :destroy
  has_many :receiver_messages, class_name: 'Message', foreign_key: 'receiver_id', dependent: :destroy
  after_create :assign_default_role
  has_many :favorites, dependent: :destroy
  has_many :favorite_posts, through: :favorites, source: :favorited, source_type: 'Post'
  has_many :comments, dependent: :destroy

  def assign_default_role
    self.add_role(:newuser) if self.roles.blank?
  end
  mount_uploader :image, ImageUploader

  def self.search(search)
    if search
        user = User.where('name like ?', '%' + search.capitalize + '%')
        if user
            self.where(id: user)
        else
            User.none
        end
    else
        User.none
    end
  end
end
