
rule TrojanSpy_BAT_Stelega_VPA_MTB{
	meta:
		description = "TrojanSpy:BAT/Stelega.VPA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 13 00 00 "
		
	strings :
		$a_01_0 = {50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 20 00 4d 00 65 00 6e 00 75 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 5c 00 52 00 53 00 2e 00 62 00 61 00 74 00 } //1 ProgramData\Microsoft\Windows\Start Menu\Programs\RS.bat
		$a_01_1 = {63 00 68 00 63 00 70 00 20 00 36 00 35 00 30 00 30 00 31 00 } //1 chcp 65001
		$a_81_2 = {24 36 63 32 62 37 35 38 37 2d 39 30 34 64 2d 34 31 37 61 2d 62 61 61 61 2d 66 37 31 63 38 36 30 62 63 66 64 31 } //1 $6c2b7587-904d-417a-baaa-f71c860bcfd1
		$a_81_3 = {44 47 56 42 65 62 69 64 61 5f 43 65 6c 6c 43 6c 69 63 6b } //1 DGVBebida_CellClick
		$a_81_4 = {44 47 56 43 65 72 76 65 7a 61 73 5f 43 65 6c 6c 43 6c 69 63 6b } //1 DGVCervezas_CellClick
		$a_81_5 = {4d 65 6e 75 56 69 72 74 75 61 6c 2e 46 43 53 74 61 72 74 43 2e 72 65 73 6f 75 72 63 65 73 } //1 MenuVirtual.FCStartC.resources
		$a_81_6 = {4d 65 6e 75 56 69 72 74 75 61 6c 2e 46 72 6d 63 6f 6d 69 64 61 2e 72 65 73 6f 75 72 63 65 73 } //1 MenuVirtual.Frmcomida.resources
		$a_81_7 = {4d 65 6e 75 56 69 72 74 75 61 6c 2e 46 72 6d 43 61 6e 74 69 64 61 64 2e 72 65 73 6f 75 72 63 65 73 } //1 MenuVirtual.FrmCantidad.resources
		$a_81_8 = {4d 65 6e 75 56 69 72 74 75 61 6c 2e 44 69 6e 65 72 4d 65 6e 75 46 6f 72 6d 2e 72 65 73 6f 75 72 63 65 73 } //1 MenuVirtual.DinerMenuForm.resources
		$a_81_9 = {4d 65 6e 75 56 69 72 74 75 61 6c 2e 46 72 6d 4f 72 64 65 6e 2e 72 65 73 6f 75 72 63 65 73 } //1 MenuVirtual.FrmOrden.resources
		$a_81_10 = {4d 65 6e 75 56 69 72 74 75 61 6c 2e 46 72 6d 43 6f 6d 65 6e 74 61 72 2e 72 65 73 6f 75 72 63 65 73 } //1 MenuVirtual.FrmComentar.resources
		$a_81_11 = {4d 65 6e 75 56 69 72 74 75 61 6c 2e 49 43 75 73 74 6f 6d 41 74 74 72 69 62 75 74 65 50 72 6f 76 69 64 65 72 2e 72 65 73 6f 75 72 63 65 73 } //1 MenuVirtual.ICustomAttributeProvider.resources
		$a_81_12 = {4d 65 6e 75 56 69 72 74 75 61 6c 2e 66 72 6d 62 65 62 69 64 61 73 2e 72 65 73 6f 75 72 63 65 73 } //1 MenuVirtual.frmbebidas.resources
		$a_81_13 = {4d 65 6e 75 56 69 72 74 75 61 6c 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 MenuVirtual.Resources.resources
		$a_81_14 = {4d 65 6e 75 56 69 72 74 75 61 6c 2e 4f 70 63 69 6f 6e 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 MenuVirtual.Opciones.resources
		$a_81_15 = {4d 65 6e 75 56 69 72 74 75 61 6c 2e 46 72 6d 50 6f 73 74 72 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 MenuVirtual.FrmPostres.resources
		$a_81_16 = {4d 65 6e 75 56 69 72 74 75 61 6c 2e 50 4e 5f 4d 65 6e 75 2e 72 65 73 6f 75 72 63 65 73 } //1 MenuVirtual.PN_Menu.resources
		$a_81_17 = {4d 65 6e 75 56 69 72 74 75 61 6c 2e 46 72 6d 4d 65 6e 75 2e 72 65 73 6f 75 72 63 65 73 } //1 MenuVirtual.FrmMenu.resources
		$a_81_18 = {4d 65 6e 75 56 69 72 74 75 61 6c 2e 42 74 6e 4d 65 6e 75 2e 72 65 73 6f 75 72 63 65 73 } //1 MenuVirtual.BtnMenu.resources
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_81_14  & 1)*1+(#a_81_15  & 1)*1+(#a_81_16  & 1)*1+(#a_81_17  & 1)*1+(#a_81_18  & 1)*1) >=19
 
}