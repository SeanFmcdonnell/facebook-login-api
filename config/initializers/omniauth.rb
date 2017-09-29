OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1962567130656245', '7b2cef82972d3c00bb25ecee3985e7bb', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end
