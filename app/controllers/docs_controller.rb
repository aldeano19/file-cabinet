class DocsController < ApplicationController
  before_action :find_doc, only: [:show, :edit, :update, :destroy]

  def index
    # @docs = current_user.docs.order("created_at DESC")
    @docs = Doc.where(user_id: current_user)
  end

  def show
  end

  def new
    @doc = current_user.docs.build
  end

  def create
    @doc = current_user.docs.build(doc_params)

    # if doc does not saves automatically, allow to do it manually on the `new` action
    if @doc.save
      redirect_to @doc # redirects to /docs/:id/show
    else
      render 'new' # This will call the `new` action defined above
    end
  end

  def edit
  end

  def update
    if @doc.update(doc_params)
      redirect_to @doc
    else
      render 'edit'
    end
  end

  def destroy
    @doc.destroy
    redirect_to docs_path
  end

  private
    def find_doc
      @doc = Doc.find(params[:id])
    end

    def doc_params
      params.require(:doc).permit(:title, :content)
    end

end
