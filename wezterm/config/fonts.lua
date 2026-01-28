local wezterm = require('wezterm')
local platform = require('utils.platform')

local font_family = 'Comic Code Ligatures'
local font_size = platform.is_mac and 18 or 12

return {
   font = wezterm.font({
      family = font_family,
      weight = 'Regular',
      harfbuzz_features = { 'liga=1', 'calt=1', 'clig=1' },
   }),
   font_rules = {
      {
         intensity = 'Bold',
         font = wezterm.font({ family = font_family, weight = 'Bold' }),
      },
      {
         italic = true,
         font = wezterm.font({ family = font_family, style = 'Italic' }),
      },
      {
         italic = true,
         intensity = 'Bold',
         font = wezterm.font({ family = font_family, weight = 'Bold', style = 'Italic' }),
      },
   },
   font_size = font_size,
   freetype_load_target = 'Light',
   freetype_render_target = 'HorizontalLcd',
   cell_width = 1.0,
   line_height = 1.0,
}
