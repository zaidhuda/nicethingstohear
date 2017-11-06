class NiceThingsController < ApplicationController
  before_action :set_nice_thing, only: [:show, :content, :image, :download]
  
  def show
  end

  def content
  end

  def image
    head 501
    render layout: false
  end

  def download
    head 501
  end

  def new
    set_meta_tags title: 'Say something'
    @nice_thing = NiceThing.new
  end

  def create
    @nice_thing = NiceThing.new(nice_thing_params)

    respond_to do |format|
      if @nice_thing.save
        format.html { redirect_to @nice_thing, notice: 'Nice thing was successfully created.' }
        format.json { render :show, status: :created, location: @nice_thing }
      else
        format.html { render :new }
        format.json { render json: @nice_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_nice_thing
      @nice_thing = NiceThing.friendly.find(params[:id])
      set_meta_tags title: @nice_thing.text,
                    description: @nice_thing.content.present? ? @nice_thing.content : I18n.t('app.description')
    end

    def nice_thing_params
      params.require(:nice_thing).permit(:text, :content)
    end
end
