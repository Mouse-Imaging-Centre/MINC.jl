# Automatically generated using Clang.jl


const MI_EMPTY_STRING = ""
const MI_ERROR = -1
const MI_NOERROR = 0
const MI_MAX_ATTSTR_LEN = 64
const MI_NUM_SPACE_DIMS = 3
const MI_MAX_IMGDIMS = 100
const MI2_MAX_IMGDIMS = 100
const MIunits = "units"
const MIlong_name = "long_name"
const MIvalid_range = "valid_range"
const MIvalid_max = "valid_max"
const MIvalid_min = "valid_min"
const MI_FillValue = "_FillValue"
const MItitle = "title"
const MIhistory = "history"
const MIvartype = "vartype"
const MIvarid = "varid"
const MIsigntype = "signtype"
const MIparent = "parent"
const MIchildren = "children"
const MIcomments = "comments"
const MIversion = "version"
const MI_VARATT_POINTER_PREFIX = "--->"
const MI_CHILD_SEPARATOR = "\n"
const MI_GROUP = "group________"
const MI_DIMENSION = "dimension____"
const MI_DIM_WIDTH = "dim-width____"
const MI_VARATT = "var_attribute"
const MI_STDVAR = "MINC standard variable"
const MI_SIGNED = "signed__"
const MI_UNSIGNED = "unsigned"
const MI_VERSION_1_0 = "MINC Version    1.0"
const MI_CURRENT_VERSION = MI_VERSION_1_0
const MI_TRUE = "true_"
const MI_FALSE = "false"
const MIxspace = "xspace"
const MIyspace = "yspace"
const MIzspace = "zspace"
const MItime = "time"
const MItfrequency = "tfrequency"
const MIxfrequency = "xfrequency"
const MIyfrequency = "yfrequency"
const MIzfrequency = "zfrequency"
const MIvector_dimension = "vector_dimension"
const MIxspace_width = "xspace-width"
const MIyspace_width = "yspace-width"
const MIzspace_width = "zspace-width"
const MItime_width = "time-width"
const MItfrequency_width = "tfrequency-width"
const MIxfrequency_width = "xfrequency-width"
const MIyfrequency_width = "yfrequency-width"
const MIzfrequency_width = "zfrequency-width"
const MIspacing = "spacing"
const MIstep = "step"
const MIstart = "start"
const MIspacetype = "spacetype"
const MIalignment = "alignment"
const MIdirection_cosines = "direction_cosines"
const MIwidth = "width"
const MIfiltertype = "filtertype"
const MI_REGULAR = "regular__"
const MI_IRREGULAR = "irregular"
const MI_NATIVE = "native____"
const MI_TALAIRACH = "talairach_"
const MI_CALLOSAL = "callosal__"
const MI_START = "start_"
const MI_CENTRE = "centre"
const MI_END = "end___"
const MI_CENTER = MI_CENTRE
const MI_SQUARE = "square____"
const MI_GAUSSIAN = "gaussian__"
const MI_TRIANGULAR = "triangular"
const MIrootvariable = "rootvariable"
const MIimage = "image"
const MIimagemax = "image-max"
const MIimagemin = "image-min"
const MIcomplete = "complete"
const MIpatient = "patient"
const MIfull_name = "full_name"
const MIother_names = "other_names"
const MIidentification = "identification"
const MIother_ids = "other_ids"
const MIbirthdate = "birthdate"
const MIsex = "sex"
const MIage = "age"
const MIweight = "weight"
const MIsize = "size"
const MIaddress = "address"
const MIinsurance_id = "insurance_id"
const MI_MALE = "male__"
const MI_FEMALE = "female"
const MI_OTHER = "other_"
const MIstudy = "study"
const MIstart_time = "start_time"
const MIstart_year = "start_year"
const MIstart_month = "start_month"
const MIstart_day = "start_day"
const MIstart_hour = "start_hour"
const MIstart_minute = "start_minute"
const MIstart_seconds = "start_seconds"
const MImodality = "modality"
const MImanufacturer = "manufacturer"
const MIdevice_model = "device_model"
const MIinstitution = "institution"
const MIdepartment = "department"
const MIstation_id = "station_id"
const MIreferring_physician = "referring_physician"
const MIattending_physician = "attending_physician"
const MIradiologist = "radiologist"
const MIoperator = "operator"
const MIadmitting_diagnosis = "admitting_diagnosis"
const MIprocedure = "procedure"
const MIstudy_id = "study_id"
const MI_PET = "PET__"
const MI_SPECT = "SPECT"
const MI_GAMMA = "GAMMA"
const MI_MRI = "MRI__"
const MI_MRS = "MRS__"
const MI_MRA = "MRA__"
const MI_CT = "CT___"
const MI_DSA = "DSA__"
const MI_DR = "DR___"
const MI_LABEL = "label"
const MIacquisition = "acquisition"
const MIprotocol = "protocol"
const MIscanning_sequence = "scanning_sequence"
const MIrepetition_time = "repetition_time"
const MIecho_time = "echo_time"
const MIinversion_time = "inversion_time"
const MInum_averages = "num_averages"
const MIimaging_frequency = "imaging_frequency"
const MIimaged_nucleus = "imaged_nucleus"
const MIradionuclide = "radionuclide"
const MIcontrast_agent = "contrast_agent"
const MIradionuclide_halflife = "radionuclide_halflife"
const MItracer = "tracer"
const MIinjection_time = "injection_time"
const MIinjection_year = "injection_year"
const MIinjection_month = "injection_month"
const MIinjection_day = "injection_day"
const MIinjection_hour = "injection_hour"
const MIinjection_minute = "injection_minute"
const MIinjection_seconds = "injection_seconds"
const MIinjection_length = "injection_length"
const MIinjection_dose = "injection_dose"
const MIdose_units = "dose_units"
const MIinjection_volume = "injection_volume"
const MIinjection_route = "injection_route"
const MI_ERR_NONNUMERIC = 1331
const MI_ERR_NONCHAR = 1332
const MI_ERR_NONSCALAR = 1333
const MI_ERR_BADOP = 1334
const MI_ERR_NOTPOINTER = 1335
const MI_ERR_BAD_STDVAR = 1336
const MI_ERR_BADSUFFIX = 1337
const MI_ERR_NOICV = 1338
const MI_ERR_BADICV = 1339
const MI_ERR_BADPROP = 1340
const MI_ERR_ICVATTACHED = 1341
const MI_ERR_TOOFEWDIMS = 1342
const MI_ERR_ICVNOTATTACHED = 1343
const MI_ERR_DIMSIZE = 1344
const MI_ERR_ICV_INVCOORDS = 1345
const MI_ERR_WRONGNDIMS = 1346
const MI_ERR_BADMATCH = 1347
const MI_ERR_MAXMIN_DIMS = 1348
const MI_ERR_UNCOMPRESS = 1349
const MI2_NOERROR = MI_NOERROR
const MI2_ERROR = MI_ERROR
const TRUE = 1
const FALSE = 0
const MI2_3D = 3
const MI2_X = 0
const MI2_Y = 1
const MI2_Z = 2
const MI_DIMATTR_ALL = 0
const MI_DIMATTR_REGULARLY_SAMPLED = 0x01
const MI_DIMATTR_NOT_REGULARLY_SAMPLED = 0x02
const MI2_CHAR_LENGTH = 128
const MI2_MAX_VAR_DIMS = 100
const MI2_MAX_DIM_NAME = 256
const MI2_CHUNK_SIZE = 32
const MI2_DEFAULT_ZLIB_LEVEL = 4
const MI2_MAX_ZLIB_LEVEL = 9
const MI2_MAX_PATH = 128
const MI2_MAX_RESOLUTION_GROUP = 16
const MI2_OPEN_READ = 0x0001
const MI2_OPEN_RDWR = 0x0002
const MI_VERSION_2_0 = "MINC Version    2.0"
const MI2_PRIV_DEFSIGN = 0
const MI2_PRIV_SIGNED = 1
const MI2_PRIV_UNSIGNED = 2
const MI2_PRIV_GET = 10
const MI2_PRIV_PUT = 11
const MI2_MAX_NUM_ICV = 1000
const MI2_DEFAULT_MAX = 1.0
const MI2_DEFAULT_MIN = 0.0
const MI2_ICV_TYPE = 1
const MI2_ICV_SIGN = 2
const MI2_ICV_DO_RANGE = 3
const MI2_ICV_VALID_MAX = 4
const MI2_ICV_VALID_MIN = 5
const MI2_ICV_DO_NORM = 6
const MI2_ICV_USER_NORM = 7
const MI2_ICV_IMAGE_MAX = 8
const MI2_ICV_IMAGE_MIN = 9
const MI2_ICV_NORM_MAX = 10
const MI2_ICV_NORM_MIN = 11
const MI2_ICV_DO_DIM_CONV = 12
const MI2_ICV_DO_SCALAR = 13
const MI2_ICV_XDIM_DIR = 14
const MI2_ICV_YDIM_DIR = 15
const MI2_ICV_ZDIM_DIR = 16
const MI2_ICV_ADIM_SIZE = 17
const MI2_ICV_BDIM_SIZE = 18
const MI2_ICV_KEEP_ASPECT = 19
const MI2_ICV_ADIM_STEP = 20
const MI2_ICV_BDIM_STEP = 21
const MI2_ICV_ADIM_START = 22
const MI2_ICV_BDIM_START = 23
const MI2_ICV_NUM_IMGDIMS = 24
const MI2_ICV_NUM_DIMS = 25
const MI2_ICV_CDFID = 26
const MI2_ICV_VARID = 27
const MI2_ICV_MAXVAR = 28
const MI2_ICV_MINVAR = 29
const MI2_ICV_DO_FILLVALUE = 30
const MI2_ICV_FILLVALUE = 31
const MI2_ICV_DIM_SIZE = 1000
const MI2_ICV_DIM_STEP = 1100
const MI2_ICV_DIM_START = 1200
const MI2_ICV_POSITIVE = 1
const MI2_ICV_NEGATIVE = -1
const MI2_ICV_ANYDIR = 0
const MI2_ICV_ANYSIZE = -1

# Skipping MacroDefinition: MI2_SAVE_ROUTINE_NAME ( name ) MI2_save_routine_name ( name )
# Skipping MacroDefinition: MI2_RETURN ( value ) return ( MI2_return ( ) ? ( value ) : ( value ) )
# Skipping MacroDefinition: MI2_RETURN_ERROR ( error ) return ( MI2_return_error ( ) ? ( error ) : ( error ) )
# Skipping MacroDefinition: MI2_LOG_PKG_ERROR2 ( p1 , p2 ) MI2_log_pkg_error2 ( p1 , p2 )
# Skipping MacroDefinition: MI2_LOG_PKG_ERROR3 ( p1 , p2 , p3 ) MI2_log_pkg_error3 ( p1 , p2 , p3 )
# Skipping MacroDefinition: MI2_LOG_SYS_ERROR1 ( p1 ) MI2_log_sys_error1 ( p1 )
# Skipping MacroDefinition: MI2_CHK_ERR ( expr ) { if ( ( expr ) < 0 ) MI2_RETURN_ERROR ( MI_ERROR ) ; }

const MI_MSG_FATAL = 0
const MI_MSG_ERROR = 1
const MI_MSG_WARNING = 2
const MI_MSG_INFO = 3
const MI_MSG_DEBUG = 4
const MI2_MSG_FATAL = 0
const MI2_MSG_ERROR = 1
const MI2_MSG_WARNING = 2
const MI2_MSG_INFO = 3
const MI2_MSG_DEBUG = 4
const MI_MSG_BASE = 10000

# Skipping MacroDefinition: MI_LOG_ERROR ( code , ... ) mi2log_message ( __FILE__ , __LINE__ , code , ## __VA_ARGS__ )
# Skipping MacroDefinition: MI_CHECK_HDF_CALL ( var , call ) { if ( ( var ) < 0 ) MI_LOG_ERROR ( MI2_MSG_HDF5 , call ) ; }
# Skipping MacroDefinition: MI_CHECK_HDF_CALL_RET ( var , call ) { if ( ( var ) < 0 ) return MI_LOG_ERROR ( MI2_MSG_HDF5 , call ) ; }
# Skipping MacroDefinition: MI_SAVE_ROUTINE_NAME ( name ) MI_save_routine_name ( name )
# Skipping MacroDefinition: MI_RETURN ( value ) return ( MI_return ( ) ? ( value ) : ( value ) )
# Skipping MacroDefinition: MI_RETURN_ERROR ( error ) return ( MI_return_error ( ) ? ( error ) : ( error ) )
# Skipping MacroDefinition: MI_LOG_PKG_ERROR2 ( p1 , p2 ) MI_log_pkg_error2 ( p1 , p2 )
# Skipping MacroDefinition: MI_LOG_PKG_ERROR3 ( p1 , p2 , p3 ) MI_log_pkg_error3 ( p1 , p2 , p3 )
# Skipping MacroDefinition: MI_LOG_SYS_ERROR1 ( p1 ) MI_log_sys_error1 ( p1 )
# Skipping MacroDefinition: MI_CHK_ERR ( expr ) { if ( ( expr ) < 0 ) MI_RETURN_ERROR ( MI_ERROR ) ; }

const hsize_t = Culonglong
const hid_t = Cint
const mivolprops = Cvoid
const midimension = Cvoid
const mivolume = Cvoid
const mivolumeprops_t = Ptr{mivolprops}
const midimhandle_t = Ptr{midimension}
const mihandle_t = Ptr{mivolume}
const milisthandle_t = Ptr{Cvoid}

@cenum mitype_t::Int32 begin
    MI_TYPE_ORIGINAL = 0
    MI_TYPE_BYTE = 1
    MI_TYPE_SHORT = 3
    MI_TYPE_INT = 4
    MI_TYPE_FLOAT = 5
    MI_TYPE_DOUBLE = 6
    MI_TYPE_STRING = 7
    MI_TYPE_UBYTE = 100
    MI_TYPE_USHORT = 101
    MI_TYPE_UINT = 102
    MI_TYPE_SCOMPLEX = 1000
    MI_TYPE_ICOMPLEX = 1001
    MI_TYPE_FCOMPLEX = 1002
    MI_TYPE_DCOMPLEX = 1003
    MI_TYPE_UNKNOWN = -1
end

@cenum miclass_t::UInt32 begin
    MI_CLASS_REAL = 0
    MI_CLASS_INT = 1
    MI_CLASS_LABEL = 2
    MI_CLASS_COMPLEX = 3
    MI_CLASS_UNIFORM_RECORD = 4
    MI_CLASS_NON_UNIFORM_RECORD = 5
end

@cenum midimclass_t::UInt32 begin
    MI_DIMCLASS_ANY = 0
    MI_DIMCLASS_SPATIAL = 1
    MI_DIMCLASS_TIME = 2
    MI_DIMCLASS_SFREQUENCY = 3
    MI_DIMCLASS_TFREQUENCY = 4
    MI_DIMCLASS_USER = 5
    MI_DIMCLASS_RECORD = 6
end

@cenum miorder_t::UInt32 begin
    MI_DIMORDER_FILE = 0
    MI_DIMORDER_APPARENT = 1
end

@cenum midimalign_t::UInt32 begin
    MI_DIMALIGN_CENTRE = 0
    MI_DIMALIGN_START = 1
    MI_DIMALIGN_END = 2
end

@cenum mivoxel_order_t::UInt32 begin
    MI_ORDER_FILE = 0
    MI_ORDER_APPARENT = 1
end

@cenum miflipping_t::UInt32 begin
    MI_FILE_ORDER = 0
    MI_COUNTER_FILE_ORDER = 1
    MI_POSITIVE = 2
    MI_NEGATIVE = 3
end

@cenum micompression_t::UInt32 begin
    MI_COMPRESS_NONE = 0
    MI_COMPRESS_ZLIB = 1
end


const miboolean_t = Cint
const midimattr_t = UInt32
const misize_t = hsize_t

struct miscomplex_t
    real::Int16
    imag::Int16
end

struct miicomplex_t
    real::Cint
    imag::Cint
end

struct mifcomplex_t
    real::Cfloat
    imag::Cfloat
end

struct midcomplex_t
    real::Cdouble
    imag::Cdouble
end

@cenum mimsgcode::UInt32 begin
    MI_MSG_UNCMPFAIL = 10000
    MI_MSG_NOWRITECMP = 10001
    MI_MSG_OPENFILE = 10002
    MI_MSG_CREATEFILE = 10003
    MI_MSG_CLOSEFILE = 10004
    MI_MSG_FINDATTR = 10005
    MI_MSG_ATTRNOTNUM = 10006
    MI_MSG_READATTR = 10007
    MI_MSG_NOMEMATTR = 10008
    MI_MSG_CONVATTR = 10009
    MI_MSG_ATTRNOTSCALAR = 10010
    MI_MSG_ATTRNOTSTR = 10011
    MI_MSG_WRITEATTR = 10012
    MI_MSG_READVAR = 10013
    MI_MSG_WRITEVAR = 10014
    MI_MSG_FINDVAR = 10015
    MI_MSG_ATTRCOUNT = 10016
    MI_MSG_ATTRNAME = 10017
    MI_MSG_COPYATTR = 10018
    MI_MSG_VARINQ = 10019
    MI_MSG_UNLIMDIM = 10020
    MI_MSG_DIMINQ = 10021
    MI_MSG_VARCONFLICT = 10022
    MI_MSG_DIMDEF = 10023
    MI_MSG_VARDEF = 10024
    MI_MSG_VARMISMATCH = 10025
    MI_MSG_VARDIFFSIZE = 10026
    MI_MSG_VARCOUNT = 10027
    MI_MSG_OUTPUTVAR = 10028
    MI_MSG_COPYVAR = 10029
    MI_MSG_VARNOTNUM = 10030
    MI_MSG_OUTOFMEM = 10031
    MI_MSG_ATTRNOTPTR = 10032
    MI_MSG_VARNOTSTD = 10033
    MI_MSG_DIMWIDTH = 10034
    MI_MSG_MAXMINVARY = 10035
    MI_MSG_SNH = 10036
    MI_MSG_INTSIZE = 10037
    MI_MSG_FLTSIZE = 10038
    MI_MSG_TYPECLASS = 10039
    MI_MSG_NOTIMPL = 10040
    MI_MSG_BADTYPE = 10041
    MI_MSG_OPENDSET = 10042
    MI_MSG_READDSET = 10043
    MI_MSG_WRITEDSET = 10044
    MI_MSG_TOOMANYDIMS = 10045
    MI_MSG_ICVATTACHED = 10046
    MI_MSG_BADICV = 10047
    MI_MSG_BADPROP = 10048
    MI_MSG_ICVNOTATTACHED = 10049
    MI_MSG_ICVCOORDS = 10050
    MI_MSG_BADOP = 10051
    MI_MSG_NCOPTS_STACK_OVER = 10052
    MI_MSG_NCOPTS_STACK_UNDER = 10053
    MI_MSG_VOLUME_IO = 10054
    MI2_MSG_UNCMPFAIL = 10055
    MI2_MSG_NOWRITECMP = 10056
    MI2_MSG_OPENFILE = 10057
    MI2_MSG_CREATEFILE = 10058
    MI2_MSG_CLOSEFILE = 10059
    MI2_MSG_FINDATTR = 10060
    MI2_MSG_ATTRNOTNUM = 10061
    MI2_MSG_READATTR = 10062
    MI2_MSG_NOMEMATTR = 10063
    MI2_MSG_CONVATTR = 10064
    MI2_MSG_ATTRNOTSCALAR = 10065
    MI2_MSG_ATTRNOTSTR = 10066
    MI2_MSG_WRITEATTR = 10067
    MI2_MSG_READVAR = 10068
    MI2_MSG_WRITEVAR = 10069
    MI2_MSG_FINDVAR = 10070
    MI2_MSG_ATTRCOUNT = 10071
    MI2_MSG_ATTRNAME = 10072
    MI2_MSG_COPYATTR = 10073
    MI2_MSG_VARINQ = 10074
    MI2_MSG_UNLIMDIM = 10075
    MI2_MSG_DIMINQ = 10076
    MI2_MSG_VARCONFLICT = 10077
    MI2_MSG_DIMDEF = 10078
    MI2_MSG_VARDEF = 10079
    MI2_MSG_VARMISMATCH = 10080
    MI2_MSG_VARDIFFSIZE = 10081
    MI2_MSG_VARCOUNT = 10082
    MI2_MSG_OUTPUTVAR = 10083
    MI2_MSG_COPYVAR = 10084
    MI2_MSG_VARNOTNUM = 10085
    MI2_MSG_OUTOFMEM = 10086
    MI2_MSG_ATTRNOTPTR = 10087
    MI2_MSG_VARNOTSTD = 10088
    MI2_MSG_DIMWIDTH = 10089
    MI2_MSG_MAXMINVARY = 10090
    MI2_MSG_SNH = 10091
    MI2_MSG_INTSIZE = 10092
    MI2_MSG_FLTSIZE = 10093
    MI2_MSG_TYPECLASS = 10094
    MI2_MSG_NOTIMPL = 10095
    MI2_MSG_BADTYPE = 10096
    MI2_MSG_OPENDSET = 10097
    MI2_MSG_READDSET = 10098
    MI2_MSG_WRITEDSET = 10099
    MI2_MSG_TOOMANYDIMS = 10100
    MI2_MSG_ICVATTACHED = 10101
    MI2_MSG_BADICV = 10102
    MI2_MSG_BADPROP = 10103
    MI2_MSG_ICVNOTATTACHED = 10104
    MI2_MSG_ICVCOORDS = 10105
    MI2_MSG_BADOP = 10106
    MI2_MSG_HDF5 = 10107
    MI2_MSG_GENERIC = 10108
end


const mimsgcode_t = mimsgcode
