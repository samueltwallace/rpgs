#!/usr/bin/env osh


const ChannelElements = $'<title>Sam\'s Fiction Workshop</title>\n<link>https://rpgs.quajzen.page/</link>\n<description>Sam\'s blog on all things fiction: Books, Movies, RPGs.</description>\n<language>en-us</language>\n<category>Blog</category><image>https://rpgs.quajzen.page/media/priest.jpg</image>'

const RssItems = "$(git log --tags --no-walk --format='<title>%s</title>%n<link>https://rpgs.quajzen.page/' --name-only)" ++ "</link>"

echo $ChannelElements

echo """<rss version=\"2.0\">
<channel>
""" ++ $ChannelElements ++ $RssItems ++ """
</channel>
</rss>""" > ./rss.xml



