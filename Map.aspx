<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="WebApplication1.Map" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
   

</head>
<body>
    <form id="form1" runat="server">
        <div id="main">
            <div style="align-content:center">
                <div id="visualization"></div>
            </div>
            <script>
                google.load('visualization', '1', {
                    'packages': ['geochart']
                });
                google.setOnLoadCallback(drawVisualization);

                function drawVisualization() {
                    var data = google.visualization.arrayToDataTable([

                        ['State Code', 'State', 'Result'],
                        ['IN-AN', 'Andaman and Nicobar Islands', 9],
                        ['IN-AP', 'Andhra Pradesh', 13],
                        ['IN-AR', 'Arunachal Pradesh', 34],
                        ['IN-AS', 'Assam', 13],
                        ['IN-BR', 'Bihar', 34],
                        ['IN-CH', 'Chandigarh', 15],
                        ['IN-CT', 'Chhattisgarh', 34],
                        ['IN-DN', 'Dadra and Nagar Haveli', 34],
                        ['IN-DD', 'Daman and Diu', 34],
                        ['IN-DL', 'Delhi', 34],
                        ['IN-GA', 'Goa', 76],
                        ['IN-GJ', 'Gujarat', 34],
                        ['IN-HR', 'Haryana', 14],
                        ['IN-HP', 'Himachal Pradesh', 34],
                        ['IN-JK', 'Jammu and Kashmir', 34],
                        ['IN-JH', 'Jharkhand', 34],
                        ['IN-KA', 'Karnataka', 34],
                        ['IN-KL', 'Kerala', 34],
                        ['IN-LA', 'Ladakh', 34],
                        ['IN-LD', 'Lakshadweep', 34],
                        ['IN-MP', 'Madhya Pradesh', 34],
                        ['IN-MH', 'Maharashtra', 34],
                        ['IN-MN', 'Manipur', 34],
                        ['IN-ML', 'Meghalaya', 34],
                        ['IN-MZ', 'Mizoram', 23],
                        ['IN-NL', 'Nagaland', 34],
                        ['IN-OR', 'Odisha', 34],
                        ['IN-PY', 'Puducherry', 34],
                        ['IN-PB', 'Punjab', 34],
                        ['IN-RJ', 'Rajasthan', 34],
                        ['IN-SK', 'Sikkim', 34],
                        ['IN-TN', 'Tamil Nadu', 34],
                        ['IN-TG', 'Telangana', 34],
                        ['IN-TR', 'Tripura', 34],
                        ['IN-UP', 'Uttar Pradesh', 34],
                        ['IN-UT', 'Uttarakhand', 34],
                        ['IN-WB', 'West Bengal', 54]]);

                    var opts = {
                        displayMode: Text,
                        region: 'IN',
                        domain: 'IN',
                        displayMode: 'regions',
                        colorAxis: { colors: ['#008000', '#FFFF00', '#0000FF'] },
                        resolution: 'provinces',
                        backgroundColor: '#81d4fa',
                        defaultColor: '#f5f5f5',
                        width: 940,
                        height: 680,

                    };

                    var geochart = new google.visualization.GeoChart(
                        document.getElementById('visualization')
                    );
                    geochart.draw(data, opts);
                };
            </script>
        </div>
      
           <%-- <div id="regions_div" style="width: 900px; height: 500px;"></div>--%>
     
    </form>
</body>
</html>
