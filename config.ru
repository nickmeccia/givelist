require 'sinatra'
require 'sass/plugin/rack'

Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

Sass::Plugin.options[:template_location] = "./public/styles"
Sass::Plugin.options[:css_location] = "./public/styles"
