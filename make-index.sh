#!/usr/bin/env osh


proc maketitle(@paths) {
    var bigline = ''
    for file in (paths) {
		     var firstline = "$(head -n 1 $file)"
		     # var lastupdated = "$(stat -c '%x' $file)"
		     var lastupdated = "$(git log --date=human --format='%as' -- $file | tail -n 1)"
		     var line = " - $lastupdated [" ++ firstline ++ '](' ++ file ++ $')\n'
		     setvar bigline = bigline ++ line
		 }
    echo $bigline | sort -r
}


const files =  "$(maketitle posts/**.md.html)"

const footer = '''



<!-- Markdeep: --><style class="fallback">body{visibility:hidden;white-space:pre;font-family:monospace}</style><script src="markdeep.min.js" charset="utf-8"></script><script src="https://morgan3d.github.io/markdeep/latest/markdeep.min.js" charset="utf-8"></script><script>window.alreadyProcessedMarkdeep||(document.body.style.visibility="visible")</script>
'''

const full = $'# Posts by First Created\n' ++ files ++ footer

echo $full > ./dir.md.html
