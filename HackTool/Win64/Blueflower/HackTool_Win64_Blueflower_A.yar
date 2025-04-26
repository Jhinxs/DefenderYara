
rule HackTool_Win64_Blueflower_A{
	meta:
		description = "HackTool:Win64/Blueflower.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 "
		
	strings :
		$a_01_0 = {5b 44 4c 4c 5d 20 44 75 6d 70 69 6e 67 20 70 61 73 73 77 6f 72 64 73 } //1 [DLL] Dumping passwords
		$a_01_1 = {5b 44 4c 4c 5d 20 50 61 73 73 77 6f 72 64 46 69 6c 65 50 61 74 68 3a 20 25 73 } //1 [DLL] PasswordFilePath: %s
		$a_00_2 = {53 45 43 55 52 49 54 59 5c 50 6f 6c 69 63 79 5c 53 65 63 72 65 74 } //1 SECURITY\Policy\Secret
		$a_00_3 = {5b 44 4c 4c 5d 20 4c 73 61 46 69 6c 65 50 61 74 68 3a 20 25 73 } //1 [DLL] LsaFilePath: %s
		$a_00_4 = {4c 73 61 72 4f 70 65 6e 53 65 63 72 65 74 } //1 LsarOpenSecret
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=10
 
}