class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :profile # pertence a UM perfil
  has_one :curriculum # tem UM currículo
  has_many :phones # tem MUITOS telefones
  has_many :jobs # tem MUITOS trabalhos

end
