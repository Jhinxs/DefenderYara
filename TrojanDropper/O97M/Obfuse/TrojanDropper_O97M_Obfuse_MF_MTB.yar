
rule TrojanDropper_O97M_Obfuse_MF_MTB{
	meta:
		description = "TrojanDropper:O97M/Obfuse.MF!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {26 20 43 68 72 28 39 32 29 20 26 20 52 6e 64 20 26 20 22 2e 6a 73 22 } //1 & Chr(92) & Rnd & ".js"
		$a_01_1 = {6a 73 54 65 78 74 20 3d 20 55 73 65 72 46 6f 72 6d 31 2e 54 65 78 74 42 6f 78 31 2e 56 61 6c 75 65 } //1 jsText = UserForm1.TextBox1.Value
		$a_01_2 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 68 65 6c 6c 2e 41 70 70 6c 69 63 61 74 69 6f 6e 22 29 2e 53 68 65 6c 6c 45 78 65 63 75 74 65 20 73 32 66 75 6c 65 } //1 CreateObject("Shell.Application").ShellExecute s2fule
		$a_01_3 = {2e 54 65 78 74 20 3d 20 22 20 5e 70 22 } //1 .Text = " ^p"
		$a_01_4 = {53 65 74 20 46 6f 6c 64 65 72 20 3d 20 46 53 4f 2e 47 65 74 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 28 32 29 } //1 Set Folder = FSO.GetSpecialFolder(2)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}