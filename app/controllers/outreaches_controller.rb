class OutreachesController < ApplicationController
  def index
    @q = Outreach.ransack(params[:q])
    @outreaches = @q.result(:distinct => true).includes(:recipient, :outreach_method).page(params[:page]).per(10)

    render("outreach_templates/index.html.erb")
  end

  def show
    @outreach = Outreach.find(params.fetch("id_to_display"))

    render("outreach_templates/show.html.erb")
  end

  def new_form
    @outreach = Outreach.new

    render("outreach_templates/new_form.html.erb")
  end

  def create_row
    @outreach = Outreach.new

    @outreach.recipient_id = params.fetch("recipient_id")
    @outreach.notes = params.fetch("notes")
    @outreach.response_tf = params.fetch("response_tf")
    @outreach.outreach_method_id = params.fetch("outreach_method_id")

    if @outreach.valid?
      @outreach.save

      redirect_back(:fallback_location => "/outreaches", :notice => "Outreach created successfully.")
    else
      render("outreach_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_person
    @outreach = Outreach.new

    @outreach.recipient_id = params.fetch("recipient_id")
    @outreach.notes = params.fetch("notes")
    @outreach.response_tf = params.fetch("response_tf")
    @outreach.outreach_method_id = params.fetch("outreach_method_id")

    if @outreach.valid?
      @outreach.save

      redirect_to("/people/#{@outreach.recipient_id}", notice: "Outreach created successfully.")
    else
      render("outreach_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_contact_method
    @outreach = Outreach.new

    @outreach.recipient_id = params.fetch("recipient_id")
    @outreach.notes = params.fetch("notes")
    @outreach.response_tf = params.fetch("response_tf")
    @outreach.outreach_method_id = params.fetch("outreach_method_id")

    if @outreach.valid?
      @outreach.save

      redirect_to("/contact_methods/#{@outreach.outreach_method_id}", notice: "Outreach created successfully.")
    else
      render("outreach_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @outreach = Outreach.find(params.fetch("prefill_with_id"))

    render("outreach_templates/edit_form.html.erb")
  end

  def update_row
    @outreach = Outreach.find(params.fetch("id_to_modify"))

    @outreach.recipient_id = params.fetch("recipient_id")
    @outreach.notes = params.fetch("notes")
    @outreach.response_tf = params.fetch("response_tf")
    @outreach.outreach_method_id = params.fetch("outreach_method_id")

    if @outreach.valid?
      @outreach.save

      redirect_to("/outreaches/#{@outreach.id}", :notice => "Outreach updated successfully.")
    else
      render("outreach_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_recipient
    @outreach = Outreach.find(params.fetch("id_to_remove"))

    @outreach.destroy

    redirect_to("/people/#{@outreach.recipient_id}", notice: "Outreach deleted successfully.")
  end

  def destroy_row_from_outreach_method
    @outreach = Outreach.find(params.fetch("id_to_remove"))

    @outreach.destroy

    redirect_to("/contact_methods/#{@outreach.outreach_method_id}", notice: "Outreach deleted successfully.")
  end

  def destroy_row
    @outreach = Outreach.find(params.fetch("id_to_remove"))

    @outreach.destroy

    redirect_to("/outreaches", :notice => "Outreach deleted successfully.")
  end
end
