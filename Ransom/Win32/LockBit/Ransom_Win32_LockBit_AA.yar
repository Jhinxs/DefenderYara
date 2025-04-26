
rule Ransom_Win32_LockBit_AA{
	meta:
		description = "Ransom:Win32/LockBit.AA,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 "
		
	strings :
		$a_01_0 = {f1 d5 00 fa 4c 62 cc f4 0f 0b } //1
		$a_01_1 = {33 c0 8b 55 0c 8b 75 08 ac 33 c9 b9 30 00 00 00 8d 0c 4d 01 00 00 00 02 f1 2a f1 33 c9 b9 06 00 00 00 8d 0c 4d 01 00 00 00 d3 ca 03 d0 90 85 c0 75 d6 } //10
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*10) >=11
 
}