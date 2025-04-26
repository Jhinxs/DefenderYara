
rule Backdoor_Win32_Merflee_A_dha{
	meta:
		description = "Backdoor:Win32/Merflee.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,64 00 64 00 03 00 00 "
		
	strings :
		$a_01_0 = {49 74 49 73 54 68 65 45 6e 64 4f 66 54 68 65 57 6f 72 6c 64 41 6e 64 49 46 65 65 6c 46 69 6e 65 52 45 4d } //1 ItIsTheEndOfTheWorldAndIFeelFineREM
		$a_01_1 = {61 70 65 63 2e 64 6e 73 66 72 65 65 73 74 6f 72 65 2e 63 6f 6d } //1 apec.dnsfreestore.com
		$a_00_2 = {2f 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2f 00 70 00 72 00 6f 00 64 00 75 00 63 00 74 00 2f 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 75 00 70 00 64 00 61 00 74 00 65 00 2f 00 61 00 73 00 70 00 78 00 } //1 /microsoft/product/windowsupdate/aspx
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1) >=100
 
}