<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Spa Salon Information</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 0;
                        padding: 0;
                        background-color: #f4f4f4;
                    }
                    h2, h3 {
                        color: #333;
                        text-align: center;
                    }
                    table {
                        width: 90%;
                        margin: 20px auto;
                        border-collapse: collapse;
                        background-color: #fff;
                        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
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
                    caption {
                        font-weight: bold;
                        margin: 10px;
                    }
                    .container {
                        width: 90%;
                        margin: 0 auto;
                        padding: 20px;
                        background-color: #fff;
                        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                    }
                </style>
            </head>
            <body>
                <div class="container">
                    <h2>Spa Salon: <xsl:value-of select="SpaSalon/Company/CompanyName"/></h2>
                    <h3>Company Information</h3>
                    <table>
                        <caption>Company Details</caption>
                        <tr>
                            <th>Company Name</th>
                            <th>Company Code</th>
                            <th>Address</th>
                            <th>Phone</th>
                        </tr>
                        <tr>
                            <td><xsl:value-of select="SpaSalon/Company/CompanyName"/></td>
                            <td><xsl:value-of select="SpaSalon/Company/CompanyCode"/></td>
                            <td><xsl:value-of select="SpaSalon/Company/CompanyAddress"/></td>
                            <td><xsl:value-of select="SpaSalon/Company/CompanyPhone"/></td>
                        </tr>
                    </table>

                    <h3>Services Offered</h3>
                    <table>
                        <caption>Service Details</caption>
                        <tr>
                            <th>Service Code</th>
                            <th>Service Name</th>
                            <th>Description</th>
                            <th>Price</th>
                            <th>Availability</th>
                            <th>Duration</th>
                            <th>Date</th>
                            <th>Location</th>
                        </tr>
                        <xsl:for-each select="SpaSalon/Services/Service">
                            <tr>
                                <td><xsl:value-of select="ServiceCode"/></td>
                                <td><xsl:value-of select="ServiceName"/></td>
                                <td><xsl:value-of select="ServiceDescription"/></td>
                                <td><xsl:value-of select="ServicePrice"/></td>
                                <td><xsl:value-of select="ServiceAvailability"/></td>
                                <td><xsl:value-of select="ServiceDuration"/></td>
                                <td><xsl:value-of select="ServiceDate"/></td>
                                <td><xsl:value-of select="ServiceLocation"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>

                    <h3>Appointments</h3>
                    <table>
                        <caption>Appointment Details</caption>
                        <tr>
                            <th>Appointment ID</th>
                            <th>Customer Name</th>
                            <th>Phone</th>
                            <th>Date</th>
                            <th>Service Code</th>
                            <th>Service Name</th>
                            <th>Base Price</th>
                            <th>Total Price</th>
                        </tr>
                        <xsl:for-each select="SpaSalon/Appointments/Appointment">
                            <tr>
                                <td><xsl:value-of select="AppointmentID"/></td>
                                <td><xsl:value-of select="CustomerName"/></td>
                                <td><xsl:value-of select="CustomerPhone"/></td>
                                <td><xsl:value-of select="AppointmentDate"/></td>
                                <td><xsl:value-of select="ServiceCode"/></td>
                                <td><xsl:value-of select="ServiceName"/></td>
                                <td><xsl:value-of select="BasePrice"/></td>
                                <td><xsl:value-of select="TotalPrice"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
