OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '222626121237714', '867113ce50671ba61569de7028ad1de4',
  		   :scope => 'email,user_birthday'
end
