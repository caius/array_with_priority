require "array_with_priority/version"
require "active_support/core_ext/class/attribute_accessors.rb"

class ArrayWithPriority
  cattr_accessor :default_priority
  self.default_priority = 5

  def add obj, opts={}
    i = opts[:priority] || self.default_priority
    self.array[i] ||= []
    self.array[i] << obj
  end

  def << obj
    add obj
  end

  def to_a
    array.compact
  end

  def method_missing meffod, *args
    if ((a = to_a)) && a.respond_to?(meffod)
      if block_given?
        blk = Proc.new
        a.send(meffod, *args, &blk)
      else
        a.send(meffod, *args)
      end
    else
      super
    end
  end

protected
  def array
    @array ||= []
  end
end
