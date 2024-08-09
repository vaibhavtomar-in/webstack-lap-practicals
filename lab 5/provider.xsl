<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tiffin="http://www.example.com/provider">
    <xsl:template match="/tiffin:tiffinProviders">
        <html>
            <head>
            <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                        margin: 20px 0;
                        font-size: 16px;
                        text-align: left;
                    }
                    th, td {
                        border: 1px solid #dddddd;
                        padding: 8px;
                    }
                    th {
                        background-color: #f2f2f2;
                        color: #333;
                    }
                    tr:nth-child(even) {
                        background-color: #f9f9f9;
                    }
                    tr:hover {
                        background-color: #f1f1f1;
                    }
                    h1,h2,h3,h4 {
                        font-family: Arial, sans-serif;
                        color: #333;
                    }
                </style>
            </head>
            <body>
                <h1>Domain Name: Tiffin Service Providers</h1>
                <table border="1">
                    <tr>
                        <th>Provider Id</th>
                        <th>Provider Name</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>Price</th>
                        <th>Rating</th>
                        <th>Longitude</th>
                        <th>Latitude</th>
                    </tr>
                    <xsl:for-each select="tiffin:provider">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="tiffin:name"/></td>
                            <td><xsl:value-of select="tiffin:phone"/></td>
                            <td><xsl:value-of select="tiffin:email"/></td>
                            <td><xsl:value-of select="tiffin:address"/></td>
                            <td><xsl:value-of select="tiffin:price"/></td>
                            <td><xsl:value-of select="tiffin:rating"/></td>
                            <td><xsl:value-of select="tiffin:longitude"/></td>
                            <td><xsl:value-of select="tiffin:latitude"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                <xsl:for-each select="tiffin:provider">
                    <h2>Provider Name : <xsl:value-of select="tiffin:name"/></h2>
                    <h3>Menu : <xsl:value-of select="tiffin:menu/tiffin:menuName"/></h3>
                    <h4>Description : <xsl:value-of select="tiffin:menu/tiffin:description"/></h4>
                    <table border="1">
                        <tr>
                            <th>Name</th>
                            <th>Diet</th>
                            <th>Price</th>
                        </tr>
                    <xsl:for-each select="tiffin:menu/tiffin:item">
                        <tr>
                            <td><xsl:value-of select="tiffin:itemName"/></td>
                            <td><xsl:value-of select="tiffin:itemDiet"/></td>
                            <td><xsl:value-of select="tiffin:itemPrice"/></td>
                        </tr>
                    </xsl:for-each>
                </table>


                </xsl:for-each>
            </body>
            <script>
            </script>
        </html>
    </xsl:template>
</xsl:stylesheet>