<%@ Page Title="" Language="C#" MasterPageFile="~/VTSSite1.Master" AutoEventWireup="true" CodeBehind="GeoMap.aspx.cs" Inherits="WebApplication1.GeoMap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', {
            'packages': ['geochart'],
        });
        google.charts.setOnLoadCallback(drawRegionsMap);

        function drawRegionsMap() {
            var data = google.visualization.arrayToDataTable([
                ['Country', 'Popularity'],
                ['Germany', 200],
                ['United States', 300],
                ['Brazil', 400],
                ['Pakistan', 500],
                ['India', 14000],
                ['RU', 700]
            ]);

            var options = {

                region: '034', // India
                colorAxis: { colors: ['#00853f', 'black', '#e31b23'] },
                backgroundColor: '#81d4fa',
                datalessRegionColor: '#f8bbd0',
                defaultColor: '#f5f5f5',
                region: '034',
                domain: 'PK',
                colorAxis: { colors: ['#DE3163', 'black', '#FFBF00'] },
                backgroundColor: '#40E0D0',
                datalessRegionColor: '#00FF00',
                defaultColor: '#f5f5f5'
                
            };
            //var data = google.visualization.arrayToDataTable([
            //    ['Lat', 'Long', 'Name'],
            //    [10.8505° N , 76.2711° E, 'Kerala'],
            //    [22.9734° N, 78.6569° E, 'Madhya Pradesh'],
            //    [19.7515° N, 75.7139° E, 'Maharashtra'],
            //    [24.6637° N, 93.9063° E, 'Manipur']
            //]);

            var chart = new google.visualization.GeoChart(document.getElementById('regions_div'));

            chart.draw(data, options);


           
        }
        
    </script>
    
            <div id="regions_div" style="width: 900px; height: 500px;"></div>
               
  
</asp:Content>
