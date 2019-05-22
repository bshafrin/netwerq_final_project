class ContactMethodsController < ApplicationController
  def index
    @contact_methods = ContactMethod.all

    render("contact_method_templates/index.html.erb")
  end

  def show
    @contact_method = ContactMethod.find(params.fetch("id_to_display"))

    render("contact_method_templates/show.html.erb")
  end

  def new_form
    @contact_method = ContactMethod.new

    render("contact_method_templates/new_form.html.erb")
  end

  def create_row
    @contact_method = ContactMethod.new

    @contact_method.method_name = params.fetch("method_name")

    if @contact_method.valid?
      @contact_method.save

      redirect_back(:fallback_location => "/contact_methods", :notice => "Contact method created successfully.")
    else
      render("contact_method_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @contact_method = ContactMethod.find(params.fetch("prefill_with_id"))

    render("contact_method_templates/edit_form.html.erb")
  end

  def update_row
    @contact_method = ContactMethod.find(params.fetch("id_to_modify"))

    @contact_method.method_name = params.fetch("method_name")

    if @contact_method.valid?
      @contact_method.save

      redirect_to("/contact_methods/#{@contact_method.id}", :notice => "Contact method updated successfully.")
    else
      render("contact_method_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @contact_method = ContactMethod.find(params.fetch("id_to_remove"))

    @contact_method.destroy

    redirect_to("/contact_methods", :notice => "Contact method deleted successfully.")
  end
end
