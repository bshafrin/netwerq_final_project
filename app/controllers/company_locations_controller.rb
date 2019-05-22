class CompanyLocationsController < ApplicationController
  def index
    @company_locations = CompanyLocation.all

    render("company_location_templates/index.html.erb")
  end

  def show
    @company_location = CompanyLocation.find(params.fetch("id_to_display"))

    render("company_location_templates/show.html.erb")
  end

  def new_form
    @company_location = CompanyLocation.new

    render("company_location_templates/new_form.html.erb")
  end

  def create_row
    @company_location = CompanyLocation.new

    @company_location.company_id = params.fetch("company_id")
    @company_location.city_id = params.fetch("city_id")

    if @company_location.valid?
      @company_location.save

      redirect_back(:fallback_location => "/company_locations", :notice => "Company location created successfully.")
    else
      render("company_location_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_company
    @company_location = CompanyLocation.new

    @company_location.company_id = params.fetch("company_id")
    @company_location.city_id = params.fetch("city_id")

    if @company_location.valid?
      @company_location.save

      redirect_to("/companies/#{@company_location.company_id}", notice: "CompanyLocation created successfully.")
    else
      render("company_location_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_city
    @company_location = CompanyLocation.new

    @company_location.company_id = params.fetch("company_id")
    @company_location.city_id = params.fetch("city_id")

    if @company_location.valid?
      @company_location.save

      redirect_to("/cities/#{@company_location.city_id}", notice: "CompanyLocation created successfully.")
    else
      render("company_location_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @company_location = CompanyLocation.find(params.fetch("prefill_with_id"))

    render("company_location_templates/edit_form.html.erb")
  end

  def update_row
    @company_location = CompanyLocation.find(params.fetch("id_to_modify"))

    @company_location.company_id = params.fetch("company_id")
    @company_location.city_id = params.fetch("city_id")

    if @company_location.valid?
      @company_location.save

      redirect_to("/company_locations/#{@company_location.id}", :notice => "Company location updated successfully.")
    else
      render("company_location_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_company
    @company_location = CompanyLocation.find(params.fetch("id_to_remove"))

    @company_location.destroy

    redirect_to("/companies/#{@company_location.company_id}", notice: "CompanyLocation deleted successfully.")
  end

  def destroy_row_from_city
    @company_location = CompanyLocation.find(params.fetch("id_to_remove"))

    @company_location.destroy

    redirect_to("/cities/#{@company_location.city_id}", notice: "CompanyLocation deleted successfully.")
  end

  def destroy_row
    @company_location = CompanyLocation.find(params.fetch("id_to_remove"))

    @company_location.destroy

    redirect_to("/company_locations", :notice => "Company location deleted successfully.")
  end
end
