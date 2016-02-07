Spree::Core::Engine.add_routes do
  resources :contacts, :controller => 'contact_us/contacts', :only => [:new, :create]
  # scope "/:locale", locale: /#{I18n.available_locales.join("|")}/ do
  #   get 'contact-us' => 'contact_us/contacts#new', :as => :contact_us_localize
  # end   
  get 'contact-us' => 'contact_us/contacts#new', :as => :contact_us
end
