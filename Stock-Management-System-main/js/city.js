
var cities = {
    'Barisal Division': [
        'Barisal', 'Bhola', 'Jhalokati', 'Patuakhali', 'Pirojpur'
    ],
    'Chittagong Division': [
        'Chittagong', 'Bandarban', 'Brahmanbaria', 'Chandpur', 'Comilla',
        'Cox\'s Bazar', 'Feni', 'Khagrachhari', 'Lakshmipur', 'Noakhali', 'Rangamati'
    ],
    'Dhaka Division': [
        'Dhaka', 'Faridpur', 'Gazipur', 'Gopalganj', 'Kishoreganj', 'Madaripur',
        'Manikganj', 'Munshiganj', 'Narayanganj', 'Narsingdi', 'Rajbari', 'Shariatpur', 'Tangail'
    ],
    'Khulna Division': [
        'Khulna', 'Bagerhat', 'Chuadanga', 'Jessore', 'Jhenaidah', 'Kushtia',
        'Magura', 'Meherpur', 'Narail', 'Satkhira'
    ],
    'Mymensingh Division': [
        'Mymensingh', 'Jamalpur', 'Netrokona', 'Sherpur'
    ],
    'Rajshahi Division': [
        'Rajshahi', 'Bogra', 'Chapai Nawabganj', 'Joypurhat', 'Naogaon',
        'Natore', 'Pabna', 'Sirajganj'
    ],
    'Rangpur Division': [
        'Rangpur', 'Dinajpur', 'Gaibandha', 'Kurigram', 'Lalmonirhat', 'Nilphamari',
        'Panchagarh', 'Thakurgaon'
    ],
    'Sylhet Division': [
        'Sylhet', 'Habiganj', 'Moulvibazar', 'Sunamganj'
    ]};


var City = function() {

	this.p = [],this.c = [],this.a = [],this.e = {};
	window.onerror = function() { return true; }
	
	this.getProvinces = function() {
		for(let province in cities) {
			this.p.push(province);
		}
		return this.p;
	}
	this.getCities = function(province) {
		if(province.length==0) {
			console.error('Please input province name');
			return;
		}
		for(let i=0;i<=cities[province].length-1;i++) {
			this.c.push(cities[province][i]);
		}
		return this.c;
	}
	this.getAllCities = function() {
		for(let i in cities) {
			for(let j=0;j<=cities[i].length-1;j++) {
				this.a.push(cities[i][j]);
			}
		}
		this.a.sort();
		return this.a;
	}
	this.showProvinces = function(element) {
		var str = '<option selected disabled>Select Province</option>';
		for(let i in this.getProvinces()) {
			str+='<option>'+this.p[i]+'</option>';
		}
		this.p = [];		
		document.querySelector(element).innerHTML = '';
		document.querySelector(element).innerHTML = str;
		this.e = element;
		return this;
	}
	this.showCities = function(province,element) {
		var str = '<option selected disabled>Select City</option>';
		var elem = '';
		if((province.indexOf(".")!==-1 || province.indexOf("#")!==-1)) {
			elem = province;
		}
		else {
			var cities = this.getCities(province); // Retrieve cities for the selected province
        if (cities) {
            for (let i = 0; i < cities.length; i++) {
                str += '<option>' + cities[i] + '</option>';
            }
			}
			elem = element;
		}
		this.c = [];
		document.querySelector(elem).innerHTML = '';
		document.querySelector(elem).innerHTML = str;
		document.querySelector(this.e).onchange = function() {		
			var Obj = new City();
			Obj.showCities(this.value,elem);
		}
		return this;
	}
}
