class Levels < ActiveRecord::Base
  attr_accessible :band_name, :category_id, :difficulty, :enabled, :first_name, :fun_fact, :fun_fact_enabled, :img_url, :last_name, :number_in_all, :number_in_category, :question_id, :stage_name, :title_id, :wiki, :wiki_enabled
end
Levels.order('number_in_category')