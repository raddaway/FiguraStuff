-- Auto generated script file --

--hide vanilla model
vanilla_model.PLAYER:setVisible(false)

--hide vanilla armor model
vanilla_model.ARMOR:setVisible(false)

local CameraAPI = require("FOXCamera")

local myCamera = CameraAPI.newPresetCamera(
  "CASUAL", -- (nil) preset
  models.model.root.Body.cameraPos, -- (nil) cameraPart
  models.model.root.Head -- (nil) hiddenPart
)

CameraAPI.setCamera(myCamera)

local outline = require("quickoutline")

local head_outline = outline.createOutline(models.model.root, 0.1, vec(0,0,0), false)

local gaze = require("Gaze")

local mainGaze = gaze:newGaze()

mainGaze:newAnim(
 animations.model.horizontal,
 animations.model.vertical
)

function events.item_render(item)
    if item.id == "minecraft:crossbow" then
        return models.model.ItemGun
    end
end