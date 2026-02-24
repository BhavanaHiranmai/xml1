<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>User Information</title>
                <style>
                    table {
                        border-collapse: collapse;
                        width: 70%;
                        margin: 25px auto;
                    }
                    th, td {
                        border: 2px solid black;
                        padding: 8px;
                        text-align: center;
                    }
                    th {
                        background-color: red;
                        color: white;
                    }
                    tr:nth-child(even) {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>

            <body>
                <h2 style="text-align:center;">User Information Table</h2>

                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Role</th>
                        <th>Department</th>
                        <th>Email</th>
                    </tr>

                    <xsl:for-each select="Users/User">
                        <tr>
                            <td><xsl:value-of select="ID"/></td>
                            <td><xsl:value-of select="Name"/></td>
                            <td><xsl:value-of select="Role"/></td>
                            <td><xsl:value-of select="Department"/></td>
                            <td><xsl:value-of select="Email"/></td>
                        </tr>
                    </xsl:for-each>

                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>