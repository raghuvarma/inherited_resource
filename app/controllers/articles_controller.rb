class ArticlesController < InheritedResources::Base
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json
  
  def create
    create! { collection_url }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:name, :content)
    end
end
