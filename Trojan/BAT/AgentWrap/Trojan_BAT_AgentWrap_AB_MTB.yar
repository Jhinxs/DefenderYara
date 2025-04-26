
rule Trojan_BAT_AgentWrap_AB_MTB{
	meta:
		description = "Trojan:BAT/AgentWrap.AB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 09 00 00 "
		
	strings :
		$a_81_0 = {2f 74 65 64 62 75 72 6b 65 2f 43 6f 6d 6d 61 6e 64 43 61 6d 2f 6d 61 73 74 65 72 2f 43 6f 6d 6d 61 6e 64 43 61 6d 2e 65 78 65 } //1 /tedburke/CommandCam/master/CommandCam.exe
		$a_81_1 = {54 72 79 69 6e 67 20 63 72 65 61 74 65 20 73 63 72 65 65 6e 73 68 6f 74 20 66 72 6f 6d 20 63 61 6d 65 72 61 } //1 Trying create screenshot from camera
		$a_81_2 = {2f 4c 69 6d 65 72 42 6f 79 2f 68 61 63 6b 70 79 2f 6d 61 73 74 65 72 2f 6d 6f 64 75 6c 65 73 2f 61 75 64 69 6f 2e 7a 69 70 } //1 /LimerBoy/hackpy/master/modules/audio.zip
		$a_81_3 = {41 6c 6c 20 66 69 6c 65 73 20 64 65 63 72 79 70 74 65 64 20 69 6e 20 75 73 65 72 20 64 69 72 65 63 74 6f 72 79 } //1 All files decrypted in user directory
		$a_81_4 = {46 61 69 6c 65 64 20 74 6f 20 64 65 63 72 79 70 74 20 66 69 6c 65 2e 20 57 72 6f 6e 67 20 70 61 73 73 77 6f 72 64 21 } //1 Failed to decrypt file. Wrong password!
		$a_81_5 = {5c 6b 65 79 6c 6f 67 73 } //1 \keylogs
		$a_81_6 = {2f 6d 61 73 74 65 72 2f 53 74 65 61 6c 65 72 2f 53 74 65 61 6c 65 72 2f 6d 6f 64 75 6c 65 73 2f 53 6f 64 69 75 6d 2e 64 6c 6c } //1 /master/Stealer/Stealer/modules/Sodium.dll
		$a_81_7 = {2f 54 65 6c 65 67 72 61 6d 52 41 54 2f 63 6f 72 65 2f 6c 69 62 73 2f 41 75 64 69 6f 53 77 69 74 63 68 65 72 2e 41 75 64 69 6f 41 70 69 2e 64 6c 6c } //1 /TelegramRAT/core/libs/AudioSwitcher.AudioApi.dll
		$a_81_8 = {57 65 62 63 61 6d 20 6e 6f 74 20 66 6f 75 6e 64 21 } //1 Webcam not found!
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1) >=4
 
}