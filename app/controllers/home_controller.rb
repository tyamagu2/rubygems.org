class HomeController < ApplicationController
  def index
    @count = Version.latest.count
    @latest = Rubygem.latest
    @downloaded = Rubygem.downloaded
    @updated = Version.updated
  end
end
