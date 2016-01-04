function is_numeric(str){
    return /^\d+$/.test(str);
}

jQuery('#urkunde_Urkundennummer').change(function() {
	var nummer = jQuery('#urkunde_Urkundennummer').prop("value");
	var add = "_z";
	if (nummer.slice(0, 1) == "c") {
		nummer = nummer.slice(1);
		add = "_c";
	}
	
	if ( !is_numeric(nummer.slice(-1)) ) {
		add = add + "_" + nummer.slice(-1);
		nummer = nummer.slice(0, nummer.length-1);
	};
	jQuery('#urkunde_sortUrkundennummer').prop("value", Array(4-nummer.length + 1).join('0')+nummer+add);
});

function replace_umlaut(str) {
	var mapping = {
			"ä": "ae", 
			"ö": "oe", 
			"ü": "ue", 
			"Ä": "Ae", 
			"Ö": "Oe", 
			"Ü": "Ue", 
			"ß": "ss"
	};
	
	for (var c in mapping) {
		str = str.replace(new RegExp(c, 'g'), mapping[c]);
	};
	
	return str;
};

jQuery('#ort_Name').change(function() {
	var name = jQuery('#ort_Name').prop("value");
	jQuery('#ort_sortName').prop("value", replace_umlaut(name));
});

jQuery('#ort_Quellennamen').change(function() {
	if ( jQuery('#ort_Name').prop("value") == "" ){
		first = jQuery('#ort_Quellennamen').prop("value").split(", ")[0];
		jQuery('#ort_sortName').prop("value", replace_umlaut(first));
	};
});

jQuery('#ort_sortName').prop('readonly', true);
jQuery('#urkunde_sortUrkundennummer').prop('readonly', true);