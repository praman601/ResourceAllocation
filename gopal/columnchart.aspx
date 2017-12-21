<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="columnchart.aspx.cs" Inherits="gopal.columnchart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>amCharts Responsive Example</title>
    <script src="amcharts_3.21.12.free/amcharts/amcharts.js"></script>
    <script src="amcharts_3.21.12.free/amcharts/funnel.js"></script>
      <script src="../responsive.min.js"></script>
      <style>
      body, html {
          height: 100%;
          padding: 0;
          margin: 0;
      }
      </style>
      <script>
          debugger;
          var BarChartData = "";
      var chart = AmCharts.makeChart("chartdiv", {
        "type": "funnel",
          "dataProvider": <%= result %>,
        "balloon": {
          "fixedPosition": true
        },
        "legend": {},
        "valueField": "taskCode",
        "titleField": "taskName",
        "marginRight": 240,
        "marginLeft": 50,
        "startX": -500,
        "depth3D":100,
        "angle":40,
        "outlineAlpha":1,
        "outlineColor":"#FFFFFF",
        "outlineThickness":2,
        "labelPosition": "right",
        "balloonText": "[[taskName]]: [[taskCode]]n[[description]]",
        "responsive": {
          "enabled": true
        }
      });
      </script>
  </head>

  <body>
    <div id="chartdiv" style="width: 100%; height: 100%;"></div>
  </body>

</html>
