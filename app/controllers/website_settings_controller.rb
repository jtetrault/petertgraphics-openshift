class WebsiteSettingsController < ApplicationController

  # GET /website_settings
  def show
  	@website_settings = WebsiteSettings.instance
    authorize! :read, @website_settings
    @page_title = 'Website Settings'
  end

  # GET /website_settings/edit
  def edit
  	@website_settings = WebsiteSettings.instance
    authorize! :update, @website_settings
    @page_title = 'Edit Website Settings'
  end

  # POST /website_settings
  def update
    @website_settings = WebsiteSettings.instance
    authorize! :update, @website_settings

    respond_to do |format|
      if @website_settings.update_attributes(params[:website_settings])
        format.html { redirect_to website_settings_path, notice: 'Website settings were successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

end
