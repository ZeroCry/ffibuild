local ffi = require("ffi")
ffi.cdef([[enum{SF_FORMAT_WAV=65536,SF_FORMAT_AIFF=131072,SF_FORMAT_AU=196608,SF_FORMAT_RAW=262144,SF_FORMAT_PAF=327680,SF_FORMAT_SVX=393216,SF_FORMAT_NIST=458752,SF_FORMAT_VOC=524288,SF_FORMAT_IRCAM=655360,SF_FORMAT_W64=720896,SF_FORMAT_MAT4=786432,SF_FORMAT_MAT5=851968,SF_FORMAT_PVF=917504,SF_FORMAT_XI=983040,SF_FORMAT_HTK=1048576,SF_FORMAT_SDS=1114112,SF_FORMAT_AVR=1179648,SF_FORMAT_WAVEX=1245184,SF_FORMAT_SD2=1441792,SF_FORMAT_FLAC=1507328,SF_FORMAT_CAF=1572864,SF_FORMAT_WVE=1638400,SF_FORMAT_OGG=2097152,SF_FORMAT_MPC2K=2162688,SF_FORMAT_RF64=2228224,SF_FORMAT_PCM_S8=1,SF_FORMAT_PCM_16=2,SF_FORMAT_PCM_24=3,SF_FORMAT_PCM_32=4,SF_FORMAT_PCM_U8=5,SF_FORMAT_FLOAT=6,SF_FORMAT_DOUBLE=7,SF_FORMAT_ULAW=16,SF_FORMAT_ALAW=17,SF_FORMAT_IMA_ADPCM=18,SF_FORMAT_MS_ADPCM=19,SF_FORMAT_GSM610=32,SF_FORMAT_VOX_ADPCM=33,SF_FORMAT_G721_32=48,SF_FORMAT_G723_24=49,SF_FORMAT_G723_40=50,SF_FORMAT_DWVW_12=64,SF_FORMAT_DWVW_16=65,SF_FORMAT_DWVW_24=66,SF_FORMAT_DWVW_N=67,SF_FORMAT_DPCM_8=80,SF_FORMAT_DPCM_16=81,SF_FORMAT_VORBIS=96,SF_FORMAT_ALAC_16=112,SF_FORMAT_ALAC_20=113,SF_FORMAT_ALAC_24=114,SF_FORMAT_ALAC_32=115,SF_ENDIAN_FILE=0,SF_ENDIAN_LITTLE=268435456,SF_ENDIAN_BIG=536870912,SF_ENDIAN_CPU=805306368,SF_FORMAT_SUBMASK=65535,SF_FORMAT_TYPEMASK=268369920,SF_FORMAT_ENDMASK=805306368,
SFC_GET_LIB_VERSION=4096,SFC_GET_LOG_INFO=4097,SFC_GET_CURRENT_SF_INFO=4098,SFC_GET_NORM_DOUBLE=4112,SFC_GET_NORM_FLOAT=4113,SFC_SET_NORM_DOUBLE=4114,SFC_SET_NORM_FLOAT=4115,SFC_SET_SCALE_FLOAT_INT_READ=4116,SFC_SET_SCALE_INT_FLOAT_WRITE=4117,SFC_GET_SIMPLE_FORMAT_COUNT=4128,SFC_GET_SIMPLE_FORMAT=4129,SFC_GET_FORMAT_INFO=4136,SFC_GET_FORMAT_MAJOR_COUNT=4144,SFC_GET_FORMAT_MAJOR=4145,SFC_GET_FORMAT_SUBTYPE_COUNT=4146,SFC_GET_FORMAT_SUBTYPE=4147,SFC_CALC_SIGNAL_MAX=4160,SFC_CALC_NORM_SIGNAL_MAX=4161,SFC_CALC_MAX_ALL_CHANNELS=4162,SFC_CALC_NORM_MAX_ALL_CHANNELS=4163,SFC_GET_SIGNAL_MAX=4164,SFC_GET_MAX_ALL_CHANNELS=4165,SFC_SET_ADD_PEAK_CHUNK=4176,SFC_SET_ADD_HEADER_PAD_CHUNK=4177,SFC_UPDATE_HEADER_NOW=4192,SFC_SET_UPDATE_HEADER_AUTO=4193,SFC_FILE_TRUNCATE=4224,SFC_SET_RAW_START_OFFSET=4240,SFC_SET_DITHER_ON_WRITE=4256,SFC_SET_DITHER_ON_READ=4257,SFC_GET_DITHER_INFO_COUNT=4258,SFC_GET_DITHER_INFO=4259,SFC_GET_EMBED_FILE_INFO=4272,SFC_SET_CLIPPING=4288,SFC_GET_CLIPPING=4289,SFC_GET_INSTRUMENT=4304,SFC_SET_INSTRUMENT=4305,SFC_GET_LOOP_INFO=4320,SFC_GET_BROADCAST_INFO=4336,SFC_SET_BROADCAST_INFO=4337,SFC_GET_CHANNEL_MAP_INFO=4352,SFC_SET_CHANNEL_MAP_INFO=4353,SFC_RAW_DATA_NEEDS_ENDSWAP=4368,SFC_WAVEX_SET_AMBISONIC=4608,SFC_WAVEX_GET_AMBISONIC=4609,SFC_RF64_AUTO_DOWNGRADE=4624,SFC_SET_VBR_ENCODING_QUALITY=4864,SFC_SET_COMPRESSION_LEVEL=4865,SFC_SET_CART_INFO=5120,SFC_GET_CART_INFO=5121,SFC_TEST_IEEE_FLOAT_REPLACE=24577,SFC_SET_ADD_DITHER_ON_WRITE=4208,SFC_SET_ADD_DITHER_ON_READ=4209,
SF_STR_TITLE=1,SF_STR_COPYRIGHT=2,SF_STR_SOFTWARE=3,SF_STR_ARTIST=4,SF_STR_COMMENT=5,SF_STR_DATE=6,SF_STR_ALBUM=7,SF_STR_LICENSE=8,SF_STR_TRACKNUMBER=9,SF_STR_GENRE=16,
SF_FALSE=0,SF_TRUE=1,SFM_READ=16,SFM_WRITE=32,SFM_RDWR=48,SF_AMBISONIC_NONE=64,SF_AMBISONIC_B_FORMAT=65,
SF_ERR_NO_ERROR=0,SF_ERR_UNRECOGNISED_FORMAT=1,SF_ERR_SYSTEM=2,SF_ERR_MALFORMED_FILE=3,SF_ERR_UNSUPPORTED_ENCODING=4,
SF_CHANNEL_MAP_INVALID=0,SF_CHANNEL_MAP_MONO=1,SF_CHANNEL_MAP_LEFT=2,SF_CHANNEL_MAP_RIGHT=3,SF_CHANNEL_MAP_CENTER=4,SF_CHANNEL_MAP_FRONT_LEFT=5,SF_CHANNEL_MAP_FRONT_RIGHT=6,SF_CHANNEL_MAP_FRONT_CENTER=7,SF_CHANNEL_MAP_REAR_CENTER=8,SF_CHANNEL_MAP_REAR_LEFT=9,SF_CHANNEL_MAP_REAR_RIGHT=10,SF_CHANNEL_MAP_LFE=11,SF_CHANNEL_MAP_FRONT_LEFT_OF_CENTER=12,SF_CHANNEL_MAP_FRONT_RIGHT_OF_CENTER=13,SF_CHANNEL_MAP_SIDE_LEFT=14,SF_CHANNEL_MAP_SIDE_RIGHT=15,SF_CHANNEL_MAP_TOP_CENTER=16,SF_CHANNEL_MAP_TOP_FRONT_LEFT=17,SF_CHANNEL_MAP_TOP_FRONT_RIGHT=18,SF_CHANNEL_MAP_TOP_FRONT_CENTER=19,SF_CHANNEL_MAP_TOP_REAR_LEFT=20,SF_CHANNEL_MAP_TOP_REAR_RIGHT=21,SF_CHANNEL_MAP_TOP_REAR_CENTER=22,SF_CHANNEL_MAP_AMBISONIC_B_W=23,SF_CHANNEL_MAP_AMBISONIC_B_X=24,SF_CHANNEL_MAP_AMBISONIC_B_Y=25,SF_CHANNEL_MAP_AMBISONIC_B_Z=26,SF_CHANNEL_MAP_MAX=27,
SFD_DEFAULT_LEVEL=0,SFD_CUSTOM_LEVEL=1073741824,SFD_NO_DITHER=500,SFD_WHITE=501,SFD_TRIANGULAR_PDF=502,
SF_LOOP_NONE=800,SF_LOOP_FORWARD=801,SF_LOOP_BACKWARD=802,SF_LOOP_ALTERNATING=803,
SF_SEEK_SET=0,SF_SEEK_CUR=1,SF_SEEK_END=2,};struct SNDFILE_tag {};
struct SF_INFO {};
struct SF_VIRTUAL_IO {};
struct SF_CHUNK_INFO {};
struct SF_CHUNK_ITERATOR {};
struct SNDFILE_tag*sf_open_virtual(struct SF_VIRTUAL_IO*,int,struct SF_INFO*,void*);
int sf_get_chunk_data(const struct SF_CHUNK_ITERATOR*,struct SF_CHUNK_INFO*);
int sf_format_check(const struct SF_INFO*);
long sf_readf_float(struct SNDFILE_tag*,float*,long);
struct SF_CHUNK_ITERATOR*sf_next_chunk_iterator(struct SF_CHUNK_ITERATOR*);
struct SNDFILE_tag*sf_open(const char*,int,struct SF_INFO*);
long sf_writef_double(struct SNDFILE_tag*,const double*,long);
long sf_seek(struct SNDFILE_tag*,long,int);
long sf_writef_short(struct SNDFILE_tag*,const short*,long);
int sf_set_chunk(struct SNDFILE_tag*,const struct SF_CHUNK_INFO*);
long sf_readf_double(struct SNDFILE_tag*,double*,long);
long sf_write_float(struct SNDFILE_tag*,const float*,long);
long sf_read_short(struct SNDFILE_tag*,short*,long);
const char*sf_version_string();
int sf_set_string(struct SNDFILE_tag*,int,const char*);
int sf_error_str(struct SNDFILE_tag*,char*,unsigned long);
const char*sf_strerror(struct SNDFILE_tag*);
const char*sf_error_number(int);
long sf_writef_int(struct SNDFILE_tag*,const int*,long);
long sf_write_raw(struct SNDFILE_tag*,const void*,long);
long sf_readf_short(struct SNDFILE_tag*,short*,long);
int sf_get_chunk_size(const struct SF_CHUNK_ITERATOR*,struct SF_CHUNK_INFO*);
struct SF_CHUNK_ITERATOR*sf_get_chunk_iterator(struct SNDFILE_tag*,const struct SF_CHUNK_INFO*);
long sf_read_raw(struct SNDFILE_tag*,void*,long);
void sf_write_sync(struct SNDFILE_tag*);
int sf_close(struct SNDFILE_tag*);
long sf_write_double(struct SNDFILE_tag*,const double*,long);
long sf_read_double(struct SNDFILE_tag*,double*,long);
long sf_read_float(struct SNDFILE_tag*,float*,long);
long sf_write_int(struct SNDFILE_tag*,const int*,long);
long sf_read_int(struct SNDFILE_tag*,int*,long);
long sf_write_short(struct SNDFILE_tag*,const short*,long);
long sf_writef_float(struct SNDFILE_tag*,const float*,long);
struct SNDFILE_tag*sf_open_fd(int,int,struct SF_INFO*,int);
long sf_readf_int(struct SNDFILE_tag*,int*,long);
int sf_command(struct SNDFILE_tag*,int,void*,int);
int sf_perror(struct SNDFILE_tag*);
int sf_error(struct SNDFILE_tag*);
const char*sf_get_string(struct SNDFILE_tag*,int);
int sf_current_byterate(struct SNDFILE_tag*);
]])
local CLIB = ffi.load(_G.FFI_LIB or "sndfile")
local library = {}
library = {
	open_virtual = CLIB.sf_open_virtual,
	get_chunk_data = CLIB.sf_get_chunk_data,
	format_check = CLIB.sf_format_check,
	readf_float = CLIB.sf_readf_float,
	next_chunk_iterator = CLIB.sf_next_chunk_iterator,
	open = CLIB.sf_open,
	writef_double = CLIB.sf_writef_double,
	seek = CLIB.sf_seek,
	writef_short = CLIB.sf_writef_short,
	set_chunk = CLIB.sf_set_chunk,
	readf_double = CLIB.sf_readf_double,
	write_float = CLIB.sf_write_float,
	read_short = CLIB.sf_read_short,
	version_string = CLIB.sf_version_string,
	set_string = CLIB.sf_set_string,
	error_str = CLIB.sf_error_str,
	strerror = CLIB.sf_strerror,
	error_number = CLIB.sf_error_number,
	writef_int = CLIB.sf_writef_int,
	write_raw = CLIB.sf_write_raw,
	readf_short = CLIB.sf_readf_short,
	get_chunk_size = CLIB.sf_get_chunk_size,
	get_chunk_iterator = CLIB.sf_get_chunk_iterator,
	read_raw = CLIB.sf_read_raw,
	write_sync = CLIB.sf_write_sync,
	close = CLIB.sf_close,
	write_double = CLIB.sf_write_double,
	read_double = CLIB.sf_read_double,
	read_float = CLIB.sf_read_float,
	write_int = CLIB.sf_write_int,
	read_int = CLIB.sf_read_int,
	write_short = CLIB.sf_write_short,
	writef_float = CLIB.sf_writef_float,
	open_fd = CLIB.sf_open_fd,
	readf_int = CLIB.sf_readf_int,
	command = CLIB.sf_command,
	perror = CLIB.sf_perror,
	error = CLIB.sf_error,
	get_string = CLIB.sf_get_string,
	current_byterate = CLIB.sf_current_byterate,
}
library.e = {
	__codecvt_ok = ffi.cast("enum __codecvt_result", "__codecvt_ok"),
	__codecvt_partial = ffi.cast("enum __codecvt_result", "__codecvt_partial"),
	__codecvt_error = ffi.cast("enum __codecvt_result", "__codecvt_error"),
	__codecvt_noconv = ffi.cast("enum __codecvt_result", "__codecvt_noconv"),
}
return library
