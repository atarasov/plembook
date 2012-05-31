# coding: utf-8
class Partner::BaseController < ApplicationController
  before_filter :authenticate_user!
  layout 'partner'
end
