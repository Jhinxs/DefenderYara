
rule Rogue_Win64_Sirefef{
	meta:
		description = "Rogue:Win64/Sirefef,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {61 73 6b 3f 74 3d 25 75 26 75 3d 25 75 } //1 ask?t=%u&u=%u
		$a_01_1 = {61 76 5f 69 6e 73 74 61 6c 6c 2e 70 64 62 } //1 av_install.pdb
		$a_01_2 = {53 65 72 69 61 6c 5f 41 63 63 65 73 73 5f 4e 75 6d } //1 Serial_Access_Num
		$a_01_3 = {6c 00 73 00 61 00 73 00 72 00 76 00 2f 00 75 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 2e 00 68 00 74 00 6d 00 6c 00 } //1 lsasrv/uninstall.html
		$a_03_4 = {ba 55 61 6f 67 e8 ?? ?? ?? ?? 48 8d 8c 24 ?? ?? ?? ?? ba 19 00 02 00 4c 8b c0 ff 15 } //2
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*2) >=5
 
}
rule Rogue_Win64_Sirefef_2{
	meta:
		description = "Rogue:Win64/Sirefef,SIGNATURE_TYPE_ARHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {61 73 6b 3f 74 3d 25 75 26 75 3d 25 75 } //1 ask?t=%u&u=%u
		$a_01_1 = {61 76 5f 69 6e 73 74 61 6c 6c 2e 70 64 62 } //1 av_install.pdb
		$a_01_2 = {53 65 72 69 61 6c 5f 41 63 63 65 73 73 5f 4e 75 6d } //1 Serial_Access_Num
		$a_01_3 = {6c 00 73 00 61 00 73 00 72 00 76 00 2f 00 75 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 2e 00 68 00 74 00 6d 00 6c 00 } //1 lsasrv/uninstall.html
		$a_03_4 = {ba 55 61 6f 67 e8 ?? ?? ?? ?? 48 8d 8c 24 ?? ?? ?? ?? ba 19 00 02 00 4c 8b c0 ff 15 } //2
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*2) >=5
 
}