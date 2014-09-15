require 'rubygems'
require 'sinatra/base'
require 'slim'
require 'yaml'

# app/以下のファイルを全部ロード
Dir.glob('./app/**/*.rb').each do |s|
  require_relative s
end

class SasuoniApp < Sinatra::Base
  get '/' do
    @images = YAML.load(File.open("sasuoni_images.yaml")).map do |image|
      Image.new(image["word_full"], image["image"])
    end
    slim :index
  end
end
