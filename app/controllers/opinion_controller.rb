class OpinionController < ApplicationController
  before_filter :authenticate_critique_receiver!, :except =>[:index, :create]

  def index
    @receivers = CritiqueReceiver.interested
    @criticism = Criticism.new
  end

  def create
    @criticism = Criticism.new(params[:criticism])
    if @criticism.save
      redirect_to root_url, :notice =>'Successfully received your opinion.Thank you!'
    else
      @receivers = CritiqueReceiver.interested
      render 'index'
    end
  end

  def list
    if current_critique_receiver
      page = params[:page] || 1
      @criticisms = current_critique_receiver.criticisms.paginate(:per_page =>Criticism::PER_PAGE, :page =>page)
      # @criticisms = current_critique_receiver.criticisms
    else
      redirect_to root_url
    end
  end

end
