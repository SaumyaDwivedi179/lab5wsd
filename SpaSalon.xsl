<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <!-- Template to match the root element -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Spa and Salon Management System</title>
                <style>
                    table { width: 80%; margin: 20px auto; border-collapse: collapse; }
                    th, td { border: 1px solid #000; padding: 10px; text-align: left; }
                    th { background-color: #f2f2f2; color: black; text-align: center; }
                    h1 { text-align: center; }
                    .section-header { background-color: #333; color: white; }
                </style>
            </head>
            <body>
                <h1>Spa and Salon Management System</h1>
                
                <!-- Company Information Table -->
                <table>
                    <tr class="section-header">
                        <th colspan="2">Company Information</th>
                    </tr>
                    <tr>
                        <th>Company Name</th>
                        <td><xsl:value-of select="SpaSalon/Company/CompanyName"/></td>
                    </tr>
                    <tr>
                        <th>Company Code</th>
                        <td><xsl:value-of select="SpaSalon/Company/CompanyCode"/></td>
                    </tr>
                </table>

                <br/>

                <!-- Services Table -->
                <table>
                    <tr class="section-header">
                        <th colspan="3">Services</th>
                    </tr>
                    <tr>
                        <th>Service Code</th>
                        <th>Service Name</th>
                        <th>Availability</th>
                    </tr>
                    <xsl:for-each select="SpaSalon/Services/Service">
                        <tr>
                            <td><xsl:value-of select="ServiceCode"/></td>
                            <td><xsl:value-of select="ServiceName"/></td>
                            <td><xsl:value-of select="ServiceAvailability"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <br/>

                <!-- Appointments Table -->
                <table>
                    <tr class="section-header">
                        <th colspan="5">Appointments</th>
                    </tr>
                    <tr>
                        <th>Appointment ID</th>
                        <th>Customer Name</th>
                        <th>Customer Phone</th>
                        <th>Service Code</th>
                        <th>Total Price (INR)</th>
                    </tr>
                    <xsl:for-each select="SpaSalon/Appointments/Appointment">
                        <tr>
                            <td><xsl:value-of select="AppointmentID"/></td>
                            <td><xsl:value-of select="CustomerName"/></td>
                            <td><xsl:value-of select="CustomerPhone"/></td>
                            <td><xsl:value-of select="ServiceCode"/></td>
                            <td><xsl:value-of select="TotalPrice"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>