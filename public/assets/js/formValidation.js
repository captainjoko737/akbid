$('#bank_terlapor').on('change',function() {
	if($('#bank_terlapor').val()) {
		$('#nama_rek_terlapor').attr('readonly', false);
		$('#norek_terlapor').attr('readonly', false);
	} else {
		$('#nama_rek_terlapor').val(null);
		$('#norek_terlapor').val(null);
		$('#nama_rek_terlapor').attr('readonly', true);
		$('#norek_terlapor').attr('readonly', true);
	}
});

$('#form-laporan').formValidation({
	message: 'This value is not valid',
	icon: {
		valid: 'glyphicon glyphicon-ok',
		invalid: 'glyphicon glyphicon-remove',
		validating: 'glyphicon glyphicon-refresh'
	},
	fields: {
		bank_terlapor: {
			validators: {
				callback: {
					message: 'Suspect identity account name and number cannot be empty',
					callback: function (value, validator, $field) {
						if($('input[name=bank_terlapor]').val()){
							if($('input[name=nama_rek_terlapor]').val() && $('input[name=norek_terlapor').val()) {
								validator.updateStatus('bank_terlapor', validator.STATUS_VALID, 'callback');
								validator.updateStatus('notlp_terlapor', validator.STATUS_VALID, 'callback');
								validator.updateStatus('web_terlapor', validator.STATUS_VALID, 'callback');
								validator.updateStatus('email_terlapor', validator.STATUS_VALID, 'callback');
								return true;
							}
							validator.updateStatus('nama_rek_terlapor', validator.STATUS_INVALID, 'callback');
							validator.updateStatus('norek_terlapor', validator.STATUS_INVALID, 'callback');
							return true;
						}
						validator.updateStatus('nama_rek_terlapor', validator.STATUS_VALID);
						validator.updateStatus('norek_terlapor', validator.STATUS_VALID);
						validator.updateStatus('notlp_terlapor', validator.STATUS_VALIDATING, 'callback');
						validator.updateStatus('web_terlapor', validator.STATUS_VALIDATING, 'callback');
						validator.updateStatus('email_terlapor', validator.STATUS_VALIDATING, 'callback')
						return true;
					}
				}
			}
		},
		nama_rek_terlapor : {
			validators: {
				callback: {
					message: 'Suspect identity bank account name and number cannot be empty',
					callback: function (value, validator, $field) {
						if($('input[name=bank_terlapor]').val()){
							if($('input[name=nama_rek_terlapor]').val() && $('input[name=norek_terlapor').val()) {
								validator.updateStatus('bank_terlapor', validator.STATUS_VALID, 'callback');
								validator.updateStatus('nama_rek_terlapor', validator.STATUS_VALID, 'callback');
								validator.updateStatus('norek_terlapor', validator.STATUS_VALID, 'callback');
								validator.updateStatus('notlp_terlapor', validator.STATUS_VALID, 'callback');
								validator.updateStatus('web_terlapor', validator.STATUS_VALID, 'callback');
								validator.updateStatus('email_terlapor', validator.STATUS_VALID, 'callback')
								return true;
							}
							if($('input[name=nama_rek_terlapor]').val()) {
								validator.updateStatus('nama_rek_terlapor', validator.STATUS_VALID, 'callback');
								return true;
							}
							return false;
						}
						return false;
					}
				}
			}
		},
		norek_terlapor: {
			validators: {
				callback: {
					message: 'Suspect identity bank account name and number cannot be empty',
					callback: function (value, validator, $field) {
						if($('select[name=bank_terlapor]').val()){
							if($('input[name=nama_rek_terlapor]').val() && $('input[name=norek_terlapor').val()) {
								validator.updateStatus('bank_terlapor', validator.STATUS_VALID, 'callback');
								validator.updateStatus('nama_rek_terlapor', validator.STATUS_VALID, 'callback');
								validator.updateStatus('norek_terlapor', validator.STATUS_VALID, 'callback');
								validator.updateStatus('notlp_terlapor', validator.STATUS_VALID, 'callback');
								validator.updateStatus('web_terlapor', validator.STATUS_VALID, 'callback');
								validator.updateStatus('email_terlapor', validator.STATUS_VALID, 'callback')
								return true;
							}
							if($('input[name=norek_terlapor]').val()) {
								validator.updateStatus('norek_terlapor', validator.STATUS_VALID, 'callback');
								return true;
							}
							return false;
						}
						return false;
					}
				}
			}
		},
		notlp_terlapor: {
			validators: {
				callback: {
					message: 'Suspect identity cannot be empty, please fill at least one',
					callback: function (value, validator, $field) {
						if($('input[name=notlp_terlapor]').val()){
							validator.updateStatus('bank_terlapor', validator.STATUS_VALID, 'callback');
							validator.updateStatus('nama_rek_terlapor', validator.STATUS_VALID, 'callback');
							validator.updateStatus('norek_terlapor', validator.STATUS_VALID, 'callback');
							validator.updateStatus('web_terlapor', validator.STATUS_VALID, 'callback');
							validator.updateStatus('email_terlapor', validator.STATUS_VALID, 'callback');
							return true;
						}
						return false;
					}
				}
			}
		},
		web_terlapor: {
			validators: {
				callback: {
					message: 'Suspect identity cannot be empty, please fill at least one',
					callback: function (value, validator, $field) {
						if($('input[name=web_terlapor]').val()){
							validator.updateStatus('bank_terlapor', validator.STATUS_VALID, 'callback');
							validator.updateStatus('nama_rek_terlapor', validator.STATUS_VALID, 'callback');
							validator.updateStatus('norek_terlapor', validator.STATUS_VALID, 'callback');
							validator.updateStatus('notlp_terlapor', validator.STATUS_VALID, 'callback');
							validator.updateStatus('email_terlapor', validator.STATUS_VALID, 'callback');
							return true;
						}
						return false;
					}
				}
			}
		},
		email_terlapor: {
			validators: {
				callback: {
					message: 'Suspect identity cannot be empty, please fill at least one',
					callback: function (value, validator, $field) {
						if($('input[name=email_terlapor]').val()){
							validator.updateStatus('bank_terlapor', validator.STATUS_VALID, 'callback');
							validator.updateStatus('nama_rek_terlapor', validator.STATUS_VALID, 'callback');
							validator.updateStatus('norek_terlapor', validator.STATUS_VALID, 'callback');
							validator.updateStatus('notlp_terlapor', validator.STATUS_VALID, 'callback');
							validator.updateStatus('web_terlapor', validator.STATUS_VALID, 'callback');
							return true;
						}
						return false;
					}
				}
			}
		}
	},
});