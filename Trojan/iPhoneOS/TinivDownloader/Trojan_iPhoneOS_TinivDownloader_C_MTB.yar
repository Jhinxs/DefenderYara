
rule Trojan_iPhoneOS_TinivDownloader_C_MTB{
	meta:
		description = "Trojan:iPhoneOS/TinivDownloader.C!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_00_0 = {79 69 6e 67 79 6d 6d 6b 3d 25 40 } //3 yingymmk=%@
		$a_00_1 = {2f 2f 71 6d 2e 6b 78 6e 76 2e 63 6e 2f 61 70 69 31 32 33 2e 70 68 70 } //1 //qm.kxnv.cn/api123.php
		$a_00_2 = {61 64 76 65 72 74 69 73 69 6e 67 49 64 65 6e 74 69 66 69 65 72 } //1 advertisingIdentifier
		$a_00_3 = {44 65 73 6b 74 6f 70 2f 7a 68 65 6e 67 20 32 2f 7a 68 65 6e 67 2f } //1 Desktop/zheng 2/zheng/
	condition:
		((#a_00_0  & 1)*3+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=5
 
}