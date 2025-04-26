
rule VirTool_WinNT_Rootkitdrv_HR{
	meta:
		description = "VirTool:WinNT/Rootkitdrv.HR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_03_0 = {8b 40 04 89 78 10 8b 40 0c 3b ?? 75 f6 } //2
		$a_03_1 = {8b 40 01 8b 15 ?? ?? ?? ?? 8d 04 82 87 08 89 0d } //1
		$a_00_2 = {48 65 6c 70 5c 73 76 63 68 6f 73 74 2e 65 78 65 } //1 Help\svchost.exe
		$a_00_3 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 } //1 \Device\svchost
		$a_00_4 = {5c 69 33 38 36 5c 52 4f 4f 54 5f 44 52 49 56 45 52 2e 70 64 62 } //2 \i386\ROOT_DRIVER.pdb
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*2) >=4
 
}