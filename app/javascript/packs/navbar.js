// define all UI variable

document.addEventListener('DOMContentLoaded', (event) => {
    const navToggler = document.querySelector('.nav-toggler');
	const navMenu = document.querySelector('.site-navbar ul');
	const navLinks = document.querySelectorAll('.site-navbar a');


	function navLinkClick() {
	  if(navMenu.classList.contains('open')) {
	    navToggler.click();
	  }
	}


	function togglerClick() {
	  navToggler.classList.toggle('toggler-open');
	  navMenu.classList.toggle('open');
	}
	// functions of all event listners
	function harsh() {
	  // toggler icon click event
	  
	  	navToggler.addEventListener('click', togglerClick);
	  
	  
	  // nav links click event
	  
	  	navLinks.forEach( elem => elem.addEventListener('click', navLinkClick));
	  
	  
	}
	// load all event listners
	harsh();

});



// togglerClick function


// navLinkClick function

