--
-- Image Processing Notes, a plugin for Adobe Lightroom
-- James J. Julian
-- jimjulian.com
-- Licensed under GNU GPLv3
--
-- file: PluginManager.lua
--
local LrHttp = import "LrHttp"
local LrColor = import  "LrColor"

PluginManager = {}

function PluginManager.sectionsForTopOfDialog(f, p)
	
	return {
			-- section for the top of the dialog
			{
				title = LOC "$$$/PluginName=Image Processing Notes" .. LOC "$$$/PluginNameLong= (extra fields in the Metadata panel by Jim Julian)",
				f:row {
					f:column{
						width = 75,
						f:picture {
							value = _PLUGIN:resourceId ('logo.png'),
							frame_width = 5 ,
							frame_color = LrColor( 1, 1, 1 ),
						},
					},
					f:column{
						spacing =f:control_spacing(),
						f:push_button {
							title =  LOC "$$$/Website=My Website",
							enabled = true,
							action = function()
								LrHttp.openUrlInBrowser(_G.MyURL)
							end,
						},
					},
					f:column{
						spacing =f:control_spacing(),
						f:push_button {
							title =  LOC "$$$/Source=Source Code",
							enabled = true,
							action = function()
								LrHttp.openUrlInBrowser(_G.SourceURL)
							end,
						},
                        },
					f:column{
						f:push_button {
							title = LOC "$$$/Donate=Please Donate",
							enabled = true,
							action = function()
								LrHttp.openUrlInBrowser(_G.DonateURL)
							end,
						},
					},
				
				},

				f:row {
					f:static_text {
						title = 'Support: ',
					},
					f:static_text {
						title= _G.Support,
						fill_horizontal = 0,
					},
				},

				},
	
		}
end
