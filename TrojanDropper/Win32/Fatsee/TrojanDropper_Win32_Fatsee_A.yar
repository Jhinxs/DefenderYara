
rule TrojanDropper_Win32_Fatsee_A{
	meta:
		description = "TrojanDropper:Win32/Fatsee.A,SIGNATURE_TYPE_PEHSTR,05 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {64 72 69 76 65 72 73 5c 74 65 73 61 66 65 2e 73 79 73 } //1 drivers\tesafe.sys
		$a_01_1 = {5c 74 65 73 61 66 65 5c 52 65 6c 65 61 73 65 5c 73 65 72 76 65 72 2e 70 64 62 } //1 \tesafe\Release\server.pdb
		$a_01_2 = {64 72 69 76 65 72 73 5c 6b 76 73 79 73 2e 73 79 73 } //1 drivers\kvsys.sys
		$a_01_3 = {5c 5c 2e 5c 74 65 73 61 66 65 } //1 \\.\tesafe
		$a_01_4 = {33 36 30 53 61 66 65 2e 65 78 65 } //1 360Safe.exe
		$a_01_5 = {5c 75 73 70 31 30 2e 64 6c 6c } //1 \usp10.dll
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}