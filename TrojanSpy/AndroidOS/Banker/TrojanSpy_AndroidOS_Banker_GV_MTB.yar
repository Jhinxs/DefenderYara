
rule TrojanSpy_AndroidOS_Banker_GV_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/Banker.GV!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {6c 6f 67 69 63 62 61 6e 6b 62 6f 74 2f 63 72 79 70 74 6f 2f } //2 logicbankbot/crypto/
		$a_01_1 = {2f 73 65 6e 64 6d 65 73 73 61 67 65 3f 63 68 61 74 5f 69 64 3d } //1 /sendmessage?chat_id=
		$a_01_2 = {45 6e 61 62 6c 65 20 44 65 76 69 63 65 20 41 64 6d 69 6e 20 46 6f 72 20 55 70 64 61 74 65 } //1 Enable Device Admin For Update
		$a_01_3 = {66 6f 72 77 61 72 64 5f 73 6d 73 5f 61 6c 6c } //1 forward_sms_all
		$a_01_4 = {62 6f 74 2f 67 65 74 55 70 64 61 74 65 73 } //1 bot/getUpdates
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}