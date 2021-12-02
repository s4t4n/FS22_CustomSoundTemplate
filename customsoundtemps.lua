-- Custom SoundTamplates 1.0.0
-- by s4t4n (Sebastian)
-- 15.12.2018
-----------------------------------
--

function SoundManager:loadSoundTemplates(xmlFilename)
	-- local xml = loadXMLFile("motorizedOverwritesXML", BetterFuelUsage.dir .. "motorizedOverwrites.xml")
   
   --local xmlFile = loadXMLFile("TempTemplates", "csoundstemp.xml") -- soundTemplates
   local xmlFile = loadXMLFile("csoundstemp.xml")
    if xmlFile ~= nil then
        local i = 0
        while true do
            local key = string.format("soundTemplates.template(%d)", i)
			--print(string.format(xmlFile " " key " template '%s' d=%d", name))
            if not hasXMLProperty(xmlFile, key) then
                break
            end
            local name = getXMLString(xmlFile, key .."#name")
            if name ~= nil then
                if self.soundTemplates[name] == nil then
                    self.soundTemplates[name] = key
                else
                    print(string.format("Warning: Sound template '%s' already exists!", name))
                end
            end
            i = i + 1
        end
        self.soundTemplateXMLFile = xmlFile
		
        return true
    end
    return false
end


--function SoundManager:loadSoundTemplates(xmlFilename)
    -- local xmlFile = loadXMLFile("TempTemplates", xmlFilename)
    -- if xmlFile ~= nil then
        -- local i = 0
        -- while true do
            -- local key = string.format("soundTemplates.template(%d)", i)
            -- if not hasXMLProperty(xmlFile, key) then
                -- break
            -- end
            -- local name = getXMLString(xmlFile, key.."#name")
            -- if name ~= nil then
                -- if self.soundTemplates[name] == nil then
                    -- self.soundTemplates[name] = key
                -- else
                    -- print(string.format("Warning: Sound template '%s' already exists!", name))
                -- end
            -- end
            -- i = i + 1
        -- end
        -- self.soundTemplateXMLFile = xmlFile
        -- return true
    -- end
    -- return false
-- end