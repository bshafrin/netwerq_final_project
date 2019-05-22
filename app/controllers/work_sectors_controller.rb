class WorkSectorsController < ApplicationController
  def index
    @work_sectors = WorkSector.all

    render("work_sector_templates/index.html.erb")
  end

  def show
    @person = Person.new
    @work_sector = WorkSector.find(params.fetch("id_to_display"))

    render("work_sector_templates/show.html.erb")
  end

  def new_form
    @work_sector = WorkSector.new

    render("work_sector_templates/new_form.html.erb")
  end

  def create_row
    @work_sector = WorkSector.new

    @work_sector.sector_name = params.fetch("sector_name")

    if @work_sector.valid?
      @work_sector.save

      redirect_back(:fallback_location => "/work_sectors", :notice => "Work sector created successfully.")
    else
      render("work_sector_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @work_sector = WorkSector.find(params.fetch("prefill_with_id"))

    render("work_sector_templates/edit_form.html.erb")
  end

  def update_row
    @work_sector = WorkSector.find(params.fetch("id_to_modify"))

    @work_sector.sector_name = params.fetch("sector_name")

    if @work_sector.valid?
      @work_sector.save

      redirect_to("/work_sectors/#{@work_sector.id}", :notice => "Work sector updated successfully.")
    else
      render("work_sector_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @work_sector = WorkSector.find(params.fetch("id_to_remove"))

    @work_sector.destroy

    redirect_to("/work_sectors", :notice => "Work sector deleted successfully.")
  end
end
