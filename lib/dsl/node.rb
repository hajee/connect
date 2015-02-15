require 'ostruct'

class Node < Entry
  def initialize(data)
    super(data)
    if data
      self.hostname = __name__.split('.').first
      self.domain   = __name__.split('.')[-2..-1].join('.')
      self.fqdn     = __name__
    end
  end
end
