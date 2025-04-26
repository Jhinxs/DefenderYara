
rule TrojanSpy_Win32_Bancos_ADN{
	meta:
		description = "TrojanSpy:Win32/Bancos.ADN,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_01_0 = {2f 63 61 6e 63 65 6c 61 72 5f 6f 70 5f 70 63 5f 74 72 61 76 61 64 6f 2e 70 68 70 3f 26 6e 61 6d 65 70 63 3d } //1 /cancelar_op_pc_travado.php?&namepc=
		$a_01_1 = {2f 73 65 74 62 6c 6f 71 75 65 69 6f 2e 70 68 70 3f 26 69 64 70 63 3d } //1 /setbloqueio.php?&idpc=
		$a_01_2 = {2f 63 61 64 5f 66 61 63 65 2e 70 68 70 3f 26 6c 6f 67 69 6e 3d } //1 /cad_face.php?&login=
		$a_01_3 = {2f 63 61 64 5f 65 71 75 69 66 61 78 2e 70 68 70 3f 26 75 73 65 72 3d } //1 /cad_equifax.php?&user=
		$a_01_4 = {26 73 74 61 74 75 73 3d 55 73 75 61 72 69 6f 5f 73 65 6d 5f 70 65 72 6d 69 73 73 61 6f } //1 &status=Usuario_sem_permissao
		$a_01_5 = {26 73 65 6e 68 61 3d 00 } //1 猦湥慨=
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=4
 
}