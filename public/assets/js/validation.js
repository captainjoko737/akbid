function isNumberKey(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
};

function isCharacterKey(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode
    // Charcode a -> z | A -> Z | space
    if ((charCode < 91 && charCode > 64) || (charCode < 123 && charCode > 96) || charCode == 32) {
        return true;
    }            
    return false;
};

function isAlphaNumerik(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode
    if ((charCode < 91 && charCode > 64) ||     // lowercase
        (charCode < 123 && charCode > 96) ||    //uppercase
        (charCode == 32) || (charCode >=46 && charCode <= 47) || (charCode == 44) ||    // space | symbol: ./,
        (charCode >= 48 && charCode <= 57))     //numeric
        {
        return true;
    }            
    return false;
};

function IDRPricingFormat(Num) {
    Num += '';
    Num = Num.replace('.', ''); Num = Num.replace('.', ''); Num = Num.replace('.', '');
    Num = Num.replace('.', ''); Num = Num.replace('.', ''); Num = Num.replace('.', '');
    x = Num.split('.');
    x1 = x[0];
    x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{3})/;
    while (rgx.test(x1))
        x1 = x1.replace(rgx, '$1' + '.' + '$2');
    return x1 + x2;
};

function toUpperCase(evt) {
    if(!evt || !evt.value) return;
    evt.value = evt.value.toUpperCase();
};