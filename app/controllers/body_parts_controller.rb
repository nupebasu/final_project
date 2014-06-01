class BodyPartsController < ApplicationController
  def index
    @body_parts = BodyPart.all
  end

  def show
    @body_part = BodyPart.find(params[:id])
  end

  def new
    @body_part = BodyPart.new
  end

  def create
    @body_part = BodyPart.new
    @body_part.part = params[:part]

    if @body_part.save
      redirect_to "/body_parts", :notice => "Body part created successfully."
    else
      render 'new'
    end
  end

  def edit
    @body_part = BodyPart.find(params[:id])
  end

  def update
    @body_part = BodyPart.find(params[:id])

    @body_part.part = params[:part]

    if @body_part.save
      redirect_to "/body_parts", :notice => "Body part updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @body_part = BodyPart.find(params[:id])

    @body_part.destroy

    redirect_to "/body_parts", :notice => "Body part deleted."
  end
end
