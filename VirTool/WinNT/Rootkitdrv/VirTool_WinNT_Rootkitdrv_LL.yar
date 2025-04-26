
rule VirTool_WinNT_Rootkitdrv_LL{
	meta:
		description = "VirTool:WinNT/Rootkitdrv.LL,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 54 00 63 00 70 00 } //1 \Device\Tcp
		$a_00_1 = {5c 00 46 00 69 00 6c 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 6e 00 74 00 66 00 73 00 } //1 \FileSystem\ntfs
		$a_03_2 = {8b 5f 60 85 db 74 ?? 80 3b 0c 75 ?? 80 7b 01 01 75 ?? 83 7f 18 00 7c ?? 83 7f 1c 00 74 ?? 57 e8 ?? ?? ?? ?? 8b f0 85 f6 74 ?? f6 43 02 02 74 } //1
		$a_03_3 = {85 c0 7c 18 8b 45 ?? 8b 48 0c 89 0d ?? ?? ?? ?? 8b 48 10 03 48 0c 89 0d ?? ?? ?? ?? 68 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}