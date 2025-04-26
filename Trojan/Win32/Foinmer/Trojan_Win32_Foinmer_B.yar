
rule Trojan_Win32_Foinmer_B{
	meta:
		description = "Trojan:Win32/Foinmer.B,SIGNATURE_TYPE_PEHSTR,01 00 01 00 02 00 00 "
		
	strings :
		$a_01_0 = {3f 00 74 00 65 00 6d 00 70 00 6c 00 61 00 74 00 65 00 3d 00 27 00 2b 00 69 00 6e 00 5f 00 68 00 6f 00 73 00 74 00 73 00 5b 00 74 00 68 00 65 00 5f 00 68 00 6f 00 73 00 74 00 5d 00 2b 00 27 00 26 00 66 00 72 00 6f 00 6d 00 3d 00 27 00 2b 00 74 00 68 00 65 00 5f 00 68 00 6f 00 73 00 74 00 } //1 ?template='+in_hosts[the_host]+'&from='+the_host
		$a_01_1 = {62 75 69 6c 64 65 72 5c 69 65 5c 52 65 6c 65 61 73 65 5c 42 48 4f 69 6e 43 50 50 2e 70 64 62 } //1 builder\ie\Release\BHOinCPP.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=1
 
}