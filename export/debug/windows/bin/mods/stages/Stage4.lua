
local offsetX = -320
local offsetY = -50

function onCreate()

	makeLuaSprite('bg', 'no/bg', offsetX, offsetY);
	setScrollFactor('bg', 1, 1);
	scaleObject('bg', 1.05, 1.05);
	addLuaSprite('bg', false)
	
	
	makeAnimatedLuaSprite('Tentacle2', 'no/Tentacle2', offsetX, offsetY);
	setScrollFactor('Tentacle2', 1, 1);
	scaleObject('Tentacle2', 1.05, 1.05);
	addAnimationByPrefix('Tentacle2', 'tentacle', 'tentacle', 24, true)
	doTweenColor('Tentacle2C', 'Tentacle2', 'A1A1A1', 0.01, 'linear')
	addLuaSprite('Tentacle2', false)
	
	
	--------------
	makeAnimatedLuaSprite('LimuH2', 'characters/LimuH', -160, 55);
	addLuaSprite('LimuH2', true);
	--setBlendMode("LimuH2",'add')
	doTweenColor('LimuH2C', 'LimuH2', 'DB4CFF', 0.01, 'linear')
	doTweenAlpha("LimuH2A","LimuH2",0,.01)

	addAnimationByPrefix('LimuH2', 'LimuCryIdle', 'LimuCryIdle', 24, true)

	addAnimationByPrefix('LimuH2', 'LimuLaughIdle', 'LimuLaughIdle', 24, false)
	addAnimationByPrefix('LimuH2', 'LimuLaughSpeak', 'LimuLaughSpeak', 90, true)

	addAnimationByPrefix('LimuH2', 'LimuAngryIdle', 'LimuAngryIdle', 24, false)
	addAnimationByPrefix('LimuH2', 'LimuAngrySpeak', 'LimuAngrySpeak', 90, true)

	addAnimationByPrefix('LimuH2', 'LimuDefaultIdle', 'LimuDefaultIdle', 24, false)
	addAnimationByPrefix('LimuH2', 'LimuDefaultSpeak', 'LimuDefaultSpeak', 90, true)

	addAnimationByPrefix('LimuH2', 'LimuSadIdle', 'LimuSadIdle', 24, false)
	addAnimationByPrefix('LimuH2', 'LimuSadSpeak', 'LimuSadSpeak', 90, true)

	objectPlayAnimation('LimuH2', 'LimuDefaultIdle', false)
	
	--------------
	makeAnimatedLuaSprite('LimuH', 'characters/LimuH', -160, 55);
	
	doTweenColor('LimuHC', 'LimuH', '7A7A7A', 0.01, 'linear')
	addLuaSprite('LimuH', true);

	addAnimationByPrefix('LimuH', 'LimuCryIdle', 'LimuCryIdle', 24, true)

	addAnimationByPrefix('LimuH', 'LimuLaughIdle', 'LimuLaughIdle', 24, false)
	addAnimationByPrefix('LimuH', 'LimuLaughSpeak', 'LimuLaughSpeak', 90, true)

	addAnimationByPrefix('LimuH', 'LimuAngryIdle', 'LimuAngryIdle', 24, false)
	addAnimationByPrefix('LimuH', 'LimuAngrySpeak', 'LimuAngrySpeak', 90, true)

	addAnimationByPrefix('LimuH', 'LimuDefaultIdle', 'LimuDefaultIdle', 24, false)
	addAnimationByPrefix('LimuH', 'LimuDefaultSpeak', 'LimuDefaultSpeak', 90, true)


	addAnimationByPrefix('LimuH', 'LimuSadIdle', 'LimuSadIdle', 24, false)
	addAnimationByPrefix('LimuH', 'LimuSadSpeak', 'LimuSadSpeak', 90, true)

	objectPlayAnimation('LimuH', 'LimuDefaultIdle', false)
	
	--------------
	
	--water surface
	makeAnimatedLuaSprite('WaterSurface', 'WaterSurface',offsetX, offsetY);
	addAnimationByPrefix('WaterSurface', 'WaterSurface', 'WaterSurface', 24, true)
	scaleObject('WaterSurface', 1.2, 1.2);
	setScrollFactor('WaterSurface', 1, 1);
	addLuaSprite('WaterSurface', true);
	setBlendMode('WaterSurface','add')
	doTweenColor('WaterSurfaceC', 'WaterSurface', 'a3a3a3', 0.01, 'linear')
	doTweenAlpha("WaterSurfaceA","WaterSurface",0,.001)

	--water ray
	makeAnimatedLuaSprite('WaterRay', 'WaterRay',offsetX, offsetY);
	addAnimationByPrefix('WaterRay', 'WaterRay', 'WaterRay', 24, true)
	scaleObject('WaterRay', 1.2, 1.2);
	setScrollFactor('WaterRay', 1, 1);
	addLuaSprite('WaterRay', true);
	doTweenColor('WaterRayC', 'WaterRay', 'A3E9FF', 0.01, 'linear')
	setBlendMode('WaterRay','multiply')
	--water filter
	makeAnimatedLuaSprite('WaterFilter', 'WaterFilter', offsetX, offsetY);
	addAnimationByPrefix('WaterFilter', 'WaterFilter', 'WaterFilter', 48, true)
	setScrollFactor('WaterFilter', 1, 1);
	addLuaSprite('WaterFilter', true);
	scaleObject('WaterFilter', 1.5	, 1.5);
	doTweenColor('WaterFilterC', 'WaterFilter', '747581', 0.01, 'linear')
	setBlendMode('WaterFilter','add')
	--setObjectCamera('WaterFilter','other')
	

	makeLuaSprite('BlackEdge', 'BlackEdge720', 0, 0);
	setScrollFactor('BlackEdge', 0, 0);
	addLuaSprite('BlackEdge', false)
	setObjectCamera('BlackEdge','other')
	doTweenAlpha("BlackEdgeA","BlackEdge",.3,.01)
	setBlendMode('BlackEdge','overlay')


	
	doTweenAlpha("WaterFilterA","WaterFilter",0,.01)
	doTweenAlpha("WaterRayA","WaterRay",0,.01)
	doTweenAlpha("Tentacle2A","Tentacle2",0,.01)
	
	
	
	--------------
	makeLuaSprite('whiteSolid', 'whiteSolid', 0, 0);
	setScrollFactor('whiteSolid', 0, 0);
	addLuaSprite('whiteSolid', true)
	doTweenColor('whiteSolidC', 'whiteSolid', 'D119FF', 0.01, 'linear')
	doTweenAlpha("whiteSolidA","whiteSolid",0,.001)
	--setObjectCamera('whiteSolid','hud')

end


function onCreatePostFrontCharacter( )
	
end