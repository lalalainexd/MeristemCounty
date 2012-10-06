class PagesController < ApplicationController
  before_filter :login_required, :except => [:show]
  # GET /pages
  # GET /pages.xml
  def index
    @pages = Page.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pages }
    end
  end

  # GET /pages/1
  # GET /pages/1.xml
  def show
    @page = Page.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @page }
    end
  end

  # GET /pages/new
  # GET /pages/new.xml
  def new
    @chapter = Chapter.find(params[:chapter_id])
    @comic = Comic.find(params[:comic_id])
    @page = Page.new
    3.times { @page.panels.build }

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @page }
    end
  end

  # GET /pages/1/edit
  def edit
    @page = Page.find(params[:id])
    3.times { @page.panels.build }
  end

  # POST /pages
  # POST /pages.xml
  def create
    @page = Page.new(params[:page])

    @comic = Comic.find(params[:comic_id])
    @chapter = Chapter.find(params[:chapter_id])

    @page.chapter = @chapter
    
    respond_to do |format|
      if @page.save
        format.html { redirect_to(comic_chapter_page_path(@comic, @chapter, @page), :notice => 'Page was successfully created.') }
        format.xml  { render :xml => @page, :status => :created, :location => @page }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pages/1
  # PUT /pages/1.xml
  def update
    @page = Page.find(params[:id])
    
    respond_to do |format|
      if @page.update_attributes(params[:page])
        format.html { redirect_to(comic_chapter_page_path(@page.chapter.comic, @page.chapter, @page), :notice => 'Page was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @page.errors, :status => :unprocessable_entity }
      end
    end
  end


  # DELETE /pages/1
  # DELETE /pages/1.xml
  def destroy
    @page = Page.find(params[:id])

    @chapter = @page.chapter
    @comic = @chapter.comic

    @page.destroy

    respond_to do |format|
      format.html { redirect_to(comic_chapter_path(@comic, @chapter)) }
      format.xml  { head :ok }
    end
  end
end
