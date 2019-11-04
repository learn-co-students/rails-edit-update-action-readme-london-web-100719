class ArticlesController < ApplicationController

    before_action :set_article, only: [:show, :edit, :update]

    def index
        @articles = Article.all
    end

    def show
        set_article
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new
        @article.title = params[:title]
        @article.description = params[:description]
        @article.save
        redirect_to article_path(@article)
    end

    def edit
        set_article
    end

    def update
        # byebug
        set_article.update(article_params)
        redirect_to article_path(@article)
    end

private

    def set_article

        @article = Article.find(params[:id])
        
    end

    def article_params

        params.require(:article).permit(:title, :description)
        
    end
    # add edit and update methods here
end
