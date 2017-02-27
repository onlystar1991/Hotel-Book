Rails.application.routes.draw do
	resources :hotels
	get 'home/index'
	get 'home/search'
	# post "hotel/book/:id" => "hotel#book"
	devise_for :users
	# match ':hotel/:book/:id', via: [:post]
	match 'hotel/book/:id', controller: 'hotels', action: 'book', via: :post, :as => :book_hotel
	root 'home#index'
end

