<!DOCTYPE html >
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />

        <link rel="stylesheet" type="text/css" href="styles.css">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript"
                src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDfxE5AWoLCTdXMTC1Om6DXhSfEQku1MaE">
        </script>


        <script>
            $(function(){
                $("#includedContent").load("register_modal.js.html");
            });
        </script>
        <script>
            $(function(){
                $("#includedContent").load("register_modal.js.html");
            });
        </script>
        <script>
            $(function () {
                $('#includedContent').load("order_modal.js.html");

            })
        </script>

        <script type="text/javascript">

            //κάποιες global παράμετροι που χρειάζονται σε όλη την εφαρμογή
            myMap = null;   //the map object
            myInfowindow = null;   //the infowindows object
            myPosition = null;    //browser's position
            markers = [];     //array to store marker references


            //dynamicaly associate the initialize function with the onload event of the page
            google.maps.event.addDomListener(window, 'load', initialize);

            function initialize() {
                //δομή ρυθμίσεων του χάρτη που θα φτιάξουμε - δεν είναι υποχρεωτικό!
                //https://developers.google.com/maps/documentation/javascript/3.exp/reference#MapOptions
                var mapOptions = {
                    zoom: 10,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };
                //δημιουργία του map object μέσα στο div με id='map-canvas'
                myMap = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

                //έλεγχος υποστήριξης geolocation για θέση χρήστη
                if(navigator.geolocation) {
                    //ορισμός callback συναρτήσεων για τον χειρισμό
                    //επιτυχούς ή ανεπιτυχούς προσδιορισμού θέσης
                    navigator.geolocation.getCurrentPosition(cbGetCurPosOK, cbGetCurPosFail);
                } else {
                    //o browser δεν υποστηρίζει geolocation
                    alert('Your browser does not support geolocation.');
                }

                //create an infowindow object - άδειο, σε default θέση (πάνω αριστερά)
                //θα το χρησιμοποιήσουν τα markers όταν τα κλικάρουμε.
                myInfowindow = new google.maps.InfoWindow({
                    map: myMap,
                    content: 'feed me'
                });
                //hide the infowindow
                myInfowindow.close();

            }

            //callback σε υποστήριξη geolocation
            //position είναι το στίγμα που επεστράφει από τον browser
            function cbGetCurPosOK(position) {
                //έστω διαβάζουμε την τρέχουσα θέση και φτιάχνουμε ένα σημείο χάρτη
                var curPosition = new google.maps.LatLng( position.coords.latitude,
                    position.coords.longitude );
                // κεντράρουμε το χάρτη σε αυτό το σημείο
                myMap.setCenter(curPosition);

                // φτιάχνουμε μια πινέζα (marker) σε αυτό το σημείο
                var curMarker = new google.maps.Marker({ position: curPosition,
                    title: 'You are here!',
                    icon: 'home.png' });
                //βάζουμε την πινέζα στο χάρτη (γίνεται και στην αρχικοποίηση!)
                curMarker.setMap(myMap);

                //zoom στη θέση μας - επιλέξτε επίπεδο zoom που επιτρέπει στο χρήστη
                //να δει και κάποια σημεία αναφοράς της περιοχής για να προσανατολιστεί.
                //Συνήθως τιμές 10-12 είναι οι ποιο ταιριαστές
                myMap.setZoom(12);
            }

            //callback σε MH υποστήριξη geolocation
            function cbGetCurPosFail(error) {
                //διαβάζουμε το error code και ενημερώνουμε τον χρήστη
                switch(error.code) {
                    case error.PERMISSION_DENIED:
                        alert("User denied the request for Geolocation.");
                        break;
                    case error.POSITION_UNAVAILABLE:
                        alert("Location information is unavailable.");
                        break;
                    case error.TIMEOUT:
                        alert("The request to get user location timed out.");
                        break;
                    case error.UNKNOWN_ERROR:
                        alert("An unknown error occurred.");
                        break;
                }
            }


            //συνάρτηση αρχικοποίησης AJAX υποδομής - επιστρέφει reference στο AJAX
            //object ή false αν δεν υποστηρίζονται AJAX κλήσεις από τον browser.
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


            function getData() {

                //εκκίνηση AJAX υποδομής
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
                        if(xmlhttp.readyState==4 && xmlhttp.status==200) {

                            var obj = JSON.parse(xmlhttp.responseText);
                            for (i=0; i<obj.length; i++){

                                putMarker( obj[i].gasStationLat,
                                    obj[i].gasStationLong,
                                    obj[i].fuelCompNormalName,
                                    obj[i].gasStationAddress );
                            }   //for
                        }   //if
                    }   //callback
                }   //if xmlhttp
            }   //function



            // δημιουργία, τοποθέτηση και αποθήκευση marker
            function putMarker(myLat,myLong,myComp,myAddress) {

                //create a position object
                var myPosition = new google.maps.LatLng(myLat,myLong);

                //initialize and create a marker object
                myMarker = new google.maps.Marker({
                    position: myPosition,  //θέση
                    map: myMap,		//etairia
                    title: myAddress,      //tooltip
                    draggable: false       //χωρίς δυνατότητα μετακίνησης νε drag'n'drop
                });

                //αποθήκευση στο markers array
                markers.push(myMarker);

                var content_string = myComp+": \n"+myAddress;
                //associate the infowindow with the click on the marker
                google.maps.event.addListener( myMarker, 'click', function(){
                    myInfowindow.setContent(content_string);
                    //ζηταμε να εμφανιστεί στη θέση του συσχετισμένου marker
                    myInfowindow.position = myMarker.getPosition();
                    myInfowindow.open(myMap,this); }
                );

            }

            //αφαίρεση των markers απο το χάρτη, κάνοντας το property map
            //βλ. και αρχικοποίηση marker, παραπάνω!
            function cleanMarkers() {
                for (i=0; i<markers.length; i++)
                    markers[i].setMap(null);
                //άδειασμα και του πίνακα με τα references
                markers=[];
            }

        </script>


    </head>
    <body>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Gas Stations</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li ><a href="#" onclick="getData()";>Find Stations </a></li>
                        <li><a href="#" onclick="cleanMarkers();">Clear Pins</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Info <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a  data-toggle="modal" href="\untitled9\resources\views\byCompanyD.blade.php" data-target="#stations-number">Stations Number</a></li>
                                <li><a data-toggle="modal" href="\untitled9\resources\views\minPrice.blade.php" data-target="#min-price">Minimum Prices</a></li>
                                <li><a data-toggle="modal" href="\untitled9\resources\views\maxPrice.blade.php" data-target="#max-price">Maximum Prices</a></li>

                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-left">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"  id="order" data-toggle="modal" data-target="#orderModal">Order</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Sign Up <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#"  id="sign-up-user" data-toggle="modal" data-target="#userModal">Sign up</a></li>
                                <li><a href="#"  id="sign-up-owner" data-toggle="modal" data-target="#loginModal">Login</a></li>
                                <li role="separator" class="divider"></li>
                                <li>
                                    <a href="{{ url('/logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        Logout
                                    </a>

                                    <form id="logout-form" action="{{ url('/logout') }}" method="POST" style="display: none;">
                                        {{ csrf_field() }}
                                    </form>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <div id="map-canvas"></div>
        <!-- Button trigger modal -->


        <!-- Modal for user-->
        <div class="modal fade" id="userModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Register as a User</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" >
                            <input name="_token" value={{ csrf_token() }}" type="hidden">
                            <div class="form-group">
                                <label class="col-lg-4 control-label" for="user_email">Email</label>
                                <div class="col-lg-6">
                                    <input type="email" class="form-control" id="user_email" name="user_email" placeholder="Email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-4 control-label" for="name">Name</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" id="name" name="name" placeholder="Name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-4 control-label" for="password">Password</label>
                                <div class="col-lg-6">
                                    <input type="password" class="form-control" id="password" name="password" placeholder="Choose Password">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-4 control-label" for="password_confirm">Confirm Password</label>
                                <div class="col-lg-6">
                                <input type="password" class="form-control" id="password_confirm" name="password_confirmation" placeholder="Confirm Password" >
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-6 col-md-offset-4">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="owner" > owner
                                        </label>
                                    </div>
                                </div>
                            </div>

                        </form>
                        <div id="ajax-errors" class="alert alert-danger" role="alert" style="display: none;">
                            <p><strong>Whoops!</strong></p>
                            <span>Something went wrong!</span>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" id="login-button"><span id="register-button-message">Register</span> <i id="register-button-icon" class="fa fa-arrow-right"></i></button>
                    </div>
                </div>
            </div>
        </div>



        <script>

            <!-- js for sign-up-user modal -->
            $('#login-button').click(function() {
                var email = $('#user_email').val();
                var name = $('#name').val();
                var password = $('#password').val();
                var password_confirmation=$('#password_confirm').val();
                var _token = $('input[name="_token"]').val();
                //if $("input[name='owner']:checked"):
                    //var owner=1;

                var register_button = $('#register-button-message');
                register_button.html('Registering...');

                var register_button_icon = $('#register-button-icon');
                register_button_icon.removeClass('fa-arrow-right').addClass('fa-cog fa-spin');

                $.ajax({
                    type: "POST",
                    url: "register",
                    data: {
                        _token:_token,
                        email: email,
                        name: name,
                        password: password,
                        password_confirmation:password_confirmation,

                    },
                    success: function (response) {
                        $('.modal-body').html(response['html']);
                    },
                    error: function (response) {
                        var ajax_errors = $('#ajax-errors');
                        if(response.responseJSON){
                            var title = response.responseJSON['title'];
                            var message = response.responseJSON['message'];

                            ajax_errors.css('display', 'block');
                            ajax_errors.find('strong').html(title);
                            ajax_errors.find('span').html(message);
                        }
                    },
                    complete: function() {
                        register_button.html('Register');
                        register_button_icon.removeClass('fa-cog fa-spin').addClass('fa-arrow-right');
                        //$('#userModal').modal('hide');
                    }
                })
            })

        </script>
        <!-- Modal for owner-->
        <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">

                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Login</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal">
                            <input name="_token" value={{ csrf_token() }}" type="hidden">

                            <div class="form-group">
                                <label class="col-lg-4 control-label" for="user_email">Email</label>
                                <div class="col-lg-6">
                                    <input type="email" class="form-control" id="login_email" name="user_email" placeholder="Email">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-4 control-label" for="password">Password</label>
                                <div class="col-lg-6">
                                    <input type="password" class="form-control" id="login_password" name="password" placeholder="Choose Password">
                                </div>
                            </div>
                        </form>
                        <div id="ajax-errors" class="alert alert-danger" role="alert" style="display: none;">
                            <p><strong>Whoops!</strong></p>
                            <span>Something went wrong!</span>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button  type="button" class="btn btn-primary" id="register-button"><span id="register-button-message">Login</span> <i id="register-button-icon" class="fa fa-arrow-right"></i></button>
                    </div>

                </div>
            </div>
        </div>
        <script>
            <!-- js for sign-up-owner modal -->
            $('#register-button').click(function() {
                var email = $('#login_email').val();
                var password = $('#login_password').val();
                var _token = $('input[name="_token"]').val();

                var register_button = $('#register-button-message');
                register_button.html('Login...');

                var register_button_icon = $('#register-button-icon');
                register_button_icon.removeClass('fa-arrow-right').addClass('fa-cog fa-spin');

                $.ajax({
                    type: "POST",
                    url: "login",
                    data: {
                        _token:_token,
                        email: email,
                        password: password
                    },
                    success: function (response) {
                        $('.modal-body').html(response['html']);
                    },
                    error: function (response) {
                        var ajax_errors = $('#ajax-errors');
                        if(response.responseJSON){
                            var title = response.responseJSON['title'];
                            var message = response.responseJSON['message'];

                            ajax_errors.css('display', 'block');
                            ajax_errors.find('strong').html(title);
                            ajax_errors.find('span').html(message);
                        }
                    },
                    complete: function() {
                        register_button.html('Login');
                        register_button_icon.removeClass('fa-cog fa-spin').addClass('fa-arrow-right');
                    }
                })
            })

        </script>

        <!-- Modal for order-->
        <div class="modal fade" id="orderModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Make your order</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" >
                            <input name="_token" value={{ csrf_token() }}" type="hidden" >
                            <div class="form-group">
                                <label class="col-lg-4 control-label" for="gasstation_id">Gas station id</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" id="gasstation_id" name="gasstation_id" placeholder="Gas station id">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sel1">Select gas type:</label>
                                <select class="form-control" id="type" name="type">
                                    <option>Αμόλυβδη 95</option>
                                    <option>Αμόλθβδη 100</option>
                                    <option>Super</option>
                                    <option>Diesel κίνησης</option>
                                    <option>Diesel θερμανσης</option>
                                    <option>Diesel θερμανσης κ.ο.</option>
                                    <option> Υγραέριο κίνησης</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-4 control-label" for="quantity">Quantity</label>
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" id="quantity" name="quantity" placeholder="Choose quantity">
                                </div>
                            </div>

                        </form>
                        <div id="ajax-errors" class="alert alert-danger" role="alert" style="display: none;">
                            <p><strong>Whoops!</strong></p>
                            <span>Something went wrong!</span>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" id="order-button"><span id="order-button-message">Order</span> <i id="order-button-icon" class="fa fa-arrow-right"></i></button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade text-center" id="stations-number">
            <div class="modal-dialog">
                <div class="modal-content">
                </div>
            </div>
        </div>
        <div class="modal fade text-center" id="min-price">
            <div class="modal-dialog">
                <div class="modal-content">
                </div>
            </div>
        </div>
        <div class="modal fade text-center" id="max-price">
            <div class="modal-dialog">
                <div class="modal-content">
                </div>
            </div>
        </div>

        <script>

            <!-- js for order modal -->
            $('#order-button').click(function() {
                var gasstation_id = $('#gasstation_id').val();
                var type = $('#type').val();
                var quantity = $('#quantity').val();
                var _token = $('input[name="_token"]').val();

                var order_button = $('#order-button-message');
                order_button.html('ordering...');

                var order_button_icon = $('#order-button-icon');
                order_button_icon.removeClass('fa-arrow-right').addClass('fa-cog fa-spin');
                var users_id =
                    "<?php

                        require_once ('orderController.php');

                    // Get the currently authenticated user's ID...
                    $id = $this->user()->id();
                    echo $id;
                    ?>;";

                var pricedata_id="<?php
                    $pricedata_id=\DB::table('pricedata')
                        ->select('id')
                        ->where('gasStationID', '=', $_POST["gasstation_id"],'and','fuelNormalName','=',$_POST["type"])
                        ->get();
                    echo $pricedata_id;
                    ?>;";

                $.ajax({
                    type: "POST",
                    url: "order",
                    data: {

                        gasstation_id:gasstation_id,
                        pricedata_id: pricedata_id,
                        users_id: users_id,
                        quantity:quantity
                    },
                    success: function (response) {
                        $('.modal-body').html(response['html']);
                    },
                    error: function (response) {
                        var ajax_errors = $('#ajax-errors');
                        if (response.responseJSON) {
                            var title = response.responseJSON['title'];
                            var message = response.responseJSON['message'];

                            ajax_errors.css('display', 'block');
                            ajax_errors.find('strong').html(title);
                            ajax_errors.find('span').html(message);
                        }
                    },
                    complete: function () {
                        order_button.html('Order');
                        order_button_icon.removeClass('fa-cog fa-spin').addClass('fa-arrow-right');
                        //$('#userModal').modal('hide');
                    }
                })
            })

        </script>

        <script>
            $('#stations-number').click()
        </script>

        <script>
            $('#min-price').click()
        </script>
        <script>
            $('#max-price').click()
        </script>
        <button onclick="getData();" id="getDataBtn" type="button">Click Me!</button>
        <button onclick="cleanMarkers();" id="cleanMarkersBtn" type="button">Clear!</button>

    </body>
</html>
