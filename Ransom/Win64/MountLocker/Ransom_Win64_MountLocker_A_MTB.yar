
rule Ransom_Win64_MountLocker_A_MTB{
	meta:
		description = "Ransom:Win64/MountLocker.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 "
		
	strings :
		$a_81_0 = {43 68 61 43 68 61 32 30 } //3 ChaCha20
		$a_81_1 = {43 52 59 50 54 4f 47 41 4d 53 } //3 CRYPTOGAMS
		$a_81_2 = {43 4c 49 45 4e 54 5f 49 44 } //3 CLIENT_ID
		$a_81_3 = {61 74 74 72 69 62 20 2d 73 20 2d 72 20 2d 68 } //3 attrib -s -r -h
		$a_81_4 = {62 6f 6f 74 6d 67 72 } //3 bootmgr
		$a_81_5 = {63 6d 64 2e 65 78 65 20 2f 63 20 73 74 61 72 74 } //3 cmd.exe /c start
	condition:
		((#a_81_0  & 1)*3+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3+(#a_81_4  & 1)*3+(#a_81_5  & 1)*3) >=18
 
}