Rails.application.routes.draw do

  root  "lyrics#baa"
  get   "hush.html" => "lyrics#hush"
  get   "sixpence.html" => "lyrics#sixpence"

end
