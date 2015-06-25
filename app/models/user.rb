class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :omniauthable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauth_providers => [ :facebook ]

  has_many :bookings, dependent: :destroy
  has_many :flats, dependent: :destroy

  has_attached_file :avatar,
      styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :avatar,
      content_type: /\Aimage\/.*\z/

  after_create :send_welcome_email

  def self.find_for_facebook_oauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.name = auth.info.name
      user.avatar = process_uri(auth.info.image) if auth.info.image?
      user.token = auth.credentials.token
      user.token_expiry = Time.at(auth.credentials.expires_at)
    end
  end

  def self.process_uri(uri)
    avatar_url = URI.parse(uri)
    avatar_url.scheme = 'https'
    avatar_url.to_s
  end

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end
end
