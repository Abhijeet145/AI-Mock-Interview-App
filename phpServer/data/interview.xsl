<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Interview Feedback Viewer</title>
        <style>
          body { font-family: Arial, sans-serif; padding: 20px; }
          .entry { margin-bottom: 20px; padding: 15px; border: 1px solid #ccc; border-radius: 8px; background: #f9f9f9; }
          .entry h3 { margin: 0 0 10px; color: #333; }
          .entry p { margin: 5px 0; }
        </style>
      </head>
      <body>
        <h1>Interview Question Feedback</h1>
        <xsl:for-each select="interview/entry">
          <div class="entry">
            <h3><xsl:value-of select="topic"/></h3>
            <p><strong>Question:</strong> <xsl:value-of select="question"/></p>
            <p><strong>Answer:</strong> <xsl:value-of select="answer"/></p>
            <p><strong>Feedback:</strong> <xsl:value-of select="feedback"/></p>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
