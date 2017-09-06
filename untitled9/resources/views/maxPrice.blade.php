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

        var name = ['Αμόλυβδη 95', 'Αμόλυβδη 100','Super', 'Diesel Κίνησης','Diesel Θέρμανσης','Υγραέριο Κίνησης', 'Diesel Θέρμανσης'];

        var count = [0,0,0,0,0,0,0];

        var data=[];

        data.name = name;

        data.count = count;

        var xmlhttp = initAJAX();


        //Εφόσον υποστηρίζονται AJAX κλίεις:

        if (xmlhttp) {
            // κλήση σε API για λήψη δεδομένων (ΕΔΩ κλήση σε στατικό JSON αρχείο)

            // Για λόγους security ο ΙΕ δεν ανήγει τοπικό αρχείο οπότε για τις ανάγκες

            //του παραδείγματος το έβαλα στον server που βλέπετε παρακάτω.
            xmlhttp.open("GET","http://localhost/untitled9/public/stations/maxPrice",true);

            xmlhttp.send(null);

            //ορισμός callback για τον χειρισμό της απάντησης

            xmlhttp.onreadystatechange=function() {

                if(xmlhttp.readyState==4 && xmlhttp.status==200) {

                    var obj = JSON.parse(xmlhttp.responseText);

                    var stations = obj;



                    for(var i=0; i<7; i++){


                        if(stations[i].fuelTypeID==i) {

                            data.count[i]=stations[i].max_price;

                        }

                    }



                    google.charts.load('current', {'packages':['corechart']});

                    google.charts.setOnLoadCallback(drawChart);

                    function drawChart() {


                        var datas = new google.visualization.DataTable();


                        datas.addColumn('string', 'Type');

                        datas.addColumn('number', 'Price');

                        datas.addRows(15);


                        for(i=0;i<obj.length;i++){

                            datas.setCell(0,0, 'Αμόλυβδη 95');
                            datas.setCell(1,0,'Αμόλυβδη 100');
                            datas.setCell(2,0,'Super');
                            datas.setCell(3,0,'Diesel Κίνησης');
                            datas.setCell(4,0,'Diesel Θέρμανσης');
                            datas.setCell(5,0,'Υγραέριο Κίνησης');
                            datas.setCell(6,0,'Diesel Θέρμανσης');


                            datas.setCell(i,1, obj[i].max_price);

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
                            title: 'Max prices per gas type',
                            bar: {groupWidth: "70%"},
                            legend: { position: "none" },
                            colors: ['#1c91c0']

                        };
                        console.log(datas);

                        var chart = new google.visualization.ColumnChart(document.getElementById('max_chart_div'));

                        chart.draw(datas, options);
                    }


                }   //if
            }   //callback
        }//if xmlhttp


    </script>
</head>

<body>
<!--Div that will hold the pie chart-->
<div id="max_chart_div" style="width: 900px; height: 500px;"></div>
</body>
</html>