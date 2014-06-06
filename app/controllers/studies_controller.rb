class StudiesController < ApplicationController

# before_action(:signed_in_user_must_be_owner, :only=> [:edit, :destroy, :update])

# def search
#     @keyword = params[:keyword]
#     @studies = Study.where("diagnosis LIKE '%#{@keyword}'")

#   render 'index'
# end

#   def signed_in_user_must_be_owner
#     if @study.user_id!= current_user.id
#       redirect_to root_url, :notice => "No privileges"
# end

  def index
    @diagnosis = params[:diagnosis]
    @subject = params[:subject]

    @studies = Study.where("diagnosis LIKE '%#{@diagnosis}%'").where("subject LIKE '%#{@subject}%'")
  end

  def show
    @study = Study.find(params[:id])
  end

  def new
    @study = Study.new
  end

  def create
    @study = Study.new
    @study.user_id = current_user.id
    @study.subject = params[:subject]
    @study.accession = params[:accession]
    @study.diagnosis = params[:diagnosis]
    @study.image = params[:image]
    @study.clinical_history = params[:clinical_history]
    @study.date = params[:date]
    @study.category_id = params[:category_id]
    @study.body_part_id = params[:body_part_id]

    if @study.save
      redirect_to "/studies", :notice => "Study created successfully."
    else
      render 'new'
    end
  end

  def edit
    @study = Study.find(params[:id])
  end

  def update
    @study = Study.find(params[:id])

    @study.user_id = current_user.id
    @study.subject = params[:subject]
    @study.accession = params[:accession]
    @study.diagnosis = params[:diagnosis]
    @study.image = params[:image]
    @study.clinical_history = params[:clinical_history]
    @study.date = params[:date]
    @study.category_id = params[:category_id]
    @study.body_part_id = params[:body_part_id]

    if @study.save
      redirect_to "/studies", :notice => "Study updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @study = Study.find(params[:id])

    @study.destroy

    redirect_to "/studies", :notice => "Study deleted."
  end
end
