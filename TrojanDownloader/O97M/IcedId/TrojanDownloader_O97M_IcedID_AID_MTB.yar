
rule TrojanDownloader_O97M_IcedID_AID_MTB{
	meta:
		description = "TrojanDownloader:O97M/IcedID.AID!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0f 00 0f 00 0f 00 00 "
		
	strings :
		$a_01_0 = {50 75 62 6c 69 63 20 53 75 62 20 43 6f 6d 6d 61 6e 64 42 75 74 74 6f 6e 31 5f 43 6c 69 63 6b 28 29 } //1 Public Sub CommandButton1_Click()
		$a_01_1 = {2e 65 78 65 63 20 66 72 6d 2e 63 6d 64 42 75 74 74 6f 6e 31 2e 54 61 67 20 26 20 22 20 22 20 26 20 66 72 6d 2e 63 6d 64 42 75 74 74 6f 6e 31 2e 63 61 70 74 69 6f 6e } //1 .exec frm.cmdButton1.Tag & " " & frm.cmdButton1.caption
		$a_01_2 = {3d 20 66 72 6d 2e 63 6d 64 42 75 74 74 6f 6e 31 2e 63 61 70 74 69 6f 6e } //1 = frm.cmdButton1.caption
		$a_01_3 = {43 61 6c 6c 20 66 72 6d 2e 43 6f 6d 6d 61 6e 64 42 75 74 74 6f 6e 31 5f 43 6c 69 63 6b } //1 Call frm.CommandButton1_Click
		$a_01_4 = {3d 20 22 3c 64 69 76 20 69 64 3d 27 63 6f 6e 74 65 6e 74 27 3e 64 6d 46 79 49 } //1 = "<div id='content'>dmFyI
		$a_01_5 = {2e 63 6c 6f 73 65 3c 2f 73 63 72 69 70 74 3e } //1 .close</script>
		$a_01_6 = {3c 64 69 76 20 69 64 3d 27 74 61 62 6c 65 27 3e 30 31 32 33 34 35 36 37 38 39 2b 2f 3c 2f 64 69 76 3e 3c 73 63 72 69 70 74 20 6c 61 6e 67 75 61 67 65 3d 27 6a 61 76 61 73 63 72 69 70 74 27 3e } //1 <div id='table'>0123456789+/</div><script language='javascript'>
		$a_01_7 = {76 61 72 20 77 3d 53 74 72 69 6e 67 2e 66 72 6f 6d 43 68 61 72 43 6f 64 65 } //1 var w=String.fromCharCode
		$a_03_8 = {43 6c 6f 73 65 20 23 31 90 0c 02 00 45 6e 64 20 53 75 62 } //1
		$a_03_9 = {45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 0c 02 00 46 75 6e 63 74 69 6f 6e } //1
		$a_01_10 = {50 72 69 6e 74 20 23 31 2c } //1 Print #1,
		$a_01_11 = {66 6f 72 28 78 3d 30 3b 78 3c 4c 3b 78 2b 2b } //1 for(x=0;x<L;x++
		$a_01_12 = {73 70 6c 69 74 28 27 27 29 2e 72 65 76 65 72 73 65 28 29 2e 6a 6f 69 6e 28 27 27 29 3b } //1 split('').reverse().join('');
		$a_01_13 = {54 69 6d 65 6f 75 74 20 3d 20 36 30 30 30 30 } //1 Timeout = 60000
		$a_01_14 = {53 75 62 20 61 75 74 6f 6f 70 65 6e 28 29 } //1 Sub autoopen()
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_03_8  & 1)*1+(#a_03_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1) >=15
 
}