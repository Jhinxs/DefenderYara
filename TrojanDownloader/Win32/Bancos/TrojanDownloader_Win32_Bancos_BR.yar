
rule TrojanDownloader_Win32_Bancos_BR{
	meta:
		description = "TrojanDownloader:Win32/Bancos.BR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {43 3a 5c 57 69 6e 64 6f 77 73 5c 62 6f 4f 54 2e 64 6c 6c ?? ?? 57 41 42 } //1
		$a_01_1 = {24 72 75 6e 64 6c 6c 33 32 20 43 3a 5c 57 69 6e 64 6f 77 73 5c 62 6f 4f 54 2e 64 6c 6c 2c 6e 65 74 77 6f 72 6b } //1 $rundll32 C:\Windows\boOT.dll,network
		$a_01_2 = {52 45 47 53 56 52 33 32 20 2f 73 20 43 3a 5c 77 61 62 2e 64 6c 6c } //1 REGSVR32 /s C:\wab.dll
		$a_01_3 = {43 3a 5c 57 69 6e 64 6f 77 73 5c 62 6f 4f 54 2e 64 6c 6c } //1 C:\Windows\boOT.dll
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}