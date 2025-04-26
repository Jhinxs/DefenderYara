
rule Ransom_Win32_Lockbit_AA_MTB{
	meta:
		description = "Ransom:Win32/Lockbit.AA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {4c 6f 63 6b 42 69 74 20 52 61 6e 73 6f 6d 77 61 72 65 } //1 LockBit Ransomware
		$a_01_1 = {41 00 6c 00 6c 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 73 00 74 00 6f 00 6c 00 65 00 6e 00 20 00 61 00 6e 00 64 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //1 All your files stolen and encrypted
		$a_01_2 = {2e 00 6c 00 6f 00 63 00 6b 00 } //1 .lock
		$a_01_3 = {4c 00 6f 00 63 00 6b 00 62 00 69 00 74 00 5c 00 73 00 68 00 65 00 6c 00 6c 00 5c 00 4f 00 70 00 65 00 6e 00 5c 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 } //1 Lockbit\shell\Open\Command
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}