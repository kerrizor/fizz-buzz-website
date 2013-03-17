FizzBuzzWebsite::Application.routes.draw do

  root :to => 'fb_service#index'

  match '/index',        :to => 'fb_service#index'
  match '/fizzbuzz/:id', :to => 'fb_service#fizzbuzz'
  match '/fizzbuzz-api', :to => 'fb_service#fizzbuzz_api'
end
