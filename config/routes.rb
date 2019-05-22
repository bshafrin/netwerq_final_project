Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "people#index"
  # Routes for the Company location resource:

  # CREATE
  get("/company_locations/new", { :controller => "company_locations", :action => "new_form" })
  post("/create_company_location", { :controller => "company_locations", :action => "create_row" })

  # READ
  get("/company_locations", { :controller => "company_locations", :action => "index" })
  get("/company_locations/:id_to_display", { :controller => "company_locations", :action => "show" })

  # UPDATE
  get("/company_locations/:prefill_with_id/edit", { :controller => "company_locations", :action => "edit_form" })
  post("/update_company_location/:id_to_modify", { :controller => "company_locations", :action => "update_row" })

  # DELETE
  get("/delete_company_location/:id_to_remove", { :controller => "company_locations", :action => "destroy_row" })
  get("/delete_company_location_from_city/:id_to_remove", { :controller => "company_locations", :action => "destroy_row_from_city" })
  get("/delete_company_location_from_company/:id_to_remove", { :controller => "company_locations", :action => "destroy_row_from_company" })

  #------------------------------

  # Routes for the Contact method resource:

  # CREATE
  get("/contact_methods/new", { :controller => "contact_methods", :action => "new_form" })
  post("/create_contact_method", { :controller => "contact_methods", :action => "create_row" })

  # READ
  get("/contact_methods", { :controller => "contact_methods", :action => "index" })
  get("/contact_methods/:id_to_display", { :controller => "contact_methods", :action => "show" })

  # UPDATE
  get("/contact_methods/:prefill_with_id/edit", { :controller => "contact_methods", :action => "edit_form" })
  post("/update_contact_method/:id_to_modify", { :controller => "contact_methods", :action => "update_row" })

  # DELETE
  get("/delete_contact_method/:id_to_remove", { :controller => "contact_methods", :action => "destroy_row" })

  #------------------------------

  # Routes for the Outreach resource:

  # CREATE
  get("/outreaches/new", { :controller => "outreaches", :action => "new_form" })
  post("/create_outreach", { :controller => "outreaches", :action => "create_row" })

  # READ
  get("/outreaches", { :controller => "outreaches", :action => "index" })
  get("/outreaches/:id_to_display", { :controller => "outreaches", :action => "show" })

  # UPDATE
  get("/outreaches/:prefill_with_id/edit", { :controller => "outreaches", :action => "edit_form" })
  post("/update_outreach/:id_to_modify", { :controller => "outreaches", :action => "update_row" })

  # DELETE
  get("/delete_outreach/:id_to_remove", { :controller => "outreaches", :action => "destroy_row" })
  get("/delete_outreach_from_outreach_method/:id_to_remove", { :controller => "outreaches", :action => "destroy_row_from_outreach_method" })
  get("/delete_outreach_from_recipient/:id_to_remove", { :controller => "outreaches", :action => "destroy_row_from_recipient" })

  #------------------------------

  # Routes for the City resource:

  # CREATE
  get("/cities/new", { :controller => "cities", :action => "new_form" })
  post("/create_city", { :controller => "cities", :action => "create_row" })

  # READ
  get("/cities", { :controller => "cities", :action => "index" })
  get("/cities/:id_to_display", { :controller => "cities", :action => "show" })

  # UPDATE
  get("/cities/:prefill_with_id/edit", { :controller => "cities", :action => "edit_form" })
  post("/update_city/:id_to_modify", { :controller => "cities", :action => "update_row" })

  # DELETE
  get("/delete_city/:id_to_remove", { :controller => "cities", :action => "destroy_row" })

  #------------------------------

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
  get("/delete_person_from_city/:id_to_remove", { :controller => "people", :action => "destroy_row_from_city" })
  get("/delete_person_from_work_sector/:id_to_remove", { :controller => "people", :action => "destroy_row_from_work_sector" })
  get("/delete_person_from_company/:id_to_remove", { :controller => "people", :action => "destroy_row_from_company" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
