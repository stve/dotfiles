-- MacOS AppScript to override mailto: link handler, and copy email address to clipboard
-- 1. Paste the script below into a script
-- 2. File menu > Export, choose "App" as output format
-- 3. Open Mail.app
-- 4. Mail menu > Settings
-- 5. In "General", set default mail reader to the script/app you saved
-- https://gist.github.com/tomelliot/edac2c2fc4a1641214ddffde0df62c86                                                       
                                                       
on open location this_URL
	-- Extract the email address from the mailto: URL
	set AppleScript's text item delimiters to "mailto:"
	set emailPart to text item 2 of this_URL
	set AppleScript's text item delimiters to "?"
	set emailAddress to text item 1 of emailPart
	set AppleScript's text item delimiters to ""
	
	-- Copy the email address to clipboard
	set the clipboard to emailAddress
	
	-- Provide feedback to the user
	display notification emailAddress with title "Email Copied to Clipboard"
end open location

on run
	display dialog "This application handles mailto: links by copying the email address to the clipboard." buttons {"OK"} default button "OK"
end run
