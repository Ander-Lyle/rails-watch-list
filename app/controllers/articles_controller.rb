class ArticlesController < ApplicationController
  def article_params
    params.require(:article).permit(:title, :body, :photo)
  end
end
