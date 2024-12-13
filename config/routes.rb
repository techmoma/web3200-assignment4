Rails.application.routes.draw do
  # Set the root route
  root 'tables#index'

  # Route for form submission
  post 'tables/generate', to: 'tables#generate'

  # Define other routes
  get 'tables/index'

  # Health check route
  get 'up' => 'rails/health#show', as: :rails_health_check

  # PWA routes
  get 'service-worker' => 'rails/pwa#service_worker', as: :pwa_service_worker
  get 'manifest' => 'rails/pwa#manifest', as: :pwa_manifest
end