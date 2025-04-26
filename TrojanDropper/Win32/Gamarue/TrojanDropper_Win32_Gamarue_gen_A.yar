
rule TrojanDropper_Win32_Gamarue_gen_A{
	meta:
		description = "TrojanDropper:Win32/Gamarue.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_03_0 = {99 b9 ff 00 00 00 f7 f9 4e 00 56 01 4f 75 ec 53 6a 06 6a 02 53 53 68 00 00 00 40 8d 95 ?? ?? ff ff 52 } //1
		$a_03_1 = {74 09 80 34 30 ?? 40 3b c7 72 f7 } //1
		$a_01_2 = {5c 52 65 6c 65 61 73 65 5c 41 44 72 6f 70 70 65 72 2e 70 64 62 } //1 \Release\ADropper.pdb
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=2
 
}