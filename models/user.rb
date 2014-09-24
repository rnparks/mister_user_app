

class User < Sequel::Model



  def male?
    if gender == "male"
      return true
    else
      return false
    end
  end

  def female?
    if gender == "female"
      return true
    else
      return false
    end
  end

  def mr?
    name[0..1].downcase == "mr" && name[2] == " " ? true : false
  end

  def ms?
    name[0..1].downcase == "ms" ? true : false
  end

  def miss?
    name[0..3].downcase == "miss" ? true : false
  end

  def mrs?
    name[0..2].downcase == "mrs" ? true : false
  end

  def age?
    age = Time.now.year - Time.at(dob.to_i).year
    return age
  end

  def adult?
    age? >= 18 ? true : false
  end

  def boomer?
    year = Time.at(dob.to_i).year
    year > 1946 && year < 1964 ? true : false
  end

  def teen?
    age? >= 13 && age? < 18 ? true : false
  end

  def tween?
    age? >= 11 && age? < 13 ? true : false
  end

  def child?
    age? >= 4 && age? < 11 ? true : false
  end

  def toddler?
    age? >= 1 && age? < 4 ? true : false
  end

  def baby?
    age? >= 0 && age? < 1 ? true : false
  end

end


