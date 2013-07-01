class FirstController < ApplicationController
  def levels
    @category_id = 0
    @levels = Levels.order("number_in_all").all
  	@categories_all = Categories.all
  	@questions_all = Questions.all
  	@titles_all = Titles.all
    @categories_enabled = Categories.where("enabled = ?", true)
    @levels_by_category = Levels.order("number_in_category").where("category_id = ?", @category_id)

        # binding.pry
  end


  def new
    @category_id = params[:category_id]
    if @category_id == '0' || @category_id.nil?
      @levels = Levels.order("number_in_all").all
    else
      @levels = Levels.order("number_in_category").where("category_id = ?", @category_id)
    end

    @categories = Categories.all
    @categories_enabled = Categories.where("enabled = ?", true)
    
    unless params[:mass].nil?
      @sortable = JSON.parse params[:mass]

      if @category_id == '0' || @category_id.nil?
        @sortable.each_with_index do |s,i|
          @levels = Levels.find(s)
          @levels = @levels.update_attributes(:number_in_all => i)
          @levels = Levels.order("number_in_all").all
        end
      else
        @sortable.each_with_index do |s,i|
          @levels = Levels.find(s)
          @levels = @levels.update_attributes(:number_in_category => i)
          @levels = Levels.order("number_in_category").where("category_id = ?", @category_id)
        end
      end
    end
    render :partial => 'new'
    # binding.pry

  end

  def json
  end

  def categories
  end

  
  def settings
  end

end