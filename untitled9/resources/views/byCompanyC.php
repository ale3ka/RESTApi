<html>
<head>
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>





    <script type="text/javascript">
        // Load the Visualization API and the piechart package.


        /*$(document).ready(function(){
           $.ajax({

               url: "http://localhost/untitled9/public/stations/byCompany",
                dataType: "json",
                success:function (result) {
                    google.charts.load('current', {'packages':['corechart']});

                    //alert(result)
                    google.charts.setOnLoadCallback(drawChart(result));

                }
            });
        });
*/

        var xmlhttp = initAJAX();


        //Εφόσον υποστηρίζονται AJAX κλίεις:

        if (xmlhttp) {
            // κλήση σε API για λήψη δεδομένων (ΕΔΩ κλήση σε στατικό JSON αρχείο)

            // Για λόγους security ο ΙΕ δεν ανήγει τοπικό αρχείο οπότε για τις ανάγκες

            //του παραδείγματος το έβαλα στον server που βλέπετε παρακάτω.
            xmlhttp.open("GET","http://localhost/untitled9/public/stations/all",true);

            xmlhttp.send(null);

            //ορισμός callback για τον χειρισμό της απάντησης

            xmlhttp.onreadystatechange=function() {

                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

                    var obj = JSON.parse(xmlhttp.responseText);

                    alert(obj);


                    function drawChart(result) {
                        var data = new google.visualization.DataTable();
                        data.addColunm('string', 'company');
                        data.addColunm('number', 'number');
                        var dataArray = [];
                        $.each(result, function (i, obj) {
                            dataArray.push([obj.company, parseInt(obj.number)]);
                        });
                        data.addRows(dataArray);


                        // Create our data table out of JSON data loaded from server.
                        //var data = new google.visualization.DataTable(jsonData);

                        var options = {
                            'title': '',
                            'width': 400,
                            'height': 300
                        };
                        // Instantiate and draw our chart, passing in some options.
                        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
                        chart.draw(data, {width: 400, height: 240});

                    }
                }
            }
    </script>
</head>

<body>
<!--Div that will hold the pie chart-->
<div id="chart_div"></div>
</body>
</html>