
Rails.application.routes.draw do
    root 'slack_info#info'
  get '/api', to: 'slack_info#info'
end

