
rule TrojanDownloader_Win32_Zlob_gen_AMZ{
	meta:
		description = "TrojanDownloader:Win32/Zlob.gen!AMZ,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_05_0 = {67 6f 76 2d 61 76 61 73 74 21 6b 69 6e } //2 gov-avast!kin
		$a_01_1 = {74 68 65 77 6f 72 6c 64 } //1 theworld
	condition:
		((#a_05_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}