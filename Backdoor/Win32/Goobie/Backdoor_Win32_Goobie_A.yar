
rule Backdoor_Win32_Goobie_A{
	meta:
		description = "Backdoor:Win32/Goobie.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_01_0 = {fa 33 7a 69 ad ec 79 7b 2d dd b7 73 4b 1c 36 9d a6 58 e5 1b 7a 9e 3e 4f 4b 6e 35 ec fd 62 88 14 5c d0 3e 87 e7 55 6f f5 7f c1 ac fc 8c cc 9c 92 0d d6 3a c7 01 00 bc 97 18 1d bd c8 66 a7 81 31 } //1
		$a_01_1 = {e8 6e ce c2 b9 ed 7b dd 51 b8 b9 d9 4e 05 b4 bc b8 ff 00 a3 db b9 8f 5b fd 0f a1 75 3c cb c7 4e c9 cc cb 14 8a 9d 8f 8d ae 95 57 0c f5 03 5a f6 b9 8d a5 d5 d7 5d 7f f6 ce c4 df 54 1d 66 6e 0b } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=1
 
}