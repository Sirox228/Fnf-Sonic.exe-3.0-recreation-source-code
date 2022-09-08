alsoChangeStrums = true		--if the strum textures also change with the notes



local offsetsToUpdate = {'lol'}
local songArrowSkin = ''
local songSplashSkin = ''

function onEvent(tag, value1, value2)

	if tag == 'Change Note Skin' then

		if alsoChangeStrums == true then
	
			if (value1 == nil or value1 == '') then value1 = songArrowSkin end
			
			local character = 'all'
			
			if not (string.find(value1:lower(), 'bf') == nil) then character = 'bf' end
			if not (string.find(value1:lower(), 'dad') == nil) then character = 'dad' end

			if not (string.find(value1, ',') == nil) then
			
				local texture = songArrowSkin
				
				if not (string.sub(value1, 0, string.find(value1, ',') - 1) == nil or string.gsub(string.sub(value1, 0, string.find(value1, ',') - 1), ' ', '') == '') then
					texture = string.sub(value1, 0, string.find(value1, ',') - 1)
				end
			
				for i = 0, 3 do
					
					if character == 'bf' then 
						setPropertyFromGroup('playerStrums', i, 'texture', texture)
							
					elseif character == 'dad' then 
						setPropertyFromGroup('opponentStrums', i, 'texture', texture)
							
					else
						setPropertyFromGroup('playerStrums', i, 'texture', texture)
						setPropertyFromGroup('opponentStrums', i, 'texture', texture)
					end
					
				end
			
			else
			
				for i = 0, 3 do
					setPropertyFromGroup('playerStrums', i, 'texture', value1)
					setPropertyFromGroup('opponentStrums', i, 'texture', value1)
				end
			
			end
		
		end
		
		if not (string.find(value2, ',') == nil) then
		
			local splashOffsets = string.gsub(string.sub(value2, string.find(value2, ',') + 1), ' ', '')
			
			offsetsToUpdate[1] = string.sub(splashOffsets, 0, string.find(splashOffsets, ',') - 1)
			offsetsToUpdate[2] = string.sub(splashOffsets, string.find(splashOffsets, ',') + 1)
			
		else
			offsetsToUpdate = {'lol'}
		end
		
	end
	
end

function onCreatePost()

	--get the song note skin and splash skin
	if getPropertyFromClass('PlayState', 'SONG.arrowSkin') == nil or getPropertyFromClass('PlayState', 'SONG.arrowSkin') == 'SONG.arrowSkin' then
		songArrowSkin = 'NOTE_assets'
	else
		songArrowSkin = getPropertyFromClass('PlayState', 'SONG.arrowSkin')
	end
	
	if getPropertyFromClass('PlayState', 'SONG.splashSkin') == nil or getPropertyFromClass('PlayState', 'SONG.splashSkin') == 'SONG.splashSkin' then
		songSplashSkin = 'noteSplashes'
	else
		songSplashSkin = getPropertyFromClass('PlayState', 'SONG.splashSkin')
	end
	
	
	--Change all unspawned notes from the time of each event to the end of the song
	for i = 0, getProperty('eventNotes.length')-1 do
	
		if getPropertyFromGroup('eventNotes', i, 'event') == 'Change Note Skin' then
		
			local value1 = getPropertyFromGroup('eventNotes', i, 'value1')
			local value2 = getPropertyFromGroup('eventNotes', i, 'value2')
			local character = 'all'
			
			if not (value1 == '' or value1 == nil) then
			
				if not (string.find(value1, ',') == nil) then
					character = string.gsub(string.sub(value1, string.find(value1, ',') + 1), ' ', ''):lower()
				end
				
			end

			for ii = 0, getProperty('unspawnNotes.length')-1 do
		
				if getPropertyFromGroup('unspawnNotes', ii, 'strumTime') >= getPropertyFromGroup('eventNotes', i, 'strumTime') then
				
					if (value1 == nil or value1 == '') then
						setPropertyFromGroup('unspawnNotes', ii, 'texture', songArrowSkin)
					else
					
						if not (string.find(value1, ',') == nil) then
						
							if (getPropertyFromGroup('unspawnNotes', ii, 'mustPress') == true and character == 'bf')
							or (getPropertyFromGroup('unspawnNotes', ii, 'mustPress') == false and character == 'dad')
							or character == 'all' then
								setPropertyFromGroup('unspawnNotes', ii, 'texture', string.sub(value1, 0, string.find(value1, ',') - 1))
							end
							
						else
							setPropertyFromGroup('unspawnNotes', ii, 'texture', value1)
						end
						
					end
					
					if (value2 == nil or value2 == '') then
						setPropertyFromGroup('unspawnNotes', ii, 'noteSplashTexture', songSplashSkin)
					else
					
						if not (string.find(value2, ',') == nil) then
							setPropertyFromGroup('unspawnNotes', ii, 'noteSplashTexture', string.sub(value2, 0, string.find(value2, ',') - 1))
							precacheImage(string.sub(value2, 0, string.find(value2, ',') - 1)) --less lag
						else
							setPropertyFromGroup('unspawnNotes', ii, 'noteSplashTexture', value2)
							precacheImage(value2) --less lag
						end
						
					end
					
				end
			
			end
		
		end
		
	end
	
end

--Change the note splashes offsets
function onUpdatePost()

	if not (offsetsToUpdate == nil or offsetsToUpdate[1] == 'lol') then
	
		for i = 0, getProperty('grpNoteSplashes.length')-1 do
			setPropertyFromGroup('grpNoteSplashes', i, 'offset.x', offsetsToUpdate[1])
			setPropertyFromGroup('grpNoteSplashes', i, 'offset.y', offsetsToUpdate[2])
		end
	
	end

end