#!/usr/bin/oil

const files =  "$(find ./posts/ -type f -name '*.md.html' -printf ' - %A+ [%f](%h/%f)\n' | sort -r)"

const footer = '''



<!-- Markdeep: --><style class="fallback">body{visibility:hidden;white-space:pre;font-family:monospace}</style><script src="markdeep.min.js" charset="utf-8"></script><script src="https://morgan3d.github.io/markdeep/latest/markdeep.min.js" charset="utf-8"></script><script>window.alreadyProcessedMarkdeep||(document.body.style.visibility="visible")</script>
'''

const full = $'# Posts by Recently Updated\n' ++ files ++ footer

echo $full > ./dir.md.html
