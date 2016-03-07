local ffi = require("ffi")
ffi.cdef([[void(alGetBufferf)(unsigned int,int,float*);
void(alEnable)(int);
void(alDistanceModel)(int);
void(alSourceRewind)(unsigned int);
void(alListenerf)(int,float);
void(alSource3f)(unsigned int,int,float,float,float);
char(alIsBuffer)(unsigned int);
void(alGenSources)(int,unsigned int*);
void(alGetSource3f)(unsigned int,int,float*,float*,float*);
void(alGetSourceiv)(unsigned int,int,int*);
float(alGetFloat)(int);
void(alGetBufferi)(unsigned int,int,int*);
void(alSourcePlay)(unsigned int);
void(alSourcePause)(unsigned int);
void(alGetSourcef)(unsigned int,int,float*);
double(alGetDouble)(int);
char(alIsExtensionPresent)(const char*);
void(alGetListenerfv)(int,float*);
void(alGetListener3f)(int,float*,float*,float*);
void(alSourcef)(unsigned int,int,float);
int(alGetError)();
void(alSource3i)(unsigned int,int,int,int,int);
void(alGetBufferiv)(unsigned int,int,int*);
void(alListener3i)(int,int,int,int);
void(alDopplerFactor)(float);
void(alGetListeneri)(int,int*);
void(alDisable)(int);
void(alListener3f)(int,float,float,float);
char(alIsEnabled)(int);
void(alGetBuffer3i)(unsigned int,int,int*,int*,int*);
void(alGetBufferfv)(unsigned int,int,float*);
void(alSpeedOfSound)(float);
void(alSourcefv)(unsigned int,int,const float*);
void(alGetBuffer3f)(unsigned int,int,float*,float*,float*);
void(alBufferiv)(unsigned int,int,const int*);
void(alBuffer3i)(unsigned int,int,int,int,int);
void(alBufferi)(unsigned int,int,int);
void(alBufferfv)(unsigned int,int,const float*);
void(alDeleteBuffers)(int,const unsigned int*);
void(alBufferData)(unsigned int,int,const void*,int,int);
void(alDopplerVelocity)(float);
void(alDeleteSources)(int,const unsigned int*);
int(alGetEnumValue)(const char*);
void(alGetListeneriv)(int,int*);
void(alBuffer3f)(unsigned int,int,float,float,float);
void(alSourceiv)(unsigned int,int,const int*);
void(alGenBuffers)(int,unsigned int*);
void(alSourceUnqueueBuffers)(unsigned int,int,unsigned int*);
void(alSourceQueueBuffers)(unsigned int,int,const unsigned int*);
void(alSourceStop)(unsigned int);
void(alGetSource3i)(unsigned int,int,int*,int*,int*);
char(alIsSource)(unsigned int);
void(alSourcePausev)(int,const unsigned int*);
void(alListeneriv)(int,const int*);
void(alListeneri)(int,int);
void(alGetDoublev)(int,double*);
char(alGetBoolean)(int);
void(alGetListenerf)(int,float*);
void(alSourcei)(unsigned int,int,int);
void(alSourcePlayv)(int,const unsigned int*);
void(alGetSourcei)(unsigned int,int,int*);
void(alGetSourcefv)(unsigned int,int,float*);
void*(alGetProcAddress)(const char*);
void(alGetListener3i)(int,int*,int*,int*);
int(alGetInteger)(int);
void(alGetBooleanv)(int,char*);
void(alBufferf)(unsigned int,int,float);
void(alGetIntegerv)(int,int*);
const char*(alGetString)(int);
void(alGetFloatv)(int,float*);
void(alSourceRewindv)(int,const unsigned int*);
void(alListenerfv)(int,const float*);
void(alSourceStopv)(int,const unsigned int*);
]])
local CLIB = ffi.load(_G.FFI_LIB or "openal")
local library = {}
library = {
	GetBufferf = CLIB.alGetBufferf,
	Enable = CLIB.alEnable,
	DistanceModel = CLIB.alDistanceModel,
	SourceRewind = CLIB.alSourceRewind,
	Listenerf = CLIB.alListenerf,
	Source3f = CLIB.alSource3f,
	IsBuffer = CLIB.alIsBuffer,
	GenSources = CLIB.alGenSources,
	GetSource3f = CLIB.alGetSource3f,
	GetSourceiv = CLIB.alGetSourceiv,
	GetFloat = CLIB.alGetFloat,
	GetBufferi = CLIB.alGetBufferi,
	SourcePlay = CLIB.alSourcePlay,
	SourcePause = CLIB.alSourcePause,
	GetSourcef = CLIB.alGetSourcef,
	GetDouble = CLIB.alGetDouble,
	IsExtensionPresent = CLIB.alIsExtensionPresent,
	GetListenerfv = CLIB.alGetListenerfv,
	GetListener3f = CLIB.alGetListener3f,
	Sourcef = CLIB.alSourcef,
	GetError = CLIB.alGetError,
	Source3i = CLIB.alSource3i,
	GetBufferiv = CLIB.alGetBufferiv,
	Listener3i = CLIB.alListener3i,
	DopplerFactor = CLIB.alDopplerFactor,
	GetListeneri = CLIB.alGetListeneri,
	Disable = CLIB.alDisable,
	Listener3f = CLIB.alListener3f,
	IsEnabled = CLIB.alIsEnabled,
	GetBuffer3i = CLIB.alGetBuffer3i,
	GetBufferfv = CLIB.alGetBufferfv,
	SpeedOfSound = CLIB.alSpeedOfSound,
	Sourcefv = CLIB.alSourcefv,
	GetBuffer3f = CLIB.alGetBuffer3f,
	Bufferiv = CLIB.alBufferiv,
	Buffer3i = CLIB.alBuffer3i,
	Bufferi = CLIB.alBufferi,
	Bufferfv = CLIB.alBufferfv,
	DeleteBuffers = CLIB.alDeleteBuffers,
	BufferData = CLIB.alBufferData,
	DopplerVelocity = CLIB.alDopplerVelocity,
	DeleteSources = CLIB.alDeleteSources,
	GetEnumValue = CLIB.alGetEnumValue,
	GetListeneriv = CLIB.alGetListeneriv,
	Buffer3f = CLIB.alBuffer3f,
	Sourceiv = CLIB.alSourceiv,
	GenBuffers = CLIB.alGenBuffers,
	SourceUnqueueBuffers = CLIB.alSourceUnqueueBuffers,
	SourceQueueBuffers = CLIB.alSourceQueueBuffers,
	SourceStop = CLIB.alSourceStop,
	GetSource3i = CLIB.alGetSource3i,
	IsSource = CLIB.alIsSource,
	SourcePausev = CLIB.alSourcePausev,
	Listeneriv = CLIB.alListeneriv,
	Listeneri = CLIB.alListeneri,
	GetDoublev = CLIB.alGetDoublev,
	GetBoolean = CLIB.alGetBoolean,
	GetListenerf = CLIB.alGetListenerf,
	Sourcei = CLIB.alSourcei,
	SourcePlayv = CLIB.alSourcePlayv,
	GetSourcei = CLIB.alGetSourcei,
	GetSourcefv = CLIB.alGetSourcefv,
	GetProcAddress = CLIB.alGetProcAddress,
	GetListener3i = CLIB.alGetListener3i,
	GetInteger = CLIB.alGetInteger,
	GetBooleanv = CLIB.alGetBooleanv,
	Bufferf = CLIB.alBufferf,
	GetIntegerv = CLIB.alGetIntegerv,
	GetString = CLIB.alGetString,
	GetFloatv = CLIB.alGetFloatv,
	SourceRewindv = CLIB.alSourceRewindv,
	Listenerfv = CLIB.alListenerfv,
	SourceStopv = CLIB.alSourceStopv,
}
library.e = {
	LOKI_IMA_ADPCM_format = 1,
	FORMAT_IMA_ADPCM_MONO16_EXT = 0x10000,
	FORMAT_IMA_ADPCM_STEREO16_EXT = 0x10001,
	LOKI_WAVE_format = 1,
	FORMAT_WAVE_EXT = 0x10002,
	EXT_vorbis = 1,
	FORMAT_VORBIS_EXT = 0x10003,
	LOKI_quadriphonic = 1,
	FORMAT_QUAD8_LOKI = 0x10004,
	FORMAT_QUAD16_LOKI = 0x10005,
	EXT_float32 = 1,
	FORMAT_MONO_FLOAT32 = 0x10010,
	FORMAT_STEREO_FLOAT32 = 0x10011,
	EXT_double = 1,
	FORMAT_MONO_DOUBLE_EXT = 0x10012,
	FORMAT_STEREO_DOUBLE_EXT = 0x10013,
	EXT_MULAW = 1,
	FORMAT_MONO_MULAW_EXT = 0x10014,
	FORMAT_STEREO_MULAW_EXT = 0x10015,
	EXT_ALAW = 1,
	FORMAT_MONO_ALAW_EXT = 0x10016,
	FORMAT_STEREO_ALAW_EXT = 0x10017,
	EXT_MCFORMATS = 1,
	FORMAT_QUAD8 = 0x1204,
	FORMAT_QUAD16 = 0x1205,
	FORMAT_QUAD32 = 0x1206,
	FORMAT_REAR8 = 0x1207,
	FORMAT_REAR16 = 0x1208,
	FORMAT_REAR32 = 0x1209,
	FORMAT_51CHN8 = 0x120A,
	FORMAT_51CHN16 = 0x120B,
	FORMAT_51CHN32 = 0x120C,
	FORMAT_61CHN8 = 0x120D,
	FORMAT_61CHN16 = 0x120E,
	FORMAT_61CHN32 = 0x120F,
	FORMAT_71CHN8 = 0x1210,
	FORMAT_71CHN16 = 0x1211,
	FORMAT_71CHN32 = 0x1212,
	EXT_MULAW_MCFORMATS = 1,
	FORMAT_MONO_MULAW = 0x10014,
	FORMAT_STEREO_MULAW = 0x10015,
	FORMAT_QUAD_MULAW = 0x10021,
	FORMAT_REAR_MULAW = 0x10022,
	FORMAT_51CHN_MULAW = 0x10023,
	FORMAT_61CHN_MULAW = 0x10024,
	FORMAT_71CHN_MULAW = 0x10025,
	EXT_IMA4 = 1,
	FORMAT_MONO_IMA4 = 0x1300,
	FORMAT_STEREO_IMA4 = 0x1301,
	EXT_STATIC_BUFFER = 1,
	EXT_source_distance_model = 1,
	SOURCE_DISTANCE_MODEL = 0x200,
	SOFT_buffer_sub_data = 1,
	BYTE_RW_OFFSETS_SOFT = 0x1031,
	SAMPLE_RW_OFFSETS_SOFT = 0x1032,
	SOFT_loop_points = 1,
	LOOP_POINTS_SOFT = 0x2015,
	EXT_FOLDBACK = 1,
	EXT_FOLDBACK_NAME = "AL_EXT_FOLDBACK",
	FOLDBACK_EVENT_BLOCK = 0x4112,
	FOLDBACK_EVENT_START = 0x4111,
	FOLDBACK_EVENT_STOP = 0x4113,
	FOLDBACK_MODE_MONO = 0x4101,
	FOLDBACK_MODE_STEREO = 0x4102,
	DEDICATED_GAIN = 0x0001,
	EFFECT_DEDICATED_DIALOGUE = 0x9001,
	EFFECT_DEDICATED_LOW_FREQUENCY_EFFECT = 0x9000,
	SOFT_buffer_samples = 1,
	MONO_SOFT = 0x1500,
	STEREO_SOFT = 0x1501,
	REAR_SOFT = 0x1502,
	QUAD_SOFT = 0x1503,
	_5POINT1_SOFT = 0x1504,
	_6POINT1_SOFT = 0x1505,
	_7POINT1_SOFT = 0x1506,
	BYTE_SOFT = 0x1400,
	UNSIGNED_BYTE_SOFT = 0x1401,
	SHORT_SOFT = 0x1402,
	UNSIGNED_SHORT_SOFT = 0x1403,
	INT_SOFT = 0x1404,
	UNSIGNED_INT_SOFT = 0x1405,
	FLOAT_SOFT = 0x1406,
	DOUBLE_SOFT = 0x1407,
	BYTE3_SOFT = 0x1408,
	UNSIGNED_BYTE3_SOFT = 0x1409,
	MONO8_SOFT = 0x1100,
	MONO16_SOFT = 0x1101,
	MONO32F_SOFT = 0x10010,
	STEREO8_SOFT = 0x1102,
	STEREO16_SOFT = 0x1103,
	STEREO32F_SOFT = 0x10011,
	QUAD8_SOFT = 0x1204,
	QUAD16_SOFT = 0x1205,
	QUAD32F_SOFT = 0x1206,
	REAR8_SOFT = 0x1207,
	REAR16_SOFT = 0x1208,
	REAR32F_SOFT = 0x1209,
	_5POINT1_8_SOFT = 0x120A,
	_5POINT1_16_SOFT = 0x120B,
	_5POINT1_32F_SOFT = 0x120C,
	_6POINT1_8_SOFT = 0x120D,
	_6POINT1_16_SOFT = 0x120E,
	_6POINT1_32F_SOFT = 0x120F,
	_7POINT1_8_SOFT = 0x1210,
	_7POINT1_16_SOFT = 0x1211,
	_7POINT1_32F_SOFT = 0x1212,
	INTERNAL_FORMAT_SOFT = 0x2008,
	BYTE_LENGTH_SOFT = 0x2009,
	SAMPLE_LENGTH_SOFT = 0x200A,
	SEC_LENGTH_SOFT = 0x200B,
	SOFT_direct_channels = 1,
	DIRECT_CHANNELS_SOFT = 0x1033,
	EXT_STEREO_ANGLES = 1,
	STEREO_ANGLES = 0x1030,
	EXT_SOURCE_RADIUS = 1,
	SOURCE_RADIUS = 0x1031,
	SOFT_source_latency = 1,
	SAMPLE_OFFSET_LATENCY_SOFT = 0x1200,
	SEC_OFFSET_LATENCY_SOFT = 0x1201,
	SOFT_deferred_updates = 1,
	DEFERRED_UPDATES_SOFT = 0xC002,
	SOFT_block_alignment = 1,
	UNPACK_BLOCK_ALIGNMENT_SOFT = 0x200C,
	PACK_BLOCK_ALIGNMENT_SOFT = 0x200D,
	SOFT_MSADPCM = 1,
	FORMAT_MONO_MSADPCM_SOFT = 0x1302,
	FORMAT_STEREO_MSADPCM_SOFT = 0x1303,
	SOFT_source_length = 1,
	EXT_BFORMAT = 1,
	FORMAT_BFORMAT2D_8 = 0x20021,
	FORMAT_BFORMAT2D_16 = 0x20022,
	FORMAT_BFORMAT2D_FLOAT32 = 0x20023,
	FORMAT_BFORMAT3D_8 = 0x20031,
	FORMAT_BFORMAT3D_16 = 0x20032,
	FORMAT_BFORMAT3D_FLOAT32 = 0x20033,
	EXT_MULAW_BFORMAT = 1,
	FORMAT_BFORMAT2D_MULAW = 0x10031,
	FORMAT_BFORMAT3D_MULAW = 0x10032,
	API = __declspecdllimport,
	API = extern,
	APIENTRY = __cdecl,
	INVALID = -1,
	ILLEGAL_ENUM = AL_INVALID_ENUM,
	ILLEGAL_COMMAND = AL_INVALID_OPERATION,
	NONE = 0,
	FALSE = 0,
	TRUE = 1,
	SOURCE_RELATIVE = 0x202,
	CONE_INNER_ANGLE = 0x1001,
	CONE_OUTER_ANGLE = 0x1002,
	PITCH = 0x1003,
	POSITION = 0x1004,
	DIRECTION = 0x1005,
	VELOCITY = 0x1006,
	LOOPING = 0x1007,
	BUFFER = 0x1009,
	GAIN = 0x100A,
	MIN_GAIN = 0x100D,
	MAX_GAIN = 0x100E,
	ORIENTATION = 0x100F,
	SOURCE_STATE = 0x1010,
	INITIAL = 0x1011,
	PLAYING = 0x1012,
	PAUSED = 0x1013,
	STOPPED = 0x1014,
	BUFFERS_QUEUED = 0x1015,
	BUFFERS_PROCESSED = 0x1016,
	REFERENCE_DISTANCE = 0x1020,
	ROLLOFF_FACTOR = 0x1021,
	CONE_OUTER_GAIN = 0x1022,
	MAX_DISTANCE = 0x1023,
	SEC_OFFSET = 0x1024,
	SAMPLE_OFFSET = 0x1025,
	BYTE_OFFSET = 0x1026,
	SOURCE_TYPE = 0x1027,
	STATIC = 0x1028,
	STREAMING = 0x1029,
	UNDETERMINED = 0x1030,
	FORMAT_MONO8 = 0x1100,
	FORMAT_MONO16 = 0x1101,
	FORMAT_STEREO8 = 0x1102,
	FORMAT_STEREO16 = 0x1103,
	FREQUENCY = 0x2001,
	BITS = 0x2002,
	CHANNELS = 0x2003,
	SIZE = 0x2004,
	UNUSED = 0x2010,
	PENDING = 0x2011,
	PROCESSED = 0x2012,
	NO_ERROR = 0,
	INVALID_NAME = 0xA001,
	INVALID_ENUM = 0xA002,
	INVALID_VALUE = 0xA003,
	INVALID_OPERATION = 0xA004,
	OUT_OF_MEMORY = 0xA005,
	VENDOR = 0xB001,
	VERSION = 0xB002,
	RENDERER = 0xB003,
	EXTENSIONS = 0xB004,
	DOPPLER_FACTOR = 0xC000,
	DOPPLER_VELOCITY = 0xC001,
	SPEED_OF_SOUND = 0xC003,
	DISTANCE_MODEL = 0xD000,
	INVERSE_DISTANCE = 0xD001,
	INVERSE_DISTANCE_CLAMPED = 0xD002,
	LINEAR_DISTANCE = 0xD003,
	LINEAR_DISTANCE_CLAMPED = 0xD004,
	EXPONENT_DISTANCE = 0xD005,
	EXPONENT_DISTANCE_CLAMPED = 0xD006,
	METERS_PER_UNIT = 0x20004,
	DIRECT_FILTER = 0x20005,
	AUXILIARY_SEND_FILTER = 0x20006,
	AIR_ABSORPTION_FACTOR = 0x20007,
	ROOM_ROLLOFF_FACTOR = 0x20008,
	CONE_OUTER_GAINHF = 0x20009,
	DIRECT_FILTER_GAINHF_AUTO = 0x2000A,
	AUXILIARY_SEND_FILTER_GAIN_AUTO = 0x2000B,
	AUXILIARY_SEND_FILTER_GAINHF_AUTO = 0x2000C,
	REVERB_DENSITY = 0x0001,
	REVERB_DIFFUSION = 0x0002,
	REVERB_GAIN = 0x0003,
	REVERB_GAINHF = 0x0004,
	REVERB_DECAY_TIME = 0x0005,
	REVERB_DECAY_HFRATIO = 0x0006,
	REVERB_REFLECTIONS_GAIN = 0x0007,
	REVERB_REFLECTIONS_DELAY = 0x0008,
	REVERB_LATE_REVERB_GAIN = 0x0009,
	REVERB_LATE_REVERB_DELAY = 0x000A,
	REVERB_AIR_ABSORPTION_GAINHF = 0x000B,
	REVERB_ROOM_ROLLOFF_FACTOR = 0x000C,
	REVERB_DECAY_HFLIMIT = 0x000D,
	EAXREVERB_DENSITY = 0x0001,
	EAXREVERB_DIFFUSION = 0x0002,
	EAXREVERB_GAIN = 0x0003,
	EAXREVERB_GAINHF = 0x0004,
	EAXREVERB_GAINLF = 0x0005,
	EAXREVERB_DECAY_TIME = 0x0006,
	EAXREVERB_DECAY_HFRATIO = 0x0007,
	EAXREVERB_DECAY_LFRATIO = 0x0008,
	EAXREVERB_REFLECTIONS_GAIN = 0x0009,
	EAXREVERB_REFLECTIONS_DELAY = 0x000A,
	EAXREVERB_REFLECTIONS_PAN = 0x000B,
	EAXREVERB_LATE_REVERB_GAIN = 0x000C,
	EAXREVERB_LATE_REVERB_DELAY = 0x000D,
	EAXREVERB_LATE_REVERB_PAN = 0x000E,
	EAXREVERB_ECHO_TIME = 0x000F,
	EAXREVERB_ECHO_DEPTH = 0x0010,
	EAXREVERB_MODULATION_TIME = 0x0011,
	EAXREVERB_MODULATION_DEPTH = 0x0012,
	EAXREVERB_AIR_ABSORPTION_GAINHF = 0x0013,
	EAXREVERB_HFREFERENCE = 0x0014,
	EAXREVERB_LFREFERENCE = 0x0015,
	EAXREVERB_ROOM_ROLLOFF_FACTOR = 0x0016,
	EAXREVERB_DECAY_HFLIMIT = 0x0017,
	CHORUS_WAVEFORM = 0x0001,
	CHORUS_PHASE = 0x0002,
	CHORUS_RATE = 0x0003,
	CHORUS_DEPTH = 0x0004,
	CHORUS_FEEDBACK = 0x0005,
	CHORUS_DELAY = 0x0006,
	DISTORTION_EDGE = 0x0001,
	DISTORTION_GAIN = 0x0002,
	DISTORTION_LOWPASS_CUTOFF = 0x0003,
	DISTORTION_EQCENTER = 0x0004,
	DISTORTION_EQBANDWIDTH = 0x0005,
	ECHO_DELAY = 0x0001,
	ECHO_LRDELAY = 0x0002,
	ECHO_DAMPING = 0x0003,
	ECHO_FEEDBACK = 0x0004,
	ECHO_SPREAD = 0x0005,
	FLANGER_WAVEFORM = 0x0001,
	FLANGER_PHASE = 0x0002,
	FLANGER_RATE = 0x0003,
	FLANGER_DEPTH = 0x0004,
	FLANGER_FEEDBACK = 0x0005,
	FLANGER_DELAY = 0x0006,
	FREQUENCY_SHIFTER_FREQUENCY = 0x0001,
	FREQUENCY_SHIFTER_LEFT_DIRECTION = 0x0002,
	FREQUENCY_SHIFTER_RIGHT_DIRECTION = 0x0003,
	VOCAL_MORPHER_PHONEMEA = 0x0001,
	VOCAL_MORPHER_PHONEMEA_COARSE_TUNING = 0x0002,
	VOCAL_MORPHER_PHONEMEB = 0x0003,
	VOCAL_MORPHER_PHONEMEB_COARSE_TUNING = 0x0004,
	VOCAL_MORPHER_WAVEFORM = 0x0005,
	VOCAL_MORPHER_RATE = 0x0006,
	PITCH_SHIFTER_COARSE_TUNE = 0x0001,
	PITCH_SHIFTER_FINE_TUNE = 0x0002,
	RING_MODULATOR_FREQUENCY = 0x0001,
	RING_MODULATOR_HIGHPASS_CUTOFF = 0x0002,
	RING_MODULATOR_WAVEFORM = 0x0003,
	AUTOWAH_ATTACK_TIME = 0x0001,
	AUTOWAH_RELEASE_TIME = 0x0002,
	AUTOWAH_RESONANCE = 0x0003,
	AUTOWAH_PEAK_GAIN = 0x0004,
	COMPRESSOR_ONOFF = 0x0001,
	EQUALIZER_LOW_GAIN = 0x0001,
	EQUALIZER_LOW_CUTOFF = 0x0002,
	EQUALIZER_MID1_GAIN = 0x0003,
	EQUALIZER_MID1_CENTER = 0x0004,
	EQUALIZER_MID1_WIDTH = 0x0005,
	EQUALIZER_MID2_GAIN = 0x0006,
	EQUALIZER_MID2_CENTER = 0x0007,
	EQUALIZER_MID2_WIDTH = 0x0008,
	EQUALIZER_HIGH_GAIN = 0x0009,
	EQUALIZER_HIGH_CUTOFF = 0x000A,
	EFFECT_FIRST_PARAMETER = 0x0000,
	EFFECT_LAST_PARAMETER = 0x8000,
	EFFECT_TYPE = 0x8001,
	EFFECT_NULL = 0x0000,
	EFFECT_REVERB = 0x0001,
	EFFECT_CHORUS = 0x0002,
	EFFECT_DISTORTION = 0x0003,
	EFFECT_ECHO = 0x0004,
	EFFECT_FLANGER = 0x0005,
	EFFECT_FREQUENCY_SHIFTER = 0x0006,
	EFFECT_VOCAL_MORPHER = 0x0007,
	EFFECT_PITCH_SHIFTER = 0x0008,
	EFFECT_RING_MODULATOR = 0x0009,
	EFFECT_AUTOWAH = 0x000A,
	EFFECT_COMPRESSOR = 0x000B,
	EFFECT_EQUALIZER = 0x000C,
	EFFECT_EAXREVERB = 0x8000,
	EFFECTSLOT_EFFECT = 0x0001,
	EFFECTSLOT_GAIN = 0x0002,
	EFFECTSLOT_AUXILIARY_SEND_AUTO = 0x0003,
	EFFECTSLOT_NULL = 0x0000,
	LOWPASS_GAIN = 0x0001,
	LOWPASS_GAINHF = 0x0002,
	HIGHPASS_GAIN = 0x0001,
	HIGHPASS_GAINLF = 0x0002,
	BANDPASS_GAIN = 0x0001,
	BANDPASS_GAINLF = 0x0002,
	BANDPASS_GAINHF = 0x0003,
	FILTER_FIRST_PARAMETER = 0x0000,
	FILTER_LAST_PARAMETER = 0x8000,
	FILTER_TYPE = 0x8001,
	FILTER_NULL = 0x0000,
	FILTER_LOWPASS = 0x0001,
	FILTER_HIGHPASS = 0x0002,
	FILTER_BANDPASS = 0x0003,
	LOWPASS_MIN_GAIN = 0,
	LOWPASS_MAX_GAIN = 1,
	LOWPASS_DEFAULT_GAIN = 1,
	LOWPASS_MIN_GAINHF = 0,
	LOWPASS_MAX_GAINHF = 1,
	LOWPASS_DEFAULT_GAINHF = 1,
	HIGHPASS_MIN_GAIN = 0,
	HIGHPASS_MAX_GAIN = 1,
	HIGHPASS_DEFAULT_GAIN = 1,
	HIGHPASS_MIN_GAINLF = 0,
	HIGHPASS_MAX_GAINLF = 1,
	HIGHPASS_DEFAULT_GAINLF = 1,
	BANDPASS_MIN_GAIN = 0,
	BANDPASS_MAX_GAIN = 1,
	BANDPASS_DEFAULT_GAIN = 1,
	BANDPASS_MIN_GAINHF = 0,
	BANDPASS_MAX_GAINHF = 1,
	BANDPASS_DEFAULT_GAINHF = 1,
	BANDPASS_MIN_GAINLF = 0,
	BANDPASS_MAX_GAINLF = 1,
	BANDPASS_DEFAULT_GAINLF = 1,
	REVERB_MIN_DENSITY = 0,
	REVERB_MAX_DENSITY = 1,
	REVERB_DEFAULT_DENSITY = 1,
	REVERB_MIN_DIFFUSION = 0,
	REVERB_MAX_DIFFUSION = 1,
	REVERB_DEFAULT_DIFFUSION = 1,
	REVERB_MIN_GAIN = 0,
	REVERB_MAX_GAIN = 1,
	REVERB_DEFAULT_GAIN = 0.32,
	REVERB_MIN_GAINHF = 0,
	REVERB_MAX_GAINHF = 1,
	REVERB_DEFAULT_GAINHF = 0.89,
	REVERB_MIN_DECAY_TIME = 0.1,
	REVERB_MAX_DECAY_TIME = 20,
	REVERB_DEFAULT_DECAY_TIME = 1.49,
	REVERB_MIN_DECAY_HFRATIO = 0.1,
	REVERB_MAX_DECAY_HFRATIO = 2,
	REVERB_DEFAULT_DECAY_HFRATIO = 0.83,
	REVERB_MIN_REFLECTIONS_GAIN = 0,
	REVERB_MAX_REFLECTIONS_GAIN = 3.16,
	REVERB_DEFAULT_REFLECTIONS_GAIN = 0.05,
	REVERB_MIN_REFLECTIONS_DELAY = 0,
	REVERB_MAX_REFLECTIONS_DELAY = 0.3,
	REVERB_DEFAULT_REFLECTIONS_DELAY = 0.007,
	REVERB_MIN_LATE_REVERB_GAIN = 0,
	REVERB_MAX_LATE_REVERB_GAIN = 10,
	REVERB_DEFAULT_LATE_REVERB_GAIN = 1.26,
	REVERB_MIN_LATE_REVERB_DELAY = 0,
	REVERB_MAX_LATE_REVERB_DELAY = 0.1,
	REVERB_DEFAULT_LATE_REVERB_DELAY = 0.011,
	REVERB_MIN_AIR_ABSORPTION_GAINHF = 0.892,
	REVERB_MAX_AIR_ABSORPTION_GAINHF = 1,
	REVERB_DEFAULT_AIR_ABSORPTION_GAINHF = 0.994,
	REVERB_MIN_ROOM_ROLLOFF_FACTOR = 0,
	REVERB_MAX_ROOM_ROLLOFF_FACTOR = 10,
	REVERB_DEFAULT_ROOM_ROLLOFF_FACTOR = 0,
	REVERB_MIN_DECAY_HFLIMIT = AL_FALSE,
	REVERB_MAX_DECAY_HFLIMIT = AL_TRUE,
	REVERB_DEFAULT_DECAY_HFLIMIT = AL_TRUE,
	EAXREVERB_MIN_DENSITY = 0,
	EAXREVERB_MAX_DENSITY = 1,
	EAXREVERB_DEFAULT_DENSITY = 1,
	EAXREVERB_MIN_DIFFUSION = 0,
	EAXREVERB_MAX_DIFFUSION = 1,
	EAXREVERB_DEFAULT_DIFFUSION = 1,
	EAXREVERB_MIN_GAIN = 0,
	EAXREVERB_MAX_GAIN = 1,
	EAXREVERB_DEFAULT_GAIN = 0.32,
	EAXREVERB_MIN_GAINHF = 0,
	EAXREVERB_MAX_GAINHF = 1,
	EAXREVERB_DEFAULT_GAINHF = 0.89,
	EAXREVERB_MIN_GAINLF = 0,
	EAXREVERB_MAX_GAINLF = 1,
	EAXREVERB_DEFAULT_GAINLF = 1,
	EAXREVERB_MIN_DECAY_TIME = 0.1,
	EAXREVERB_MAX_DECAY_TIME = 20,
	EAXREVERB_DEFAULT_DECAY_TIME = 1.49,
	EAXREVERB_MIN_DECAY_HFRATIO = 0.1,
	EAXREVERB_MAX_DECAY_HFRATIO = 2,
	EAXREVERB_DEFAULT_DECAY_HFRATIO = 0.83,
	EAXREVERB_MIN_DECAY_LFRATIO = 0.1,
	EAXREVERB_MAX_DECAY_LFRATIO = 2,
	EAXREVERB_DEFAULT_DECAY_LFRATIO = 1,
	EAXREVERB_MIN_REFLECTIONS_GAIN = 0,
	EAXREVERB_MAX_REFLECTIONS_GAIN = 3.16,
	EAXREVERB_DEFAULT_REFLECTIONS_GAIN = 0.05,
	EAXREVERB_MIN_REFLECTIONS_DELAY = 0,
	EAXREVERB_MAX_REFLECTIONS_DELAY = 0.3,
	EAXREVERB_DEFAULT_REFLECTIONS_DELAY = 0.007,
	EAXREVERB_DEFAULT_REFLECTIONS_PAN_XYZ = 0,
	EAXREVERB_MIN_LATE_REVERB_GAIN = 0,
	EAXREVERB_MAX_LATE_REVERB_GAIN = 10,
	EAXREVERB_DEFAULT_LATE_REVERB_GAIN = 1.26,
	EAXREVERB_MIN_LATE_REVERB_DELAY = 0,
	EAXREVERB_MAX_LATE_REVERB_DELAY = 0.1,
	EAXREVERB_DEFAULT_LATE_REVERB_DELAY = 0.011,
	EAXREVERB_DEFAULT_LATE_REVERB_PAN_XYZ = 0,
	EAXREVERB_MIN_ECHO_TIME = 0.075,
	EAXREVERB_MAX_ECHO_TIME = 0.25,
	EAXREVERB_DEFAULT_ECHO_TIME = 0.25,
	EAXREVERB_MIN_ECHO_DEPTH = 0,
	EAXREVERB_MAX_ECHO_DEPTH = 1,
	EAXREVERB_DEFAULT_ECHO_DEPTH = 0,
	EAXREVERB_MIN_MODULATION_TIME = 0.04,
	EAXREVERB_MAX_MODULATION_TIME = 4,
	EAXREVERB_DEFAULT_MODULATION_TIME = 0.25,
	EAXREVERB_MIN_MODULATION_DEPTH = 0,
	EAXREVERB_MAX_MODULATION_DEPTH = 1,
	EAXREVERB_DEFAULT_MODULATION_DEPTH = 0,
	EAXREVERB_MIN_AIR_ABSORPTION_GAINHF = 0.892,
	EAXREVERB_MAX_AIR_ABSORPTION_GAINHF = 1,
	EAXREVERB_DEFAULT_AIR_ABSORPTION_GAINHF = 0.994,
	EAXREVERB_MIN_HFREFERENCE = 1000,
	EAXREVERB_MAX_HFREFERENCE = 20000,
	EAXREVERB_DEFAULT_HFREFERENCE = 5000,
	EAXREVERB_MIN_LFREFERENCE = 20,
	EAXREVERB_MAX_LFREFERENCE = 1000,
	EAXREVERB_DEFAULT_LFREFERENCE = 250,
	EAXREVERB_MIN_ROOM_ROLLOFF_FACTOR = 0,
	EAXREVERB_MAX_ROOM_ROLLOFF_FACTOR = 10,
	EAXREVERB_DEFAULT_ROOM_ROLLOFF_FACTOR = 0,
	EAXREVERB_MIN_DECAY_HFLIMIT = AL_FALSE,
	EAXREVERB_MAX_DECAY_HFLIMIT = AL_TRUE,
	EAXREVERB_DEFAULT_DECAY_HFLIMIT = AL_TRUE,
	CHORUS_WAVEFORM_SINUSOID = 0,
	CHORUS_WAVEFORM_TRIANGLE = 1,
	CHORUS_MIN_WAVEFORM = 0,
	CHORUS_MAX_WAVEFORM = 1,
	CHORUS_DEFAULT_WAVEFORM = 1,
	CHORUS_MIN_PHASE = -180,
	CHORUS_MAX_PHASE = 180,
	CHORUS_DEFAULT_PHASE = 90,
	CHORUS_MIN_RATE = 0,
	CHORUS_MAX_RATE = 10,
	CHORUS_DEFAULT_RATE = 1.1,
	CHORUS_MIN_DEPTH = 0,
	CHORUS_MAX_DEPTH = 1,
	CHORUS_DEFAULT_DEPTH = 0.1,
	CHORUS_MIN_FEEDBACK = -1,
	CHORUS_MAX_FEEDBACK = 1,
	CHORUS_DEFAULT_FEEDBACK = 0.25,
	CHORUS_MIN_DELAY = 0,
	CHORUS_MAX_DELAY = 0.016,
	CHORUS_DEFAULT_DELAY = 0.016,
	DISTORTION_MIN_EDGE = 0,
	DISTORTION_MAX_EDGE = 1,
	DISTORTION_DEFAULT_EDGE = 0.2,
	DISTORTION_MIN_GAIN = 0.01,
	DISTORTION_MAX_GAIN = 1,
	DISTORTION_DEFAULT_GAIN = 0.05,
	DISTORTION_MIN_LOWPASS_CUTOFF = 80,
	DISTORTION_MAX_LOWPASS_CUTOFF = 24000,
	DISTORTION_DEFAULT_LOWPASS_CUTOFF = 8000,
	DISTORTION_MIN_EQCENTER = 80,
	DISTORTION_MAX_EQCENTER = 24000,
	DISTORTION_DEFAULT_EQCENTER = 3600,
	DISTORTION_MIN_EQBANDWIDTH = 80,
	DISTORTION_MAX_EQBANDWIDTH = 24000,
	DISTORTION_DEFAULT_EQBANDWIDTH = 3600,
	ECHO_MIN_DELAY = 0,
	ECHO_MAX_DELAY = 0.207,
	ECHO_DEFAULT_DELAY = 0.1,
	ECHO_MIN_LRDELAY = 0,
	ECHO_MAX_LRDELAY = 0.404,
	ECHO_DEFAULT_LRDELAY = 0.1,
	ECHO_MIN_DAMPING = 0,
	ECHO_MAX_DAMPING = 0.99,
	ECHO_DEFAULT_DAMPING = 0.5,
	ECHO_MIN_FEEDBACK = 0,
	ECHO_MAX_FEEDBACK = 1,
	ECHO_DEFAULT_FEEDBACK = 0.5,
	ECHO_MIN_SPREAD = -1,
	ECHO_MAX_SPREAD = 1,
	ECHO_DEFAULT_SPREAD = -1,
	FLANGER_WAVEFORM_SINUSOID = 0,
	FLANGER_WAVEFORM_TRIANGLE = 1,
	FLANGER_MIN_WAVEFORM = 0,
	FLANGER_MAX_WAVEFORM = 1,
	FLANGER_DEFAULT_WAVEFORM = 1,
	FLANGER_MIN_PHASE = -180,
	FLANGER_MAX_PHASE = 180,
	FLANGER_DEFAULT_PHASE = 0,
	FLANGER_MIN_RATE = 0,
	FLANGER_MAX_RATE = 10,
	FLANGER_DEFAULT_RATE = 0.27,
	FLANGER_MIN_DEPTH = 0,
	FLANGER_MAX_DEPTH = 1,
	FLANGER_DEFAULT_DEPTH = 1,
	FLANGER_MIN_FEEDBACK = -1,
	FLANGER_MAX_FEEDBACK = 1,
	FLANGER_DEFAULT_FEEDBACK = -0.5,
	FLANGER_MIN_DELAY = 0,
	FLANGER_MAX_DELAY = 0.004,
	FLANGER_DEFAULT_DELAY = 0.002,
	FREQUENCY_SHIFTER_MIN_FREQUENCY = 0,
	FREQUENCY_SHIFTER_MAX_FREQUENCY = 24000,
	FREQUENCY_SHIFTER_DEFAULT_FREQUENCY = 0,
	FREQUENCY_SHIFTER_MIN_LEFT_DIRECTION = 0,
	FREQUENCY_SHIFTER_MAX_LEFT_DIRECTION = 2,
	FREQUENCY_SHIFTER_DEFAULT_LEFT_DIRECTION = 0,
	FREQUENCY_SHIFTER_DIRECTION_DOWN = 0,
	FREQUENCY_SHIFTER_DIRECTION_UP = 1,
	FREQUENCY_SHIFTER_DIRECTION_OFF = 2,
	FREQUENCY_SHIFTER_MIN_RIGHT_DIRECTION = 0,
	FREQUENCY_SHIFTER_MAX_RIGHT_DIRECTION = 2,
	FREQUENCY_SHIFTER_DEFAULT_RIGHT_DIRECTION = 0,
	VOCAL_MORPHER_MIN_PHONEMEA = 0,
	VOCAL_MORPHER_MAX_PHONEMEA = 29,
	VOCAL_MORPHER_DEFAULT_PHONEMEA = 0,
	VOCAL_MORPHER_MIN_PHONEMEA_COARSE_TUNING = -24,
	VOCAL_MORPHER_MAX_PHONEMEA_COARSE_TUNING = 24,
	VOCAL_MORPHER_DEFAULT_PHONEMEA_COARSE_TUNING = 0,
	VOCAL_MORPHER_MIN_PHONEMEB = 0,
	VOCAL_MORPHER_MAX_PHONEMEB = 29,
	VOCAL_MORPHER_DEFAULT_PHONEMEB = 10,
	VOCAL_MORPHER_MIN_PHONEMEB_COARSE_TUNING = -24,
	VOCAL_MORPHER_MAX_PHONEMEB_COARSE_TUNING = 24,
	VOCAL_MORPHER_DEFAULT_PHONEMEB_COARSE_TUNING = 0,
	VOCAL_MORPHER_PHONEME_A = 0,
	VOCAL_MORPHER_PHONEME_E = 1,
	VOCAL_MORPHER_PHONEME_I = 2,
	VOCAL_MORPHER_PHONEME_O = 3,
	VOCAL_MORPHER_PHONEME_U = 4,
	VOCAL_MORPHER_PHONEME_AA = 5,
	VOCAL_MORPHER_PHONEME_AE = 6,
	VOCAL_MORPHER_PHONEME_AH = 7,
	VOCAL_MORPHER_PHONEME_AO = 8,
	VOCAL_MORPHER_PHONEME_EH = 9,
	VOCAL_MORPHER_PHONEME_ER = 10,
	VOCAL_MORPHER_PHONEME_IH = 11,
	VOCAL_MORPHER_PHONEME_IY = 12,
	VOCAL_MORPHER_PHONEME_UH = 13,
	VOCAL_MORPHER_PHONEME_UW = 14,
	VOCAL_MORPHER_PHONEME_B = 15,
	VOCAL_MORPHER_PHONEME_D = 16,
	VOCAL_MORPHER_PHONEME_F = 17,
	VOCAL_MORPHER_PHONEME_G = 18,
	VOCAL_MORPHER_PHONEME_J = 19,
	VOCAL_MORPHER_PHONEME_K = 20,
	VOCAL_MORPHER_PHONEME_L = 21,
	VOCAL_MORPHER_PHONEME_M = 22,
	VOCAL_MORPHER_PHONEME_N = 23,
	VOCAL_MORPHER_PHONEME_P = 24,
	VOCAL_MORPHER_PHONEME_R = 25,
	VOCAL_MORPHER_PHONEME_S = 26,
	VOCAL_MORPHER_PHONEME_T = 27,
	VOCAL_MORPHER_PHONEME_V = 28,
	VOCAL_MORPHER_PHONEME_Z = 29,
	VOCAL_MORPHER_WAVEFORM_SINUSOID = 0,
	VOCAL_MORPHER_WAVEFORM_TRIANGLE = 1,
	VOCAL_MORPHER_WAVEFORM_SAWTOOTH = 2,
	VOCAL_MORPHER_MIN_WAVEFORM = 0,
	VOCAL_MORPHER_MAX_WAVEFORM = 2,
	VOCAL_MORPHER_DEFAULT_WAVEFORM = 0,
	VOCAL_MORPHER_MIN_RATE = 0,
	VOCAL_MORPHER_MAX_RATE = 10,
	VOCAL_MORPHER_DEFAULT_RATE = 1.41,
	PITCH_SHIFTER_MIN_COARSE_TUNE = -12,
	PITCH_SHIFTER_MAX_COARSE_TUNE = 12,
	PITCH_SHIFTER_DEFAULT_COARSE_TUNE = 12,
	PITCH_SHIFTER_MIN_FINE_TUNE = -50,
	PITCH_SHIFTER_MAX_FINE_TUNE = 50,
	PITCH_SHIFTER_DEFAULT_FINE_TUNE = 0,
	RING_MODULATOR_MIN_FREQUENCY = 0,
	RING_MODULATOR_MAX_FREQUENCY = 8000,
	RING_MODULATOR_DEFAULT_FREQUENCY = 440,
	RING_MODULATOR_MIN_HIGHPASS_CUTOFF = 0,
	RING_MODULATOR_MAX_HIGHPASS_CUTOFF = 24000,
	RING_MODULATOR_DEFAULT_HIGHPASS_CUTOFF = 800,
	RING_MODULATOR_SINUSOID = 0,
	RING_MODULATOR_SAWTOOTH = 1,
	RING_MODULATOR_SQUARE = 2,
	RING_MODULATOR_MIN_WAVEFORM = 0,
	RING_MODULATOR_MAX_WAVEFORM = 2,
	RING_MODULATOR_DEFAULT_WAVEFORM = 0,
	AUTOWAH_MIN_ATTACK_TIME = 0.0001,
	AUTOWAH_MAX_ATTACK_TIME = 1,
	AUTOWAH_DEFAULT_ATTACK_TIME = 0.06,
	AUTOWAH_MIN_RELEASE_TIME = 0.0001,
	AUTOWAH_MAX_RELEASE_TIME = 1,
	AUTOWAH_DEFAULT_RELEASE_TIME = 0.06,
	AUTOWAH_MIN_RESONANCE = 2,
	AUTOWAH_MAX_RESONANCE = 1000,
	AUTOWAH_DEFAULT_RESONANCE = 1000,
	AUTOWAH_MIN_PEAK_GAIN = 3e-05,
	AUTOWAH_MAX_PEAK_GAIN = 31621,
	AUTOWAH_DEFAULT_PEAK_GAIN = 11.22,
	COMPRESSOR_MIN_ONOFF = 0,
	COMPRESSOR_MAX_ONOFF = 1,
	COMPRESSOR_DEFAULT_ONOFF = 1,
	EQUALIZER_MIN_LOW_GAIN = 0.126,
	EQUALIZER_MAX_LOW_GAIN = 7.943,
	EQUALIZER_DEFAULT_LOW_GAIN = 1,
	EQUALIZER_MIN_LOW_CUTOFF = 50,
	EQUALIZER_MAX_LOW_CUTOFF = 800,
	EQUALIZER_DEFAULT_LOW_CUTOFF = 200,
	EQUALIZER_MIN_MID1_GAIN = 0.126,
	EQUALIZER_MAX_MID1_GAIN = 7.943,
	EQUALIZER_DEFAULT_MID1_GAIN = 1,
	EQUALIZER_MIN_MID1_CENTER = 200,
	EQUALIZER_MAX_MID1_CENTER = 3000,
	EQUALIZER_DEFAULT_MID1_CENTER = 500,
	EQUALIZER_MIN_MID1_WIDTH = 0.01,
	EQUALIZER_MAX_MID1_WIDTH = 1,
	EQUALIZER_DEFAULT_MID1_WIDTH = 1,
	EQUALIZER_MIN_MID2_GAIN = 0.126,
	EQUALIZER_MAX_MID2_GAIN = 7.943,
	EQUALIZER_DEFAULT_MID2_GAIN = 1,
	EQUALIZER_MIN_MID2_CENTER = 1000,
	EQUALIZER_MAX_MID2_CENTER = 8000,
	EQUALIZER_DEFAULT_MID2_CENTER = 3000,
	EQUALIZER_MIN_MID2_WIDTH = 0.01,
	EQUALIZER_MAX_MID2_WIDTH = 1,
	EQUALIZER_DEFAULT_MID2_WIDTH = 1,
	EQUALIZER_MIN_HIGH_GAIN = 0.126,
	EQUALIZER_MAX_HIGH_GAIN = 7.943,
	EQUALIZER_DEFAULT_HIGH_GAIN = 1,
	EQUALIZER_MIN_HIGH_CUTOFF = 4000,
	EQUALIZER_MAX_HIGH_CUTOFF = 16000,
	EQUALIZER_DEFAULT_HIGH_CUTOFF = 6000,
	MIN_AIR_ABSORPTION_FACTOR = 0,
	MAX_AIR_ABSORPTION_FACTOR = 10,
	DEFAULT_AIR_ABSORPTION_FACTOR = 0,
	MIN_ROOM_ROLLOFF_FACTOR = 0,
	MAX_ROOM_ROLLOFF_FACTOR = 10,
	DEFAULT_ROOM_ROLLOFF_FACTOR = 0,
	MIN_CONE_OUTER_GAINHF = 0,
	MAX_CONE_OUTER_GAINHF = 1,
	DEFAULT_CONE_OUTER_GAINHF = 1,
	MIN_DIRECT_FILTER_GAINHF_AUTO = AL_FALSE,
	MAX_DIRECT_FILTER_GAINHF_AUTO = AL_TRUE,
	DEFAULT_DIRECT_FILTER_GAINHF_AUTO = AL_TRUE,
	MIN_AUXILIARY_SEND_FILTER_GAIN_AUTO = AL_FALSE,
	MAX_AUXILIARY_SEND_FILTER_GAIN_AUTO = AL_TRUE,
	DEFAULT_AUXILIARY_SEND_FILTER_GAIN_AUTO = AL_TRUE,
	MIN_AUXILIARY_SEND_FILTER_GAINHF_AUTO = AL_FALSE,
	MAX_AUXILIARY_SEND_FILTER_GAINHF_AUTO = AL_TRUE,
	DEFAULT_AUXILIARY_SEND_FILTER_GAINHF_AUTO = AL_TRUE,
	MIN_METERS_PER_UNIT = FLT_MIN,
	MAX_METERS_PER_UNIT = FLT_MAX,
	DEFAULT_METERS_PER_UNIT = 1,
}
library.clib = CLIB
return library
