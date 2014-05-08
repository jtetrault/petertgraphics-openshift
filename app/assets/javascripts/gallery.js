$(document).ready(function()
	{
		images = $("a.replace-image");

		$("a.replace-image").click(function(e) {
				e.preventDefault();
				$('#image-wrapper').hide('blind', 500, function() {
					replaceLink($("#link"), $(this).attr("href"), $(this).attr("data-index"));
					replaceImage($("#image"), $(this).attr("data-image"), function(){
						$('#image-wrapper').show('blind', 500);
					});
				}.bind(this));
			}
		);

		$("#previous, #next").click(function()
			{
				var index = +$("#link").attr("data-index");
				if($(this).attr("id") === "previous") {
					var hide_direction = 'left';
					var show_direction = 'right';
					var increment = -1;
				}
				else {
					var hide_direction = 'right';
					var show_direction = 'left';
					var increment = 1;
				}
				index += increment;
				if (index < 0) {
					index = images.length - 1;
				}
				else if (index >= images.length){
					index = 0; 
				}
				
				var replacement = images[index];
				$('#image-wrapper').hide('slide', { direction: hide_direction }, 500, function () {
					replaceLink($("#link"), $(replacement).attr("href"), $(replacement).attr("data-index"));
					replaceImage($("#image"), $(replacement).attr("data-image"), 
						function() {
							$('#image-wrapper').show('slide', { direction: show_direction }, 500);
						}
					);
				});
				return false;
			}
		);
	}
);

function replaceLink(linkElement, href, index)
{
	$(linkElement).attr("href", href).attr("data-index", index);
}

function replaceImage(imageElement, src, callback)
{
	$(imageElement).attr("src", src);
	$(imageElement).one('load', function () {
		callback();
	}).each(function () {
		if(this.complete) $(this).load();
	});
}