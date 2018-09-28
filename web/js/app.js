/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



function calculTotal(){

    if ($("#subTotal").html()!=="0"){
var nextDayDelivery = parseFloat($("#nextDayDelivery").attr('value'));
var standardDelivery = parseFloat($("#standardDelivery").attr('value'));
var myRadio = $("input[name=radio]");

var checkedValue = myRadio.filter(":checked").val();

var initialTTC = parseFloat($("#initialTTC").val().replace(",","."));


var totalPlusDelivery = parseFloat(checkedValue) + initialTTC;

$("#totalTTC").html(totalPlusDelivery.toFixed(2));
if (parseFloat(checkedValue) === 0) {
$("#Delivery").html("Free");
}
else {
    $("#Delivery").html(checkedValue);
}
$("#delivery_price").val(checkedValue);

}

}

function clearCart(){
   $("#action").val("clearCart");
   
   $("#Cart").submit();
    
}

function updateCart(){
   $("#action").val("updateCart");

   $("#Cart").submit();
    
}

function checkout(){
    $("#action").val("checkout");
     $("#Cart").submit();
    
}

function placeOrder(){
    if ($("#connected").value === true) {
       $("# order").submit();
    }
    else {
        $("#imgDelivery").css("display","none");
        $("#formClient").css("display","inline");
        
    }
    
}


    function getData(){
                var xmlhttp = new XMLHttpRequest();
                var url = "Display?searchProduct=" + document.getElementById("searchProduct").value;
                
                xmlhttp.onreadystatechange = processData;
                xmlhttp.open("GET",url,true);
                xmlhttp.send();
            }
            function processData(){
                if (this.readyState == 4 && this.status == 200) {
                    var myObj = JSON.parse(this.responseText);
                    document.getElementById("demo").innerHTML = myObj;
                }
            }
    
    
