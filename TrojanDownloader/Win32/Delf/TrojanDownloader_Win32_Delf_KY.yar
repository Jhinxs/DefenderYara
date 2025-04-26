
rule TrojanDownloader_Win32_Delf_KY{
	meta:
		description = "TrojanDownloader:Win32/Delf.KY,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_02_0 = {33 c0 55 68 ?? ?? ?? ?? 64 ff 30 64 89 20 85 db 74 ?? 53 8b 45 f0 50 e8 ?? ?? ?? ?? 85 c0 74 } //1
		$a_00_1 = {2e 78 7a 31 39 2e 63 6f 6d } //1 .xz19.com
		$a_02_2 = {6d 79 69 65 [0-08] 43 6e 4e 75 6f 49 45 2e 65 78 65 } //1
		$a_00_3 = {2f 56 45 52 59 53 49 4c 45 4e 54 } //1 /VERYSILENT
		$a_00_4 = {4b 75 6f 44 6f 75 53 65 74 75 70 } //1 KuoDouSetup
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}