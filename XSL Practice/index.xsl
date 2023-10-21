<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <html lang="en">
            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>XSL Data Print</title>
                <link rel="stylesheet" href="style.css"/>
            </head>
            <body>

                <h1>Company Data</h1>

                <table>
                    <tr>
                        <th>S.No</th>
                        <th>ID</th>
                        <th>Full Name</th>
                        <th>Job Title</th>
                        <th>Department</th>
                        <th>Business Unit</th>
                        <th>Gender</th>
                        <th>Age</th>
                        <th>Hire Date</th>
                        <th>Annual Salary</th>
                        <th>Bonus%</th>
                        <th>Country</th>
                        <th>City</th>
                        <th>Exit Date</th>
                    </tr>
                    <xsl:for-each select="company/staff">
                        <tr>
                            <td>
                                <xsl:value-of select="sno"/>
                            </td>
                            <td>
                                <xsl:value-of select="id"/>
                            </td>
                            <td>
                                <xsl:value-of select="name"/>
                            </td>
                            <td>
                                <xsl:value-of select="jobtitle"/>
                            </td>
                            <td>
                                <xsl:value-of select="department"/>
                            </td>
                            <td>
                                <xsl:value-of select="businessunit"/>
                            </td>
                            <td>
                                <xsl:value-of select="gender"/>
                            </td>
                            <td>
                                <xsl:value-of select="age"/>
                            </td>
                            <td>
                                <xsl:value-of select="hiredate"/>
                            </td>
                            <td>
                                <xsl:value-of select="annualsalary"/>
                            </td>
                            <td>
                                <xsl:value-of select="bonus"/>
                            </td>
                            <td>
                                <xsl:value-of select="country"/>
                            </td>
                            <td>
                                <xsl:value-of select="city"/>
                            </td>
                            <td>
                                <xsl:value-of select="exitdate"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>

            </body>
        </html>
    </xsl:template>


</xsl:stylesheet>