Rails.application.routes.draw do
  get '/jobs/job_salary', to: 'jobs#sorted_salary'
  get '/jobs/ordered_names', to: 'jobs#ordered_names'
  get '/jobs/ordered_interviews', to: 'jobs#ordered_interviews'
  get '/jobs/ordered_applications', to: 'jobs#ordered_applications'
  resources :jobs, except: [:update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
