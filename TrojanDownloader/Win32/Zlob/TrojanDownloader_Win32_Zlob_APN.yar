
rule TrojanDownloader_Win32_Zlob_APN{
	meta:
		description = "TrojanDownloader:Win32/Zlob.APN,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_00_0 = {43 4f 4d 53 50 45 43 00 4f 70 65 6e 00 00 00 00 20 3e 20 6e 75 6c 00 00 2f 63 20 64 65 6c 20 00 } //1
		$a_03_1 = {6a 00 8d 85 ?? fe ff ff 50 ff 75 ?? 6a 04 ff 75 ?? ff 75 ?? ff 75 ?? ff 75 ?? c3 5f 5e 5b } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}