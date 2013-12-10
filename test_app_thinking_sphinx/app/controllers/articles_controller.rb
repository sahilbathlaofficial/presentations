class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    # @articles = Articles.all
    # system 'rake ts:reindex'
    @articles = Article.search params[:query]
    # @articles = Article.search Riddle::Query.escape(params[:query])    
    # @articles = Article.search params[:query], :order => 'created_at DESC'
    # @articles = Article.search params[:query], :with => {:author_id => 3}
    # @articles = Article.search params[:query], :conditions => {:subject => "Lorem"}
    # @articles = Article.search 'lorem', :page => params[:page], :per_page => 1
    # @articles = Article.search params[:query], ranker: :wordcount
    # @articles = Article.search params[:query], :field_weights => {
    #   :subject => 10,
    #   :content => 3
    # }   
    # @articles = Article.search params[:query], :group_by => :author_id
    # string = ''
    # @articles.each_with_group_and_count { |post, group, count| string += group.to_s + ':' + count.to_s + " "}
    # render text: string
    # @articles = Article.search_for_ids 'Lorem'
    # render text: @articles
    # @articles = Article.search params[:query], star: true
    # @articles = Article.search params[:query]
    # @excerpter = ThinkingSphinx::Excerpter.new 'article_core',
    #  params[:query]||'', {
    # :before_match    => '<span class="match">',
    # :after_match     => '</span>',
    # :chunk_separator => ' --'
    # }
    # @articles = Article.latest_first.search params[:query]
    # @articles = Article.facets params[:query]
    # render text: @articles[:author]
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render action: 'show', status: :created, location: @article }
      else
        format.html { render action: 'new' }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:subject, :content, :author_id)
    end
end
