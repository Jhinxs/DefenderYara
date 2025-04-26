
rule Ransom_Win32_Prolock_PA_MTB{
	meta:
		description = "Ransom:Win32/Prolock.PA!MTB,SIGNATURE_TYPE_PEHSTR,03 00 03 00 05 00 00 "
		
	strings :
		$a_01_0 = {50 72 6f 4c 6f 63 6b 20 52 61 6e 73 6f 6d 77 61 72 65 } //1 ProLock Ransomware
		$a_01_1 = {5c 00 5b 00 48 00 4f 00 57 00 20 00 54 00 4f 00 20 00 52 00 45 00 43 00 4f 00 56 00 45 00 52 00 20 00 46 00 49 00 4c 00 45 00 53 00 5d 00 2e 00 54 00 58 00 54 00 } //1 \[HOW TO RECOVER FILES].TXT
		$a_01_2 = {64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //1 delete shadows /all /quiet
		$a_01_3 = {5c 00 48 00 30 00 77 00 5f 00 54 00 30 00 5f 00 52 00 65 00 63 00 30 00 76 00 65 00 72 00 79 00 5f 00 46 00 69 00 6c 00 65 00 73 00 2e 00 74 00 78 00 74 00 } //1 \H0w_T0_Rec0very_Files.txt
		$a_01_4 = {3a 5c 50 72 6f 67 72 61 6d 64 61 74 61 5c 6c 6f 63 6b 2e 78 6d 6c } //1 :\Programdata\lock.xml
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=3
 
}