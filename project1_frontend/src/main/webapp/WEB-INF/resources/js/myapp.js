$(function()
{
	//solving the active menu issue
	switch(menu){
	
		case 'AboutUs':
			$('#aboutus').addClass('active');
			break;
		case 'ContactUs':
			$('#contactus').addClass('active');
			break;
		case 'home':
			$('#home').addClass('active');
			break;
		case 'View All Products':
			$('#Productlist').addClass('active');
			break;
	}
});
			
			
			
			