# Partition Info

## Boot Partitions (Both Slots)
- boot  
- dtbo  
- init_boot  
- vendor_boot  

## VBmeta Partitions (Both Slots)
- vbmeta  
- vbmeta_system  
- vbmeta_vendor  

## Firmware Partitions (Both Slots)
- apusys  
- audio_dsp  
- ccu  
- connsys_bt  
- connsys_gnss  
- connsys_wifi  
- dpm  
- gpueb  
- gz  
- lk  
- logo  
- mcupm  
- mcf_ota  
- md1img  
- mvpu_algo  
- pi_img  
- scp  
- spmfw  
- sspm  
- tee  
- vcp  

## Logical Partition
- super  
  ├── odm  
  ├── odm_dlkm  
  ├── product  
  ├── system  
  ├── system_dlkm  
  ├── system_ext  
  ├── vendor  
  ├── vendor_dlkm  

  ├── odm_cow  
  ├── odm_dlkm_cow  
  ├── product_cow  
  ├── system_cow  
  ├── system_dlkm_cow  
  ├── system_ext_cow  
  ├── vendor_cow  
  └── vendor_dlkm_cow

---

# Other Important Partitions  

## Device Specific (Can't Be Shared)
- nvcfg  
- nvram  
- nvdata  
- persist  

## Device Lock Info  
*(Contains device password, Google account & OEM unlock status)*  
- frp *(encrypted)*  

## Preloader *(Not Accessible Through Bootloader)*
- preloader  
- preloader_backup  

## Dynamic *(Recreated After Every Boot)*
- protect1  
- protect2  
- boot_para  
- dram_para  

## Contains Device-Related Data *(Can't Be Shared)*
- nt_reserve1 *(Contains SKU & Colors)*  
- nt_uefi *(encrypted)*  

## Partition Table (GPT)
- pgpt  
- sgpt *(Backup of pgpt)*  

## Bootloader Unlock Status *(Not Recommended to Flash)*
- seccfg  

## Boot Mode & Info
- misc *(Contains recovery bootloop info)*  
- efuse  
- para  

## Logs
- nt_kmsg  
- flashinfo *(Contains last flash info)*  
- expdb *(Contains boot error logs)*  

## Unused / Blank Partitions
- pstore  
- otp  
- proinfo  
- nt_reserve2  
- sec1  

## Unknown Partitions
- nt_log *(encrypted)*

## Device Data
- userdata
- metadata

## not available in readback
- preloader_raw
