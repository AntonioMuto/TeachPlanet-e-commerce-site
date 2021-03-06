$('table').on('click', '[class="btn btn-success btn-lg"]', function(){
	
	let usernameField = $(this).closest("tr").find("#username").text();
	let productID = $(this).closest("tr").find("#prodId").text();
    let moneyreturned = $(this).closest("tr").find("#amount").val();
	let status = "accepted";
	let user = new User(usernameField);
	let product = new Product(productID);
	let returnRequest = new ReturnRequest(user,product,moneyreturned,status);
	
	if(moneyreturned == "" || moneyreturned <= 0){
		$(this).closest('tr').find('#amount-cell').html('Insert a value > 0<input type="number" value="0" class="text-center" step=".01"min="0" max="9999" oninput="validity.valid||(value="");" id="amount">');
	}
	else{
		$(this).closest('tr').find('#amount-cell').html('Money to return<input type="number" value="0" class="text-center" step=".01"min="0" max="9999" oninput="validity.valid||(value="");" id="amount">');
		$.ajax({
			type: "POST",
			url: "/updateRequest",
			contentType: "application/json",
			data: JSON.stringify(returnRequest),
			beforeSend:function(){
        	if(confirm("Are you sure you want to accept the return request?")){
				$(this).closest("tr").remove(); 
			}
		 	else{ return false; }},
			success: function(){
				window.location.reload();
			}	
			});
	}
	
     });



$('table').on('click', '[class="btn btn-danger btn-lg"]', function(){
       

	let usernameField = $(this).closest("tr").find("#username").text();
	let productID = $(this).closest("tr").find("#prodId").text();
    let moneyreturned = 0;
	let status = "declined";
	let user = new User(usernameField);
	let product = new Product(productID);
	let returnRequest = new ReturnRequest(user,product,moneyreturned,status);
	
	$.ajax({
			type: "POST",
			url: "/updateRequest",
			contentType: "application/json",
			data: JSON.stringify(returnRequest),
			beforeSend:function(){
        	if(confirm("Are you sure you want to refuse the return request?")){ 
				$(this).closest('tr').remove();
			}
		 	else{ return false; }},
			success: function(){
				window.location.reload();
			}	
			});
     });


function ReturnRequest(user,product,moneyreturned,status){
	this.user = user;
	this.product = product;
	this.moneyreturned = moneyreturned;
	this.status = status;
}

function User(username){
	this.username = username;
}

function Product(id){
	this.id = id;
}