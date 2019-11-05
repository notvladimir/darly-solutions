def frequency(arg_list)
  arg_list ||= []

  status = Hash.new(0)
  arg_list.each do |arg|
      status[arg] += 1
  end    
  return status.sort { |a1 ,a2| a2[1] <=> a1[1] }.to_h.keys
end

def flatten(arg_list)
  arg_list ||= []
  
  def inner_flatten(arg_list, acum = [])
    arg_list.each do |item|
      if item.kind_of? Array
        inner_flatten(item, acum)
      else
        acum << item
      end
    end
    return acum
  end
  inner_flatten arg_list
end

