
rule TrojanDownloader_O97M_Qakbot_AJU_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.AJU!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {68 74 74 70 3a 2f 2f [0-04] 7a 6f 6e 61 2d 72 65 6c 61 78 2e 72 75 2f 69 72 6f 6a 72 6a 65 6a 6f 66 76 72 2f [0-04] 6a 70 67 } //1
		$a_01_1 = {43 3a 5c 4c 6f 74 57 69 6e 5c 4c 6f 74 57 69 6e 32 5c 48 6f 72 73 65 77 2e 64 6c 6c } //1 C:\LotWin\LotWin2\Horsew.dll
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}