Rxngif::Application.routes.draw do
  #Read
  get("/picture_details/:id", { :controller => "pictures", :action => "show" })
  get("/all_pictures", { :controller => "pictures", :action => "index" })

  #Create
  get("/new_picture_form", { :controller => "pictures", :action => "new" })
  get("/create_picture", { :controller => "pictures", :action => "create" })
  
end
