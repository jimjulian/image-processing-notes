--
-- Image Processing Notes, a plugin for Adobe Lightroom
-- James J. Julian
-- jimjulian.com
-- Licensed under GNU GPLv3
--
-- file: MetadataDefinition.lua
--
return {
   schemaVersion = 1, -- increment this when changing the field definitions!

   metadataFieldsForPhotos = {
      -- "searchable" = true, search criteria in smart collections
      -- "searchable" and "browsable" = true, shows up under "Metadata" in Library's grid filter
     
    {
        id = 'jimjulian'
    },
      
    {
        id='ExtProcess',
        title = LOC "$$$/ExtProcess=External Process",
        dataType='enum',
            values = {
                {
                    value = nil,
                    title = LOC "$$$/Unknown=Unknown", },
                {
                    value = 'yes',
                    title = LOC "$$$/Yes=Yes", },
                {
                    value = 'no',
                    title = LOC "$$$/No=No", },
            },
        searchable=true,
        browsable=true
    },

    {
        id='ProcessNotes',
        title = LOC "$$$/ProcessNotes=Process Notes",
        dataType='string',
        searchable=true,
        browsable=false
    },

    }
}
