
rule Ransom_Linux_BlackCat_A_MTB{
	meta:
		description = "Ransom:Linux/BlackCat.A!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_00_0 = {65 73 78 63 6c 69 20 2d 2d 66 6f 72 6d 61 74 74 65 72 3d 63 73 76 20 2d 2d 66 6f 72 6d 61 74 2d 70 61 72 61 6d 3d 66 69 65 6c 64 73 3d 3d } //1 esxcli --formatter=csv --format-param=fields==
		$a_00_1 = {65 73 78 63 6c 69 20 76 6d 20 70 72 6f 63 65 73 73 20 6b 69 6c 6c 20 2d 2d 74 79 70 65 3d 66 6f 72 63 65 20 2d 2d 77 6f 72 6c 64 2d 69 64 3d } //1 esxcli vm process kill --type=force --world-id=
		$a_00_2 = {76 6d 20 70 72 6f 63 65 73 73 20 6c 69 73 74 20 7c 20 61 77 6b 20 2d 46 20 } //1 vm process list | awk -F 
		$a_00_3 = {65 6e 61 62 6c 65 5f 65 73 78 69 5f 76 6d 5f 6b 69 6c 6c } //1 enable_esxi_vm_kill
		$a_00_4 = {65 6e 61 62 6c 65 5f 65 73 78 69 5f 76 6d 5f 73 6e 61 70 73 68 6f 74 5f 6b 69 6c 6c } //1 enable_esxi_vm_snapshot_kill
		$a_00_5 = {64 65 66 61 75 6c 74 5f 66 69 6c 65 5f 63 69 70 68 65 72 } //1 default_file_cipher
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}