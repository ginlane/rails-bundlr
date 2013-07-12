# == Schema Information
#
# Table name: bundlr_users
#
#  id                  :integer          not null, primary key
#  email               :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  password_digest     :string(255)
#  remember_token      :string(255)
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

module Bundlr
  class User < ActiveRecord::Base
    attr_accessible :email, :password, :password_confirmation, :avatar
    has_secure_password
    has_many :projects

    has_attached_file :avatar, styles: {
        thumb: '100x100>',
        square: '200x200#',
        medium: '300x300>'
    }

    before_save { |user| user.email = email.downcase }
    before_save :create_remember_token

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    validates :password, presence: true, length: { minimum: 6 }
    validates :password_confirmation, presence: true
    after_validation { self.errors.messages.delete(:password_digest) }

    private
        def create_remember_token
            self.remember_token = SecureRandom.urlsafe_base64
        end
        
  end
end
