
rule HackTool_Linux_LinPeas_D_MTB{
	meta:
		description = "HackTool:Linux/LinPeas.D!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_01_0 = {46 72 29 4f 89 2c 7d 40 a4 f8 43 d2 c0 a7 c5 41 68 5d fb 70 3c 5f 49 72 d6 03 44 9a 1f f1 81 bf 17 0d e8 f1 60 48 ca d8 cd 88 21 77 06 c7 25 92 94 2e 52 4e 89 26 37 b6 12 9c c1 cd b0 bc 8f 15 57 b4 40 dc 4f } //2
		$a_01_1 = {5e 40 59 99 ac c4 fb e9 c0 e1 e2 c1 cb 04 56 fd 31 53 2a 3e fc 48 90 db b2 4c 29 1e 76 94 58 1c 79 e5 0a bb 2b df a2 88 e9 4a 2e cb 27 95 51 0f 81 62 d8 44 b7 c7 6a 5a d4 e2 91 74 21 bd 54 a8 } //2
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2) >=4
 
}