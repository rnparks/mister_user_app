require 'httparty'


def random_user
  response = HTTParty.get("http://api.randomuser.me/")
  email = response["results"][0]["user"]["email"]
  name  = response["results"][0]["user"]["name"]["first"] + " " + response["results"][0]["user"]["name"]["last"]
  gender = response["results"][0]["user"]["gender"]
  picture = response["results"][0]["user"]["picture"]["thumbnail"]
  dob = response["results"][0]["user"]["dob"]
  location = response["results"][0]["user"]["location"]["street"] + "," + response["results"][0]["user"]["location"]["city"] + "," +  response["results"][0]["user"]["location"]["state"] + "," + response["results"][0]["user"]["location"]["zip"]
  password = response["results"][0]["user"]["password"]
  user_hash = {
    email: email,
    name: name,
    gender: gender,
    picture: picture,
    dob: dob,
    location: location,
    password: password
  }
  return user user_hash
end


User.create(random_user)
User.create(random_user)
User.create(random_user)
User.create(random_user)
User.create(random_user)
User.create(random_user)
User.create(random_user)
User.create(random_user)
User.create(random_user)
User.create(random_user)
