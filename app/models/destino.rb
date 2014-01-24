class Destino < ActiveRecord::Base

  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]
  #include Tire::Model::Search
  #include Tire::Model::Callbacks
  include Rails.application.routes.url_helpers
  liquid_methods :title, :cidade, :dias, :sinfo_price
  validates :title, presence: true,
                    length: { minimum: 5 }
 
  has_one  :cover

  has_many :pacotes_selecionados
  has_many :pacotes, through: :pacotes_selecionados

  accepts_nested_attributes_for :pacotes

  has_many :destino_favoritos
  has_many :users, through: :destino_favoritos
  

  attr_accessor :pacotes_selecionados
  def capa
    self.cover.present? ? self.cover.img : 'roma.jpg'
  end
  

	def cara
    'oi'
  end
  def self.all_nacionais
  		where(tipo: "nacional")
	end
  self.per_page = 10
	def self.all_internacionais
		where(tipo: "internacional")
	end

	def favoritar_destino_url
    	favoritar_path(self)
  	end

  	def desfavoritar_destino_url
    	desfavoritar_path(self)
  	end
    
    def should_generate_new_friendly_id?
        new_record?
    end
    def should_generate_new_friendly_id?
      title_changed?
    end

  	def destino_favorito
  	    #dt = current_user.destinos.where(id: dst.id).first
  	    dt = self.users.where(id: current_user.id).first
  	  if dt.present?
  	    true
  	  else
  	    false
  	  end
  	end
end
