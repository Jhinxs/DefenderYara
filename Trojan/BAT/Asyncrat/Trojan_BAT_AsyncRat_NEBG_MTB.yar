
rule Trojan_BAT_AsyncRat_NEBG_MTB{
	meta:
		description = "Trojan:BAT/AsyncRat.NEBG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 07 00 00 "
		
	strings :
		$a_01_0 = {28 53 00 00 0a 6f 55 00 00 0a 06 07 6f 56 00 00 0a 17 73 37 00 00 0a 0c 08 02 16 02 8e 69 6f 57 00 00 0a 08 } //10
		$a_01_1 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 46 00 6f 00 72 00 6d 00 73 00 41 00 70 00 70 00 31 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //2 WindowsFormsApp1.Properties.Resources
		$a_01_2 = {52 50 46 3a 53 6d 61 72 74 41 73 73 65 6d 62 6c 79 } //2 RPF:SmartAssembly
		$a_01_3 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //2 RijndaelManaged
		$a_01_4 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //2 WriteProcessMemory
		$a_01_5 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //2 CreateDecryptor
		$a_01_6 = {24 24 6d 65 74 68 6f 64 30 78 36 30 30 30 30 32 33 2d 31 } //2 $$method0x6000023-1
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2) >=22
 
}