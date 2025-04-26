
rule Trojan_Win32_Johnnie_B_MTB{
	meta:
		description = "Trojan:Win32/Johnnie.B!MTB,SIGNATURE_TYPE_PEHSTR,05 00 04 00 03 00 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 4f 00 66 00 66 00 69 00 63 00 65 00 55 00 70 00 64 00 61 00 74 00 65 00 } //1 Software\Microsoft\OfficeUpdate
		$a_01_1 = {2d 00 45 00 78 00 65 00 63 00 75 00 74 00 69 00 6f 00 6e 00 50 00 6f 00 6c 00 69 00 63 00 79 00 20 00 42 00 79 00 50 00 61 00 73 00 73 00 20 00 2d 00 57 00 69 00 6e 00 64 00 6f 00 77 00 53 00 74 00 79 00 6c 00 65 00 20 00 48 00 69 00 64 00 64 00 65 00 6e 00 20 00 2d 00 45 00 6e 00 63 00 6f 00 64 00 65 00 64 00 } //1 -ExecutionPolicy ByPass -WindowStyle Hidden -Encoded
		$a_01_2 = {57 72 61 70 70 65 72 50 6f 77 65 72 73 68 65 6c 6c 5c 52 65 6c 65 61 73 65 5c 57 72 61 70 70 65 72 53 74 75 62 2e 70 64 62 } //3 WrapperPowershell\Release\WrapperStub.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*3) >=4
 
}