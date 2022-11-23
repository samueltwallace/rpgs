#!/usr/bin/oil


const title = $'**Sam\'s RPG Workshop**\n\n'

const author = $'Samuel Wallace\n\n'

const files = "$(find . -type f -name '*.md.html' -printf ' - %A+ [%h](%h%f)\n' | sort -r)"

const footer = '''




<link rel="stylesheet" href="./rpg-styles.css">

<!-- Markdeep: --><style class="fallback">body{visibility:hidden;white-space:pre;font-family:monospace}</style><script src="markdeep.min.js" charset="utf-8"></script><script src="https://morgan3d.github.io/markdeep/latest/markdeep.min.js" charset="utf-8"></script><script>window.alreadyProcessedMarkdeep||(document.body.style.visibility="visible")</script>
'''


const full = title ++ author ++ files ++ footer


echo $full  > ./index.html
