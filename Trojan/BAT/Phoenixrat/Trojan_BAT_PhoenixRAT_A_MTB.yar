
rule Trojan_BAT_PhoenixRAT_A_MTB{
	meta:
		description = "Trojan:BAT/PhoenixRAT.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_01_0 = {5a 00 6c 00 78 00 4c 00 35 00 56 00 63 00 44 00 78 00 44 00 65 00 67 00 6b 00 49 00 6a 00 43 00 7a 00 66 00 76 00 31 00 4c 00 78 00 67 00 64 00 44 00 52 00 47 00 48 00 42 00 6e 00 46 00 57 00 6d 00 6d 00 56 00 66 00 53 00 42 00 6b 00 77 00 65 00 6c 00 59 00 3d 00 } //2 ZlxL5VcDxDegkIjCzfv1LxgdDRGHBnFWmmVfSBkwelY=
		$a_01_1 = {36 00 7a 00 49 00 67 00 38 00 73 00 52 00 4a 00 71 00 6d 00 42 00 71 00 6e 00 32 00 45 00 4a 00 4e 00 58 00 56 00 6c 00 72 00 67 00 3d 00 3d 00 } //2 6zIg8sRJqmBqn2EJNXVlrg==
		$a_01_2 = {70 00 6f 00 4f 00 54 00 53 00 6c 00 4b 00 33 00 4c 00 30 00 44 00 6b 00 44 00 4b 00 64 00 68 00 7a 00 4b 00 43 00 43 00 63 00 51 00 3d 00 3d 00 } //2 poOTSlK3L0DkDKdhzKCCcQ==
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2) >=6
 
}