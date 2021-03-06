
####################
# UNIT TESTS
####################

set(unittest-includes ${unittest-includes}
  .
  ..
)

set(unittest-sources
  ../features/storage/blockdevice/HeapBlockDevice.cpp
  stubs/mbed_atomic_stub.c
  stubs/mbed_assert_stub.cpp
)

set(unittest-test-sources
  features/storage/blockdevice/HeapBlockDevice/test.cpp
)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FFS_DBG=0")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_FS_READONLY=0")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_FS_MINIMIZE=0")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_USE_STRFUNC=0")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_USE_FIND=0")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_USE_MKFS=1")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_USE_FASTSEEK=0")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_USE_EXPAND=0")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_USE_CHMOD=0")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_USE_LABEL=0")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_USE_FORWARD=0")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_CODE_PAGE=437")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_USE_LFN=3")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_MAX_LFN=255")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_LFN_UNICODE=0")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_LFN_BUF=255")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_SFN_BUF=12")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_STRF_ENCODE=3")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_FS_RPATH=1")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_VOLUMES=4")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_STR_VOLUME_ID=0")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_VOLUME_STRS=\"RAM\",\"NAND\",\"CF\",\"SD\",\"SD2\",\"USB\",\"USB2\",\"USB3\"")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_MULTI_PARTITION=0")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_MIN_SS=512")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_MAX_SS=4096")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_USE_TRIM=1")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_FS_NOFSINFO=0")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_FS_TINY=1")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_FS_EXFAT=0")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_FS_HEAPBUF=1")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_FS_NORTC=0")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_NORTC_MON=1")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_NORTC_MDAY=1")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_NORTC_YEAR=2017")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_FS_LOCK=0")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_FS_REENTRANT=0")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_FS_TIMEOUT=1000")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FF_SYNC_t=HANDLE")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FLUSH_ON_NEW_CLUSTER=0")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMBED_CONF_FAT_CHAN_FLUSH_ON_NEW_SECTOR=1")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FFS_DBG=0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_FS_READONLY=0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_FS_MINIMIZE=0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_USE_STRFUNC=0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_USE_FIND=0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_USE_MKFS=1")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_USE_FASTSEEK=0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_USE_EXPAND=0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_USE_CHMOD=0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_USE_LABEL=0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_USE_FORWARD=0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_CODE_PAGE=437")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_USE_LFN=3")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_MAX_LFN=255")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_LFN_UNICODE=0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_LFN_BUF=255")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_SFN_BUF=12")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_STRF_ENCODE=3")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_FS_RPATH=1")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_VOLUMES=4")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_STR_VOLUME_ID=0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_VOLUME_STRS=\"RAM\",\"NAND\",\"CF\",\"SD\",\"SD2\",\"USB\",\"USB2\",\"USB3\"")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_MULTI_PARTITION=0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_MIN_SS=512")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_MAX_SS=4096")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_USE_TRIM=1")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_FS_NOFSINFO=0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_FS_TINY=1")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_FS_EXFAT=0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_FS_HEAPBUF=1")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_FS_NORTC=0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_NORTC_MON=1")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_NORTC_MDAY=1")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_NORTC_YEAR=2017")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_FS_LOCK=0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_FS_REENTRANT=0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_FS_TIMEOUT=1000")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FF_SYNC_t=HANDLE")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FLUSH_ON_NEW_CLUSTER=0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMBED_CONF_FAT_CHAN_FLUSH_ON_NEW_SECTOR=1")
