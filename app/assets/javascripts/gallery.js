$(document).ready(function()
	{
		images = $("a.replace-image");

		$("a.replace-image").click(function()
			{
				replaceLink($("#link"), $(this).attr("href"), $(this).attr("data-index"));
				replaceImage($("#image"), $(this).attr("data-image"));
				return false;
			}
		);

		$("a.arrow").click(function()
			{
				var index = +$("#link").attr("data-index");
				if($(this).attr("id") === "previous")
				{
					index--;
					if(index < 0)
						index = images.length - 1;
				}
				else
				{
					index++;
					if(index >= images.length)
						index = 0;
				}
				
				var replacement = images[index];
				replaceLink($("#link"), $(replacement).attr("href"), $(replacement).attr("data-index"));
				replaceImage($("#image"), $(replacement).attr("data-image"));
				return false;
			}
		);
	}
);

function replaceLink(linkElement, href, index)
{
	$(linkElement).attr("href", href).attr("data-index", index);
}

function replaceImage(imageElement, src)
{
	$(imageElement).attr("src", src);
}