<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html>
    <head>
      <title>RSS Feed - <xsl:value-of select="rss/channel/title"/></title>
      <style>
        body { font-family: Arial, sans-serif; max-width: 800px; margin: 0 auto; padding: 20px; }
        h1 { color: #333; border-bottom: 2px solid #333; padding-bottom: 10px; }
        .channel-info { background: #f5f5f5; padding: 15px; margin-bottom: 20px; border-radius: 5px; }
        .item { border: 1px solid #ddd; padding: 15px; margin-bottom: 15px; border-radius: 5px; }
        .item:hover { background: #fafafa; }
        .item-title { font-size: 18px; font-weight: bold; color: #0066cc; }
        .item-title a { text-decoration: none; }
        .item-title a:hover { text-decoration: underline; }
        .item-meta { color: #666; font-size: 12px; margin-top: 5px; }
        .item-desc { margin-top: 10px; color: #333; }
        .item-desc img { max-width: 100%; height: auto; }
        code { background: #f0f0f0; padding: 2px 5px; border-radius: 3px; }
        pre { background: #f0f0f0; padding: 10px; overflow-x: auto; border-radius: 5px; }
      </style>
    </head>
    <body>
      <h1><xsl:value-of select="rss/channel/title"/></h1>
      <div class="channel-info">
        <p><strong>Link:</strong> <a href="{rss/channel/link}"><xsl:value-of select="rss/channel/link"/></a></p>
        <p><strong>Description:</strong> <xsl:value-of select="rss/channel/description"/></p>
        <p><strong>Language:</strong> <xsl:value-of select="rss/channel/language"/></p>
        <p><strong>Last Updated:</strong> <xsl:value-of select="rss/channel/lastBuildDate"/></p>
      </div>
      <h2>Articles</h2>
      <xsl:for-each select="rss/channel/item">
        <div class="item">
          <div class="item-title">
            <a href="{link}"><xsl:value-of select="title"/></a>
          </div>
          <div class="item-meta">
            Published: <xsl:value-of select="pubDate"/> | Author: <xsl:value-of select="author"/>
          </div>
          <div class="item-desc">
            <xsl:value-of select="description" disable-output-escaping="yes"/>
          </div>
        </div>
      </xsl:for-each>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>