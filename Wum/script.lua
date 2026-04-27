-- Auto generated script file --

--hide vanilla model
vanilla_model.PLAYER:setVisible(false)

vanilla_model.ARMOR:setVisible(false)

local CameraAPI = require("FOXCamera")

local myCamera = CameraAPI.newPresetCamera(
  "CASUAL", -- (nil) preset
  models.model.root.Body.cameraPos, -- (nil) cameraPart
  models.model.root.Head -- (nil) hiddenPart
)

CameraAPI.setCamera(myCamera)

local outline = require("quickoutline")

local head_outline = outline.createOutline(models.model.root.Head, 0.2, vec(0,0,0), false)
--                                         ^cube/group    thickness^    ^color      ^emissive

local page = action_wheel:newPage()
action_wheel:setPage(page)

local Head = models.model.root.Head

page:newAction():title("fear"):item("minecraft:acacia_fence").leftClick = function ()
    Head:setPrimaryTexture("CUSTOM", textures["scared.png"])
end