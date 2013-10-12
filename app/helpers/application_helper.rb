module ApplicationHelper
	include Rails.application.routes.url_helpers

	# Returns a cancel button that links to whatever url link contains,
	# or the previous page if no link is specified.
	# The button will perform a confirmation before following the link.
	#
	def cancel_button (link = nil)
		if link
			return link_to "Cancel", link, :class => "btn"
		end
		return link_to "Cancel", request.env["HTTP_REFERER"], :class => "btn", :confirm => "Are you sure? Any changes will be lost."
	end

	# Returns a back button that links to whatever url link contains,
	# or the previous page if no link is specified.
	#
	def back_button (link = nil)
		if link
			return link_to "Back", link, :class => "btn"
		end
		return link_to "Back", request.env["HTTP_REFERER"], :class => "btn"
	end
end
