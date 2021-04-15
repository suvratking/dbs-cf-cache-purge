$(document).ready(() => {
    const pageContext = $('#pageContext').val();
    
    $('#domain_tab').on('click', () =>{
    	$('#error_details').html("");
    })
    
    $('#url_tab').on('click', () =>{
    	$('#error_details').html("");
    })
    
    $("#domain_purge").on('click', () => {
    	let domain = $("#domain_txt_area").val();
    	if(domain.trim().length>0){
	    		Swal.fire({
	  			  title: 'Are you sure?',
	  			  text: "You won't be able to revert this!",
	  			  icon: 'warning',
	  			  showCancelButton: true,
	  			  confirmButtonColor: '#3085d6',
	  			  cancelButtonColor: '#d33',
	  			  confirmButtonText: 'Yes'
	  		}).then((result) => {
	  			  if (result.value) {
	  			    	purgeDomain(domain);
	  			  }
	  		})
    	}
    })
    
    const purgeDomain = (domain) => {
    	let domainA = domain.trim().split("\n").filter(x=>x.length>0).map(x=>x.trim())
    	console.log(domainA);
    	$.ajax({
			url : pageContext + "/purgeDomains",
			type : "POST",
			dataType:"JSON",
			contentType:"application/json",
			data: JSON.stringify(domainA),
			async : false,
		}).then(res => {
			console.log("res", res);
			$('#error_details').html("");
			res.forEach(s => $('#error_details').append(`<h6>${s}</h6>`));
			
		}, error => {
			console.log("error",error);
			if(error.status==200) {
								
			}
			else {
				
				// alert('Some Error Occured')
			}
		});
    }
    
    
    $("#url_purge").on('click', () => {
    	let urls = $("#url_txt_area").val();
    	if(urls.trim().length>0){
	    		Swal.fire({
	  			  title: 'Are you sure?',
	  			  text: "You won't be able to revert this!",
	  			  icon: 'warning',
	  			  showCancelButton: true,
	  			  confirmButtonColor: '#3085d6',
	  			  cancelButtonColor: '#d33',
	  			  confirmButtonText: 'Yes'
	  		}).then((result) => {
	  			  if (result.value) {
	  				purgeUrls(urls);
	  			  }
	  		})
    	}
    })
    
    const purgeUrls = (urls) => {
    	let urlsA = urls.trim().split("\n").filter(x=>x.length>0).map(x=>x.trim())
    	console.log(urlsA);
    	$.ajax({
			url : pageContext + "/purgeUrls",
			type : "POST",
			dataType:"JSON",
			contentType:"application/json",
			data: JSON.stringify(urlsA),
			async : false,
		}).then(res => {
			console.log("res",res);
			$('#error_details').html("");
			res.forEach(s => $('#error_details').append(`<h6>${s}</h6>`));
		}, error => {
			console.log("err"+error);
			if(error.status==200) {
				$('#error_details').html("");
				alert(error.responseText);
			}
			else {
				$('#error_details').html(error.responseText);
			}
		});
    }
    
})