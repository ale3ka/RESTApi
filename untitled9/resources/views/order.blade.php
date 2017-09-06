@extends ('welcome')

<!-- Modal for order-->
<div class="modal fade" id="orderModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Order</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" >
                    <!--input name="_token" value={{ csrf_token() }}" type="hidden" -->
                    {{csrf_field()}}
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
                <button type="button" class="btn btn-primary" id="order-button">
                    <span id="order-button-message">Order</span>
                    <i id="order-button-icon" class="fa fa-arrow-right"></i></button>
            </div>
        </div>
    </div>
</div>



<script>

    <!-- js for orderModal -->
    $('#order-button').click(function() {
        var gasstation_id = $('#gasstation_id').val();
        var type = $('#type:selected').text();
        var quantity = $('#quantity').val();
        var _token = $('input[name="_token"]').val();
        //if $("input[name='owner']:checked"):
        //var owner=1;

        var order_button = $('#order-button-message');
        order_button.html('ordering...');

        var order_button_icon = $('#order-button-icon');
        order_button_icon.removeClass('fa-arrow-right').addClass('fa-cog fa-spin');
        var users_id = "<?php

            require_once ('App\Http\Controllers\orderController.php');

            // Get the currently authenticated user's ID...
            $id = $this->user()->id();
            echo $id;
            ?>";

        var pricedata_id="<?php
            $pricedata_id=\DB::table('pricedata')
                ->select('id')
                ->where('gasStationID', '=', $_POST["gasstation_id"],'and','fuelNormalName','=',$_POST["type"])
                ->get();
            echo $pricedata_id;
            ?>";

        $.ajax({
            type: "POST",
            url: "http://localhost/untitled9/public/order",
            data: {
                _token: _token,
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
