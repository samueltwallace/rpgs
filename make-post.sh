#!/usr/bin/env ysh

const full = '''**TBD**

(insert ../header.md.html here)









[download this page](./$[join($@)].md.html?export)


<link rel="stylesheet" href="../rpg-styles.css">


<!-- Markdeep: --><style class="fallback">body{visibility:hidden;white-space:pre;font-family:monospace}</style><script src="markdeep.min.js" charset="utf-8"></script><script src="https://morgan3d.github.io/markdeep/latest/markdeep.min.js" charset="utf-8"></script><script>window.alreadyProcessedMarkdeep||(document.body.style.visibility="visible")</script>
'''


echo $full > "./posts/$[join(ARGV)].md.html"
