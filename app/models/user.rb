class User < ActiveRecord::Base
  has_many :destino_favoritos
  has_many :destinos, -> { uniq }, through: :destino_favoritos
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.email = auth.info.email
      user.foto = auth.info.image
      user.local = auth.info.location
      user.datanasc = auth.extra.raw_info.birthday
      user.sexo = auth.extra.raw_info.gender
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

  def favoritos
    self.destinos

  end
end

# user = User.last <= Pega ultimo usuário cadastrado
# destino = Destino.last <= Pega ultimo Destino Cadastrado
# user.destino_favoritos.create(destino: destino) <= Favoritar o destino para o Usuario Selecionado
# user.destinos <= Mostrar todos os destinos favoritado pelo usuario