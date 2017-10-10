Rails.application.routes.draw do
	match '/sums', :to => 'sums#sums', :via => [:post]
	match '/filters', :to => 'filters#math', :via => [:post]
	match '/intervals', :to => 'intervals#interval', :via => [:post]
	match '/lin_regressions', :to => 'linear#math', :via => [:post]
	#post '/filters' => 'filters#calc'
	#post '/intervals' => 'intervals#calc'
	#post '/lin_regressions' => 'lin_regressions#calc'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
