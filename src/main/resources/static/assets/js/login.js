
$(function() {
    validateRule();
    $('.imgcode').click(function() {
        var url = "captcha/next?w=120&h=60&s=" + Math.random();
        $(".imgcode").attr("src", url);
    });
});

$.validator.setDefaults({
    submitHandler: function() {
		login();
    }
});

function login() {
	$.modal.loading($("#btnSubmit").data("loading"));
	var username = $.common.trim($("input[name='username']").val());
    var password = $.common.trim($("input[name='password']").val());
    var validateCode = $("input[name='validateCode']").val();
    var rememberMe = $("input[name='rememberme']").is(':checked');

    //加密开始
    var encrypt = new JSEncrypt();
    var pubkey = $.common.trim($("input[name='pubkey']").val());
    encrypt.setPublicKey("-----BEGIN PUBLIC KEY-----" + pubkey + "-----END PUBLIC KEY-----");
    password = encrypt.encrypt(password);
    //加密结束

    $.ajax({
        type: "post",
        url: "login/login",
        data: {
            "username": username,
            "password": password,
            "validateCode" : validateCode,
            "rememberMe": rememberMe,
            "update": true
        },
        success: function(r) {
            if (r.code == 0) {
                var url = window.location.href;
                var reg = RegExp(/index/);
                if(url.match(reg)){
                    window.location.reload();
                }else {
                    location.href = 'index';
                }
            } else {
            	$.modal.closeLoading();
            	$('.imgcode').click();
            	$(".code").val("");
            	$.modal.msg(r.msg);
            }
        }
    });
}

function validateRule() {
    var icon = "<i class='fa fa-times-circle'></i> ";
    $("#signupForm").validate({
        rules: {
            username: {
                required: true
            },
            password: {
                required: true
            }
        },
        messages: {
            username: {
                required: icon + "请输入您的用户名",
            },
            password: {
                required: icon + "请输入您的密码",
            }
        }
    })
}
