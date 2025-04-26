
rule Trojan_Win32_IcedId_SB_MTB{
	meta:
		description = "Trojan:Win32/IcedId.SB!MTB,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {65 3a 5c 34 38 5c 4c 69 6e 65 5c 32 35 5c 36 34 5c 52 65 70 72 65 73 65 6e 74 5c 67 72 65 65 6e 5c 53 6d 65 6c 6c 5c 45 78 63 69 74 65 5c 73 65 61 72 63 68 5c 70 68 72 61 73 65 5c 34 38 63 68 61 6e 67 65 2e 70 64 62 } //1 e:\48\Line\25\64\Represent\green\Smell\Excite\search\phrase\48change.pdb
		$a_01_1 = {66 00 3a 00 5c 00 64 00 64 00 5c 00 76 00 63 00 74 00 6f 00 6f 00 6c 00 73 00 5c 00 63 00 72 00 74 00 5c 00 76 00 63 00 72 00 75 00 6e 00 74 00 69 00 6d 00 65 00 5c 00 73 00 72 00 63 00 5c 00 69 00 6e 00 74 00 65 00 72 00 6e 00 61 00 6c 00 5c 00 77 00 69 00 6e 00 61 00 70 00 69 00 5f 00 64 00 6f 00 77 00 6e 00 6c 00 65 00 76 00 65 00 6c 00 2e 00 63 00 70 00 70 00 } //1 f:\dd\vctools\crt\vcruntime\src\internal\winapi_downlevel.cpp
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}