Prefix Verb   URI Pattern                                     Controller#Action
story_sentences GET    /stories/:story_id/sentences(.:format)          sentences#index
       POST   /stories/:story_id/sentences(.:format)          sentences#create
new_story_sentence GET    /stories/:story_id/sentences/new(.:format)      sentences#new
edit_story_sentence GET    /stories/:story_id/sentences/:id/edit(.:format) sentences#edit
story_sentence GET    /stories/:story_id/sentences/:id(.:format)      sentences#show
       PATCH  /stories/:story_id/sentences/:id(.:format)      sentences#update
       PUT    /stories/:story_id/sentences/:id(.:format)      sentences#update
       DELETE /stories/:story_id/sentences/:id(.:format)      sentences#destroy
stories GET    /stories(.:format)                              stories#index
       POST   /stories(.:format)                              stories#create
new_story GET    /stories/new(.:format)                          stories#new
edit_story GET    /stories/:id/edit(.:format)                     stories#edit
 story GET    /stories/:id(.:format)                          stories#show
       PATCH  /stories/:id(.:format)                          stories#update
       PUT    /stories/:id(.:format)                          stories#update
       DELETE /stories/:id(.:format)                          stories#destroy
