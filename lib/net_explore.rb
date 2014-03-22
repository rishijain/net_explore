require "net_explore/version"
require 'os'

module NetExplore
  def self.open_url url
    if OS.mac?
      system("open #{url}")
    elsif OS.linux?
      system("xdg-open #{url}")
    else
      raise 'Operating system type not supported ... please file the issue on gitub page with your OS name and I will try to include it in next release.'
    end
  end
end
