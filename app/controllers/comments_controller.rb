class CommentsController < InheritedResources::Base
  belongs_to :article
  actions :create,  :destroy
  
  def create
    create! { collection_url }
  end
  
  
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
