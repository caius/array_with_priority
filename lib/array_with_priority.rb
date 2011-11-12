require "array_with_priority/version"
require "active_support/core_ext/class/attribute_accessors.rb"

class ArrayWithPriority
  cattr_accessor :default_priority
  self.default_priority = 5

  def add klass, opts={}
    opts[:priority] ||= self.default_priority

    arr = self.array[opts[:priority]] || []
    arr << klass
    arr.sort {|a,b| a.to_s <=> b.to_s }

    self.array[opts[:priority]] = arr
  end

  def << klass
    add klass
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
