
rule TrojanDownloader_BAT_PsDow_F_MTB{
	meta:
		description = "TrojanDownloader:BAT/PsDow.F!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_01_0 = {4a 49 54 53 74 61 72 74 65 72 } //2 JITStarter
		$a_01_1 = {43 6f 6e 66 75 73 65 72 2e 43 6f 72 65 } //2 Confuser.Core
		$a_01_2 = {50 72 6f 63 65 73 73 57 69 6e 64 6f 77 53 74 79 6c 65 } //1 ProcessWindowStyle
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1) >=5
 
}