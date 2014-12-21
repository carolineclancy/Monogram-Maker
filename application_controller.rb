require 'bundler'
Bundler.require
require_relative './models/final_project_backend.rb'



class MyApp < Sinatra::Base
  get '/' do
    @patterns = ["http://www.hawthornethreads.com/images/camelot_cottons/300/jacqueline_savage_mcfee_paisley_please_preppy_harlequin_in_navy.jpg", "http://3.bp.blogspot.com/-2xrloB1ddhQ/Ud6_VZjhXJI/AAAAAAAAAH8/lnMuybGDc2Y/s1600/GetNautiWallpaper.jpg", "http://rlv.zcache.com/navy_blue_greek_key_pattern_napkins-rde07851f78eb439fb18b805217920d47_2cf00_8byvr_512.jpg"]
    erb :index
  end

  post '/home' do
    puts params[:pattern]
    @caroline = User.new(params[:initials], params[:pattern], params[:font_color], params[:background_color], params[:border_color], params[:background_image], params[:font])
    redirect('/monogram')
    erb :index
  end

  post '/monogram' do
    @caroline = User.new(params[:initials], params[:pattern], params[:font_color], params[:background_color], params[:border_color], params[:background_image], params[:font])
    @caroline.initials = params[:initials]
    @caroline.pattern = params[:pattern]
    @caroline.font_color = params[:font_color]
    @caroline.background_color = params[:background_color]
    @caroline.border_color = params[:border_color]
    @caroline.background_image = params[:background_image]
    @caroline.font = params[:font]
    erb :monogram
  end

  get '/about' do
    erb :about
  end

end