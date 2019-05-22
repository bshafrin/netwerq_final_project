Rails.application.routes.draw do
  # Routes for the Work sector resource:

  # CREATE
  get("/work_sectors/new", { :controller => "work_sectors", :action => "new_form" })
  post("/create_work_sector", { :controller => "work_sectors", :action => "create_row" })

  # READ
  get("/work_sectors", { :controller => "work_sectors", :action => "index" })
  get("/work_sectors/:id_to_display", { :controller => "work_sectors", :action => "show" })

  # UPDATE
  get("/work_sectors/:prefill_with_id/edit", { :controller => "work_sectors", :action => "edit_form" })
  post("/update_work_sector/:id_to_modify", { :controller => "work_sectors", :action => "update_row" })

  # DELETE
  get("/delete_work_sector/:id_to_remove", { :controller => "work_sectors", :action => "destroy_row" })

  #------------------------------

  # Routes for the Company resource:

  # CREATE
  get("/companies/new", { :controller => "companies", :action => "new_form" })
  post("/create_company", { :controller => "companies", :action => "create_row" })

  # READ
  get("/companies", { :controller => "companies", :action => "index" })
  get("/companies/:id_to_display", { :controller => "companies", :action => "show" })

  # UPDATE
  get("/companies/:prefill_with_id/edit", { :controller => "companies", :action => "edit_form" })
  post("/update_company/:id_to_modify", { :controller => "companies", :action => "update_row" })

  # DELETE
  get("/delete_company/:id_to_remove", { :controller => "companies", :action => "destroy_row" })

  #------------------------------

  # Routes for the Person resource:

  # CREATE
  get("/people/new", { :controller => "people", :action => "new_form" })
  post("/create_person", { :controller => "people", :action => "create_row" })

  # READ
  get("/people", { :controller => "people", :action => "index" })
  get("/people/:id_to_display", { :controller => "people", :action => "show" })

  # UPDATE
  get("/people/:prefill_with_id/edit", { :controller => "people", :action => "edit_form" })
  post("/update_person/:id_to_modify", { :controller => "people", :action => "update_row" })

  # DELETE
  get("/delete_person/:id_to_remove", { :controller => "people", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
