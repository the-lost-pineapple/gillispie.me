class Link < ActiveRecord::Base

  
  def target_string
    case target
      when "_blank"
        "New Window"
      when "_self"
        "Same Window"
      when "_parent"
        "Parent Window"
      else
        "New Window"
      end
  end

end
