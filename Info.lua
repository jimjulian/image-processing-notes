--
-- Image Processing Notes, a plugin for Adobe Lightroom
-- James J. Julian
-- jimjulian.com
-- Licensed under GNU GPLv3
--
-- file: info.lua
--
return {

  	LrSdkVersion = 6.0,
    LrSdkMinimumVersion = 5.0,

    LrToolkitIdentifier = "com.jimjulian.lightroom.metadata.processing",
    LrPluginName = LOC "$$$/PluginName=Processing Notes",

	-- Plug-in Initializer file
    LrInitPlugin = 'PluginInit.lua',

	-- Plug-in Metadata Definitions file
    LrMetadataProvider  = 'MetadataDefinition.lua',

	-- Plug-in Metadata Panel file
    LrMetadataTagsetFactory = 'MetadataPanel.lua',

	-- Plug-in Manager Dialog file
	LrPluginInfoProvider = 'PluginInfoProvider.lua',

   	VERSION = { major=1, minor=0, revision=0, build=1, }

}
