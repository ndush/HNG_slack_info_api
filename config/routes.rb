
Rails.application.routes.draw do
  get '/api', to: 'slack_info#info'
end

