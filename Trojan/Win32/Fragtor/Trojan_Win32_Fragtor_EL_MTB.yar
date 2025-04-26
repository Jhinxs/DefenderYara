
rule Trojan_Win32_Fragtor_EL_MTB{
	meta:
		description = "Trojan:Win32/Fragtor.EL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {73 74 65 61 6c 65 64 44 42 } //1 stealedDB
		$a_01_1 = {2d 72 20 6d 61 6b 65 20 72 65 67 69 73 65 72 20 76 61 6c 75 65 73 20 75 73 69 6e 67 20 73 74 65 61 6c 65 64 20 64 61 74 61 62 61 73 65 2e } //1 -r make regiser values using stealed database.
		$a_01_2 = {2d 64 20 72 65 61 64 20 61 6e 64 20 64 65 63 72 79 70 74 20 65 76 65 72 79 20 6c 69 6e 65 20 66 72 6f 6d 20 64 61 74 61 62 61 73 65 2e } //1 -d read and decrypt every line from database.
		$a_01_3 = {57 61 79 20 74 6f 20 67 6f 5c 54 4f 56 5c 34 4c 61 62 } //1 Way to go\TOV\4Lab
		$a_01_4 = {63 6d 64 2e 65 78 65 20 2f 43 20 70 69 6e 67 20 31 2e 31 2e 31 2e 31 20 2d 6e 20 31 20 2d 77 20 33 30 30 30 20 3e 20 4e 75 6c 20 26 20 57 61 72 70 65 72 2e 65 78 65 } //1 cmd.exe /C ping 1.1.1.1 -n 1 -w 3000 > Nul & Warper.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}