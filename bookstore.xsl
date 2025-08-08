<?xml version="1.0" encoding="UTF-8"?>
<!--
  This is an XSLT stylesheet for transforming the bookstore.xml into an HTML page.
  It creates a table to display the book information.
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd" indent="yes"/>

<xsl:template match="/">
  <html>
    <head>
      <title>My Bookstore</title>
      <style>
        body { 
          font-family: Arial, sans-serif; 
          margin: 40px; 
          background-color: #f4f4f9;
        }
        h1 {
          color: #333;
        }
        table { 
          width: 100%; 
          border-collapse: collapse; 
          box-shadow: 0 2px 15px rgba(0,0,0,0.1);
          background-color: #ffffff;
        }
        th, td { 
          border: 1px solid #ddd; 
          padding: 12px; 
          text-align: left; 
        }
        th { 
          background-color: #4CAF50; 
          color: white; 
        }
        tr:nth-child(even) {
          background-color: #f2f2f2;
        }
        tr:hover {
          background-color: #ddd;
        }
      </style>
    </head>
    <body>
      <h1>Book Collection</h1>
      <table>
        <!-- Table Header -->
        <tr>
          <th>Title</th>
          <th>Author</th>
          <th>Genre</th>
          <th>Price</th>
        </tr>
        
        <!-- Loop through each 'book' element in the XML -->
        <xsl:for-each select="bookstore/book">
          <tr>
            <!-- Get the value of the 'title' element -->
            <td><xsl:value-of select="title"/></td>
            <!-- Get the value of the 'author' element -->
            <td><xsl:value-of select="author"/></td>
            <!-- Get the value of the 'genre' element -->
            <td><xsl:value-of select="genre"/></td>
            <!-- Get the value of the 'price' element -->
            <td>₹<xsl:value-of select="price"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>
