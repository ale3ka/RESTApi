<html>
<head>
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>


    <!-- jQuery library -->

    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js"></script>




    <script type="text/javascript">
        function initAJAX() {
            if (window.XMLHttpRequest) {
                // code for IE7+, Firefox, Chrome, Opera, Safari
                return new XMLHttpRequest();
            }
            else if (window.ActiveXObject) {
                // code for IE6, IE5 - εδώ χρησιμοποιούνται ActiveX object (MS τεχνολογίες)
                return new ActiveXObject("Microsoft.XMLHTTP");
            } else {
                alert("Your browser does not support XMLHTTP!");
                return false;
            }
        }

        var name = ['AVIN', 'SHELL', 'AEGEAN', 'EKO', 'BP', 'REVOIL',
            'ΕΛΙΝΟΙΛ','Α.Π.','ΕΤΕΚΑ','KAOIL','ΑΡΓΩ','JETOIL','SILKOIL','ΤΡΙΑΙΝΑ', 'CYCLON'];

        var count = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

        var data=[];


        data.name = name;

        data.count = count;

        var xmlhttp = initAJAX();


        //Εφόσον υποστηρίζονται AJAX κλίεις:

        if (xmlhttp) {
            // κλήση σε API για λήψη δεδομένων (ΕΔΩ κλήση σε στατικό JSON αρχείο)

            // Για λόγους security ο ΙΕ δεν ανήγει τοπικό αρχείο οπότε για τις ανάγκες

            //του παραδείγματος το έβαλα στον server που βλέπετε παρακάτω.
            xmlhttp.open("GET","http://localhost/untitled9/public/stations/byCompany",true);

            xmlhttp.send(null);

            //ορισμός callback για τον χειρισμό της απάντησης

            xmlhttp.onreadystatechange=function() {

                if(xmlhttp.readyState==4 && xmlhttp.status==200) {

                    var obj = JSON.parse(xmlhttp.responseText);

                    var stations = obj;



                    for(var i=0; i<stations.length; i++){

                        for(var j=0; j<15; j++){


                            if(stations[i].fuelCompNormalName==data.name[j]) {

                                data.count[j]++;

                            }

                        }

                    }

                    google.charts.load('current', {'packages':['corechart']});

                    google.charts.setOnLoadCallback(drawChart);

                    function drawChart() {


                        var datas = new google.visualization.DataTable();


                        datas.addColumn('string', 'Company Name');

                        datas.addColumn('number', 'Count');

                        datas.addRows(15);


                        for(i=0;i<obj.length;i++){

                            datas.setCell(i,0, obj[i].company);

                            datas.setCell(i,1, obj[i].number);

                        }
                        /*
                         var view = new google.visualization.DataView(datas);
                         view.setColumns([0, 1,
                         { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                         2]);
                         */
                        var options = {
                            title: 'No Of Gas Stations Per Company',
                            pieSliceText: 'label'


                        };
                        console.log(datas);

                        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));

                        chart.draw(datas, options);
                    }


                }   //if
            }   //callback
        }   //if xmlhttp


    </script>
</head>

<body>
<!--Div that will hold the pie chart-->
<div id="chart_div" style="width: 900px; height: 500px;"></div>
</body>
</html>