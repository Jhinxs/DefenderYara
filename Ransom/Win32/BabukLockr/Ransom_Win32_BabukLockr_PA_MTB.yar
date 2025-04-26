
rule Ransom_Win32_BabukLockr_PA_MTB{
	meta:
		description = "Ransom:Win32/BabukLockr.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {2f 00 63 00 20 00 76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 61 00 6c 00 6c 00 20 00 2f 00 71 00 75 00 69 00 65 00 74 00 } //1 /c vssadmin.exe delete shadows /all /quiet
		$a_01_1 = {2a 2a 2a 2a 42 59 20 42 41 42 55 4b 20 4c 4f 43 4b 45 52 2a 2a 2a 2a } //1 ****BY BABUK LOCKER****
		$a_01_2 = {2e 00 5f 00 5f 00 4e 00 49 00 53 00 54 00 5f 00 4b 00 35 00 37 00 31 00 5f 00 5f 00 } //1 .__NIST_K571__
		$a_01_3 = {48 00 6f 00 77 00 20 00 54 00 6f 00 20 00 52 00 65 00 73 00 74 00 6f 00 72 00 65 00 20 00 59 00 6f 00 75 00 72 00 20 00 46 00 69 00 6c 00 65 00 73 00 2e 00 74 00 78 00 74 00 } //1 How To Restore Your Files.txt
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}