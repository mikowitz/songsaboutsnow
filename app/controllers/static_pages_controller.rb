class StaticPagesController < ApplicationController
  def index
  end
  
  def one_oh_five
    redirect_to '/Michael-Berkowitz-CV.pdf'
  end
end
