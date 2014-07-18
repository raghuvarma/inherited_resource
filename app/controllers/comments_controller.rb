class CommentsController < InheritedResources::Base
  belongs_to :article
  actions :create,  :destroy
  
  def create
    create! { article_path(resource.article) }
  end
  
  
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
