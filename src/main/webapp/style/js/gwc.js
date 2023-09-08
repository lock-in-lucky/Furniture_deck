$(function() {
	zongjia();


	$(".na1").click(function() {
		var jiajian = $(this).siblings("input[type='text']");
		var number = parseInt(jiajian.val());
		jiajian.val(number + 1);
		xiaoji($(this), number + 1);
		zongjia();
		shul();
	});

	$(".na3").click(function() {
		var jiajian = $(this).siblings("input[type='text']");
		var number = parseInt(jiajian.val());
		if (number > 1) {
			jiajian.val(number - 1);
			xiaoji($(this), number - 1);
			zongjia();
			shul();
		}

	});

	function xiaoji($naniu, number) {
		var $naniu = $naniu.parent().next();
		var price = parseFloat($naniu.text().substr(1));
		var $tdtotal = $naniu.next();
		var total = price * number;
		$($tdtotal).find("span").html(total.toFixed(2));
	}

	function zongjia() {
		var sum = 0;
		$("span[class='heji']").each(function() {
			sum += parseFloat($(this).text());

		});
		$(".c2").html("&yen;" + sum.toFixed(2));
	}

	function shul() {
		var sum = 0;
		$("input[type='text']").each(function() {
			sum += parseFloat($(this).val());
		});
		$(".c1").html(sum);
	}

});
