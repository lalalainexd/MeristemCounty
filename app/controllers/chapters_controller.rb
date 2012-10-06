class ChaptersController < ApplicationController
  before_filter :login_required, :except => [:show]
  # GET /chapters
  # GET /chapters.xml
  def index
    @chapters = Chapter.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @chapters }
    end
  end

  # GET /chapters/1
  # GET /chapters/1.xml
  def show
    @chapter = Chapter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @chapter }
    end
  end

  # GET /chapters/new
  # GET /chapters/new.xml
  def new
    @comic = Comic.find(params[:comic_id])
    @chapter = Chapter.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @chapter }
    end
  end


  # GET /chapters/1/edit
  def edit
    @chapter = Chapter.find(params[:id])
    
  end

  # POST /chapters
  # POST /chapters.xml
  def create
    @chapter = Chapter.new(params[:chapter])
    @comic = Comic.find(params[:comic_id])

    @chapter.comic = @comic

    respond_to do |format|
      if @chapter.save
        format.html { redirect_to(comic_chapter_path(@comic, @chapter), :notice => 'Chapter was successfully created.') }
        format.xml  { render :xml => @chapter, :status => :created, :location => @chapter }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @chapter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /chapters/1
  # PUT /chapters/1.xml
  def update
    @chapter = Chapter.find(params[:id])
    @comic = Comic.find(params[:comic_id])

    respond_to do |format|
      if @chapter.update_attributes(params[:chapter])
        format.html { redirect_to(comic_chapter_path(@comic, @chapter), :notice => 'Chapter was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @chapter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /chapters/1
  # DELETE /chapters/1.xml
  def destroy
    @chapter = Chapter.find(params[:id])
    @comic = @chapter.comic
    @chapter.destroy

    respond_to do |format|
      format.html { redirect_to(comic_path(@comic)) }
      format.xml  { head :ok }
    end
  end
end
