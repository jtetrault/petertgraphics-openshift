$(document).ready(function()
	{
		$("a.replace-image").click(function()
			{
				$("#link").attr("href", $(this).attr("data-href"));
				$("#image").attr("src", $(this).attr("data-image"));
				return false;
			}
		);
	}
);