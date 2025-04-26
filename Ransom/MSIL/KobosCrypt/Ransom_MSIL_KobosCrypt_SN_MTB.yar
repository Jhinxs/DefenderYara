
rule Ransom_MSIL_KobosCrypt_SN_MTB{
	meta:
		description = "Ransom:MSIL/KobosCrypt.SN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 08 00 00 "
		
	strings :
		$a_01_0 = {4f 62 66 75 73 63 61 74 65 64 42 79 47 6f 6c 69 61 74 68 } //1 ObfuscatedByGoliath
		$a_01_1 = {67 65 74 5f 54 6f 74 61 6c 46 72 65 65 53 70 61 63 65 } //1 get_TotalFreeSpace
		$a_01_2 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //1 GetExecutingAssembly
		$a_01_3 = {73 65 74 5f 55 73 65 53 68 65 6c 6c 45 78 65 63 75 74 65 } //1 set_UseShellExecute
		$a_01_4 = {57 72 69 74 65 41 6c 6c 54 65 78 74 } //1 WriteAllText
		$a_01_5 = {47 65 74 44 72 69 76 65 73 } //1 GetDrives
		$a_01_6 = {67 65 74 5f 49 73 41 74 74 61 63 68 65 64 } //1 get_IsAttached
		$a_01_7 = {73 76 63 68 6f 73 74 2e 65 78 65 } //10 svchost.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*10) >=17
 
}