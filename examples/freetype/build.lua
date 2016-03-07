package.path = package.path .. ";../../?.lua"
local ffibuild = require("ffibuild")

ffibuild.BuildSharedLibrary(
	"freetype",
	"git clone git://git.sv.nongnu.org/freetype/freetype2.git repo",
	"cd repo && mkdir build && cd build && cmake .. -DBUILD_SHARED_LIBS=1 && make && cd ../../"
)

local header = ffibuild.BuildCHeader([[
	#include <ft2build.h>

	typedef struct _FT_Glyph_Class {} FT_Glyph_Class;

	#include FT_CONFIG_CONFIG_H
	#include FT_LZW_H
	#include FT_CONFIG_STANDARD_LIBRARY_H
	#include FT_BZIP2_H
	#include FT_CONFIG_OPTIONS_H
	#include FT_WINFONTS_H
	#include FT_CONFIG_MODULES_H
	#include FT_GLYPH_H
	#include FT_FREETYPE_H
	#include FT_BITMAP_H
	#include FT_ERRORS_H
	#include FT_BBOX_H
	#include FT_MODULE_ERRORS_H
	#include FT_CACHE_H
	#include FT_SYSTEM_H
	#include FT_CACHE_IMAGE_H
	#include FT_IMAGE_H
	#include FT_CACHE_SMALL_BITMAPS_H
	#include FT_TYPES_H
	#include FT_CACHE_CHARMAP_H
	#include FT_LIST_H
	//#include FT_MAC_H
	#include FT_OUTLINE_H
	#include FT_BDF_H
	#include FT_MULTIPLE_MASTERS_H
	#include FT_SIZES_H
	#include FT_SFNT_NAMES_H
	#include FT_MODULE_H
	#include FT_OPENTYPE_VALIDATE_H
	#include FT_RENDER_H
	#include FT_GX_VALIDATE_H
	#include FT_AUTOHINTER_H
	#include FT_PFR_H
	#include FT_CFF_DRIVER_H
	#include FT_STROKER_H
	#include FT_TRUETYPE_DRIVER_H
	#include FT_SYNTHESIS_H
	#include FT_TYPE1_TABLES_H
	#include FT_FONT_FORMATS_H
	#include FT_TRUETYPE_IDS_H
	#include FT_TRIGONOMETRY_H
	#include FT_TRUETYPE_TABLES_H
	#include FT_LCD_FILTER_H
	#include FT_TRUETYPE_TAGS_H
	#include FT_UNPATENTED_HINTING_H
	#include FT_INCREMENTAL_H
	#include FT_CID_H
	#include FT_GASP_H
	#include FT_GZIP_H
	#include FT_ADVANCES_H
]], "-I./repo/include/")

local meta_data = ffibuild.GetMetaData(header)
local header = meta_data:BuildMinimalHeader(function(name) return name:find("^FT_") end, function(name) return name:find("^FT_") or name:find("^BDF_") end, true, true)
local lua = ffibuild.StartLibrary(header)

for basic_type, type in pairs(meta_data.structs) do
	if basic_type:find("^struct FT.+Rec_$") then
		for func_name, type in pairs(meta_data.functions) do
			if type.arguments and basic_type == type.arguments[1]:GetBasicType(meta_data) then
				print(func_name:match("FT.-_(.-)_"), basic_type, func_name)
			end
		end
	end
end

lua = lua .. "library = " .. meta_data:BuildFunctions("^FT_(.+)", "Foo_Bar", "FooBar")
lua = lua .. "library.e = " .. meta_data:BuildEnums("^FT_(.+)")

ffibuild.EndLibrary(lua, header)