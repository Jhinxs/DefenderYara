
rule TrojanDropper_Win32_MultiDropper_AO{
	meta:
		description = "TrojanDropper:Win32/MultiDropper.AO,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 20 00 48 00 65 00 6c 00 70 00 65 00 72 00 20 00 4f 00 62 00 6a 00 65 00 63 00 74 00 73 00 } //1 \Windows\CurrentVersion\Explorer\Browser Helper Objects
		$a_01_1 = {72 00 65 00 67 00 73 00 76 00 72 00 33 00 32 00 20 00 2f 00 73 00 20 00 73 00 68 00 64 00 6f 00 63 00 77 00 76 00 2e 00 64 00 6c 00 6c 00 } //1 regsvr32 /s shdocwv.dll
		$a_01_2 = {42 00 72 00 61 00 73 00 69 00 6c 00 } //1 Brasil
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}