--calculate the aspect ratio of the device:
local aspectRatio = display.pixelHeight / display.pixelWidth
print( "Scale ratio " .. aspectRatio )
application = {
   content = {
      width = aspectRatio > 1.5 and 320 or math.ceil( 480 / aspectRatio ),
      height = aspectRatio < 1.5 and 480 or math.ceil( 320 * aspectRatio ),
      scale = "letterBox",
      fps = 60,
      
      imageSuffix = {
         ["@2x"] = 2, -- 1152 × 768
         ["@4x"] = 4, -- 2048 × 1536
         ["-large"] = 1.5, -- 1024 × 600
         ["-xlarge"] = 2.25, -- 1280 × 800
      },
   },
}

-- iPhone default size = 720 x 480.
