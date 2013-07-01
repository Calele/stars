# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Categories.create([{enabled: '1', title: '1'}, {enabled: '1', title: '2'}, {enabled: '1', title: '3'}])
Levels.create([{enabled: '1', difficulty: '3', category_id: '1', img_url: '1', first_name: 'first_name_1', last_name: 'last_name_1', stage_name: 'stage_name_1', band_name: 'band_name_1', title_id: '1', question_id: '1', fun_fact_enabled: '1', fun_fact: 'fun_fact_1', wiki: 'wiki_1', wiki_enabled: '1', number_in_category: '0', number_in_all: '0'}, {enabled: '1', difficulty: '4', category_id: '1', img_url: '2', first_name: 'first_name_2', last_name: 'last_name_2', stage_name: 'stage_name_2', band_name: 'band_name_2', title_id: '2', question_id: '2', fun_fact_enabled: '1', fun_fact: 'fun_fact_2', wiki: 'wiki_2', wiki_enabled: '1', number_in_category: '1', number_in_all: '1'}])