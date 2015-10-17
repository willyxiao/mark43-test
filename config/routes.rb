Rails.application.routes.draw do
  root 'main#index'
  
  post 'words/avg_len' => 'words#avg_len'
  post 'words/most_com' => 'words#most_com'
  post 'words/median' => 'words#median'

  post 'phones' => 'phones#index'
  
  post 'sentences/avg_len' => 'sentences#avg_len'
  
end
