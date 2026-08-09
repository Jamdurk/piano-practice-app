Rails.application.routes.draw do
  get "/practice_sessions", to: "practice_sessions#index"
  get "/practice_sessions/:id", to: "practice_sessions#show"
  post "/practice_sessions", to: "practice_sessions#create"

  get "/stats", to: "stats#show"
end
