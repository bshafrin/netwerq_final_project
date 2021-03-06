class PeopleController < ApplicationController
  def index
    @q = Person.ransack(params[:q])
    @people = @q.result(:distinct => true).includes(:outreaches, :company, :work_sector, :city).page(params[:page]).per(10)

    render("person_templates/index.html.erb")
  end

  def show
    @outreach = Outreach.new
    @person = Person.find(params.fetch("id_to_display"))

    render("person_templates/show.html.erb")
  end

  def new_form
    @person = Person.new

    render("person_templates/new_form.html.erb")
  end

  def create_row
    @person = Person.new

    @person.name = params.fetch("name")
    @person.title = params.fetch("title")
    @person.company_id = params.fetch("company_id")
    @person.relationship = params.fetch("relationship")
    @person.work_sector_id = params.fetch("work_sector_id")
    @person.city_id = params.fetch("city_id")
    @person.email = params.fetch("email")
    @person.phone_number = params.fetch("phone_number")
    @person.contacts = params.fetch("contacts")

    if @person.valid?
      @person.save

      redirect_back(:fallback_location => "/people", :notice => "Person created successfully.")
    else
      render("person_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_company
    @person = Person.new

    @person.name = params.fetch("name")
    @person.title = params.fetch("title")
    @person.company_id = params.fetch("company_id")
    @person.relationship = params.fetch("relationship")
    @person.work_sector_id = params.fetch("work_sector_id")
    @person.city_id = params.fetch("city_id")
    @person.email = params.fetch("email")
    @person.phone_number = params.fetch("phone_number")
    @person.contacts = params.fetch("contacts")

    if @person.valid?
      @person.save

      redirect_to("/companies/#{@person.company_id}", notice: "Person created successfully.")
    else
      render("person_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_work_sector
    @person = Person.new

    @person.name = params.fetch("name")
    @person.title = params.fetch("title")
    @person.company_id = params.fetch("company_id")
    @person.relationship = params.fetch("relationship")
    @person.work_sector_id = params.fetch("work_sector_id")
    @person.city_id = params.fetch("city_id")
    @person.email = params.fetch("email")
    @person.phone_number = params.fetch("phone_number")
    @person.contacts = params.fetch("contacts")

    if @person.valid?
      @person.save

      redirect_to("/work_sectors/#{@person.work_sector_id}", notice: "Person created successfully.")
    else
      render("person_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_city
    @person = Person.new

    @person.name = params.fetch("name")
    @person.title = params.fetch("title")
    @person.company_id = params.fetch("company_id")
    @person.relationship = params.fetch("relationship")
    @person.work_sector_id = params.fetch("work_sector_id")
    @person.city_id = params.fetch("city_id")
    @person.email = params.fetch("email")
    @person.phone_number = params.fetch("phone_number")
    @person.contacts = params.fetch("contacts")

    if @person.valid?
      @person.save

      redirect_to("/cities/#{@person.city_id}", notice: "Person created successfully.")
    else
      render("person_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @person = Person.find(params.fetch("prefill_with_id"))

    render("person_templates/edit_form.html.erb")
  end

  def update_row
    @person = Person.find(params.fetch("id_to_modify"))

    @person.name = params.fetch("name")
    @person.title = params.fetch("title")
    @person.company_id = params.fetch("company_id")
    @person.relationship = params.fetch("relationship")
    @person.work_sector_id = params.fetch("work_sector_id")
    @person.city_id = params.fetch("city_id")
    @person.email = params.fetch("email")
    @person.phone_number = params.fetch("phone_number")
    @person.contacts = params.fetch("contacts")

    if @person.valid?
      @person.save

      redirect_to("/people/#{@person.id}", :notice => "Person updated successfully.")
    else
      render("person_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_company
    @person = Person.find(params.fetch("id_to_remove"))

    @person.destroy

    redirect_to("/companies/#{@person.company_id}", notice: "Person deleted successfully.")
  end

  def destroy_row_from_work_sector
    @person = Person.find(params.fetch("id_to_remove"))

    @person.destroy

    redirect_to("/work_sectors/#{@person.work_sector_id}", notice: "Person deleted successfully.")
  end

  def destroy_row_from_city
    @person = Person.find(params.fetch("id_to_remove"))

    @person.destroy

    redirect_to("/cities/#{@person.city_id}", notice: "Person deleted successfully.")
  end

  def destroy_row
    @person = Person.find(params.fetch("id_to_remove"))

    @person.destroy

    redirect_to("/people", :notice => "Person deleted successfully.")
  end
end
