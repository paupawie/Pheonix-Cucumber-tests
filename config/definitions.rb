# Include your global definitions here
# Sample:
# $homepage = "http://google.com"

$homepage = "http://google.com"

def logout()
  $browser.goto("http://google.com")
end

def close()
  $browser.close
end
