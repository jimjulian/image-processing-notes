--
-- Image Processing Notes, a plugin for Adobe Lightroom
-- James J. Julian
-- jimjulian.com
-- Licensed under GNU GPLv3
--
-- file: MetadataPanel.lua
--
return {

	title = LOC "$$$/PluginNameShort=Processing Notes",
	id = 'processingTagset',

	items = {
		'com.adobe.filename',
		'com.adobe.folder',
        'com.adobe.title',
        { 'com.adobe.caption', height_in_lines = 3 },

		'com.adobe.separator',

		'com.jimjulian.lightroom.metadata.processing.ExtProcess',
		{ formatter = 'com.jimjulian.lightroom.metadata.processing.ProcessNotes', height_in_lines=10, topLabel=true }, 
	},
}
