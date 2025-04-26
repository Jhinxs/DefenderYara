
rule VirTool_WinNT_Rootkitdrv_AQ{
	meta:
		description = "VirTool:WinNT/Rootkitdrv.AQ,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_02_0 = {55 8b ec 8b 0d ?? ?? ?? 00 8b 40 01 8b 09 83 ec 14 56 8b 34 81 80 3e e9 75 11 8b 45 ?? 2b c6 83 e8 05 39 46 01 75 04 33 c0 eb 77 } //1
		$a_00_1 = {5a 77 51 75 65 72 79 56 61 6c 75 65 4b 65 79 } //1 ZwQueryValueKey
		$a_00_2 = {5a 77 45 6e 75 6d 65 72 61 74 65 4b 65 79 } //1 ZwEnumerateKey
		$a_00_3 = {5a 77 43 72 65 61 74 65 46 69 6c 65 } //1 ZwCreateFile
		$a_00_4 = {5a 77 43 72 65 61 74 65 53 65 63 74 69 6f 6e } //1 ZwCreateSection
		$a_00_5 = {4b 65 53 65 72 76 69 63 65 44 65 73 63 72 69 70 74 6f 72 54 61 62 6c 65 } //1 KeServiceDescriptorTable
		$a_00_6 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 76 00 73 00 5f 00 6d 00 6f 00 6e 00 2e 00 64 00 6c 00 6c 00 } //1 \SystemRoot\System32\vs_mon.dll
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=7
 
}