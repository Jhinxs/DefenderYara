
rule Trojan_Win64_Dcstl_MA_MTB{
	meta:
		description = "Trojan:Win64/Dcstl.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 07 00 00 "
		
	strings :
		$a_01_0 = {48 83 ec 30 48 8b f1 8a c2 24 08 c0 e0 02 44 0f b6 d0 44 8b ca 41 8a c2 0c 80 44 0f b6 c0 41 81 e1 00 40 00 00 45 0f 44 c2 41 0f b6 c8 8a c1 0c 10 0f b6 d8 80 e2 80 0f 44 d9 48 8b ce ff 15 } //10
		$a_01_1 = {6e 00 6f 00 64 00 65 00 2e 00 65 00 78 00 65 00 } //2 node.exe
		$a_01_2 = {73 69 6c 65 6e 63 65 20 61 6c 6c 20 70 72 6f 63 65 73 73 20 77 61 72 6e 69 6e 67 73 } //2 silence all process warnings
		$a_01_3 = {69 6e 74 65 72 6e 61 6c 2f 62 6c 6f 63 6b 6c 69 73 74 } //2 internal/blocklist
		$a_01_4 = {4e 00 6f 00 64 00 65 00 2e 00 6a 00 73 00 } //2 Node.js
		$a_01_5 = {63 68 61 6c 6c 65 6e 67 65 50 61 73 73 77 6f 72 64 } //2 challengePassword
		$a_01_6 = {69 6e 74 65 72 6e 61 6c 2f 61 73 73 65 72 74 2f 63 61 6c 6c 74 72 61 63 6b 65 72 } //2 internal/assert/calltracker
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2) >=22
 
}