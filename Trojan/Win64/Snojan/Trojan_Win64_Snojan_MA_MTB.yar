
rule Trojan_Win64_Snojan_MA_MTB{
	meta:
		description = "Trojan:Win64/Snojan.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 05 00 00 "
		
	strings :
		$a_01_0 = {4e 73 75 32 4f 64 69 77 6f 64 4f 73 32 } //5 Nsu2OdiwodOs2
		$a_01_1 = {4e 73 75 32 4f 64 69 77 6f 64 4f 73 32 00 00 00 0d 0a 0d 0a 00 00 00 00 50 4f 53 54 20 00 00 00 20 48 54 54 50 2f 31 } //5
		$a_01_2 = {53 45 5f 41 53 53 49 47 4e 50 52 49 4d 41 52 59 54 4f 4b 45 4e 5f 4e 41 4d 45 20 25 64 } //2 SE_ASSIGNPRIMARYTOKEN_NAME %d
		$a_01_3 = {43 61 6e 27 74 20 4f 70 65 6e 50 72 6f 63 65 73 73 54 6f 6b 65 6e 20 65 72 72 20 25 64 20 50 49 44 20 25 64 20 68 61 6e 64 6c 65 20 25 70 } //2 Can't OpenProcessToken err %d PID %d handle %p
		$a_01_4 = {2f 00 63 00 20 00 64 00 65 00 6c 00 } //2 /c del
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2) >=16
 
}