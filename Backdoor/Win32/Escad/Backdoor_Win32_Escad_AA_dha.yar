
rule Backdoor_Win32_Escad_AA_dha{
	meta:
		description = "Backdoor:Win32/Escad.AA!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {6e 65 74 5f 76 65 72 2e 64 61 74 00 } //1
		$a_01_1 = {63 6d 64 2e 65 78 65 20 2f 63 20 77 6d 69 63 2e 65 78 65 20 2f 6e 6f 64 65 3a 22 25 73 22 20 2f 75 73 65 72 3a 22 25 73 22 20 2f 70 61 73 73 77 6f 72 64 3a 22 25 73 22 20 50 52 4f 43 45 53 53 20 43 41 4c 4c 20 43 52 45 41 54 45 } //1 cmd.exe /c wmic.exe /node:"%s" /user:"%s" /password:"%s" PROCESS CALL CREATE
		$a_01_2 = {52 61 73 53 65 63 72 75 69 74 79 00 } //1 慒即捥畲瑩y
		$a_01_3 = {69 67 66 78 74 72 61 79 65 78 2e 65 78 65 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}