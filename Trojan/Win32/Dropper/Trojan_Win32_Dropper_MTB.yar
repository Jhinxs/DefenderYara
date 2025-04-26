
rule Trojan_Win32_Dropper_MTB{
	meta:
		description = "Trojan:Win32/Dropper!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_81_0 = {73 72 63 64 73 2e 70 64 62 } //2 srcds.pdb
		$a_81_1 = {62 69 6e 5c 64 65 64 69 63 61 74 65 64 2e 64 6c 6c } //2 bin\dedicated.dll
		$a_81_2 = {4c 6f 63 61 6c 5c 54 65 6d 70 5c 64 63 61 39 36 36 61 63 64 38 38 65 30 66 31 35 33 64 36 31 38 62 38 65 35 38 34 30 66 37 35 62 65 30 33 62 33 38 32 33 64 65 37 64 64 65 36 33 39 36 34 32 33 65 64 62 31 30 63 66 34 37 61 38 53 72 76 2e 65 78 65 } //2 Local\Temp\dca966acd88e0f153d618b8e5840f75be03b3823de7dde6396423edb10cf47a8Srv.exe
	condition:
		((#a_81_0  & 1)*2+(#a_81_1  & 1)*2+(#a_81_2  & 1)*2) >=6
 
}