Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B3EAF75E6
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Jul 2025 15:37:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 730ED44924
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Jul 2025 13:37:35 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	by lists.linaro.org (Postfix) with ESMTPS id 7B0F840B82
	for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Jul 2025 13:37:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=eqdAlADy;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=NZQA0y+r;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=eqdAlADy;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=NZQA0y+r;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 8AE131F74C;
	Thu,  3 Jul 2025 13:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1751549843; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=7KICaeDrJeLfY1Mf5rE7DMRHI64kijgY2nvrjkPcv1I=;
	b=eqdAlADyJZdFQ+my3noPoNFaan2E4PlKCOz50/iAyUKy+iWGGvylPHDXoKJNavUl3Sq1OL
	f42N9fOcys9stp7gpIFEEXlJYpBnyuWN4mkZDzc9XR3qSEDP8YG4OSt41wYbEbd73+GhBE
	azX2Xh8Ize8iuUNeiB+iT2N6twGDh4Q=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1751549843;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=7KICaeDrJeLfY1Mf5rE7DMRHI64kijgY2nvrjkPcv1I=;
	b=NZQA0y+rcGSAif1odDF5Xyekihp9yKM6sc2aA6rrb9zVOWCjNL6rcZuX0qvTnrDDIYSstL
	cIEq3o/AnEHq+TCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1751549843; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=7KICaeDrJeLfY1Mf5rE7DMRHI64kijgY2nvrjkPcv1I=;
	b=eqdAlADyJZdFQ+my3noPoNFaan2E4PlKCOz50/iAyUKy+iWGGvylPHDXoKJNavUl3Sq1OL
	f42N9fOcys9stp7gpIFEEXlJYpBnyuWN4mkZDzc9XR3qSEDP8YG4OSt41wYbEbd73+GhBE
	azX2Xh8Ize8iuUNeiB+iT2N6twGDh4Q=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1751549843;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=7KICaeDrJeLfY1Mf5rE7DMRHI64kijgY2nvrjkPcv1I=;
	b=NZQA0y+rcGSAif1odDF5Xyekihp9yKM6sc2aA6rrb9zVOWCjNL6rcZuX0qvTnrDDIYSstL
	cIEq3o/AnEHq+TCA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 16E9C13721;
	Thu,  3 Jul 2025 13:37:23 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id PJ5+ApOHZmjvUwAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Thu, 03 Jul 2025 13:37:23 +0000
Message-ID: <d81decff-35d7-402b-83b2-218aa61f6b09@suse.de>
Date: Thu, 3 Jul 2025 15:37:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bert Karwatzki <spasswolf@web.de>
References: <20250703115915.3096-1-spasswolf@web.de>
Content-Language: en-US
From: Thomas Zimmermann <tzimmermann@suse.de>
Autocrypt: addr=tzimmermann@suse.de; keydata=
 xsBNBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAHNJ1Rob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPsLAjgQTAQgAOAIb
 AwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftODH
 AAoJEGgNwR1TC3ojx1wH/0hKGWugiqDgLNXLRD/4TfHBEKmxIrmfu9Z5t7vwUKfwhFL6hqvo
 lXPJJKQpQ2z8+X2vZm/slsLn7J1yjrOsoJhKABDi+3QWWSGkaGwRJAdPVVyJMfJRNNNIKwVb
 U6B1BkX2XDKDGffF4TxlOpSQzdtNI/9gleOoUA8+jy8knnDYzjBNOZqLG2FuTdicBXblz0Mf
 vg41gd9kCwYXDnD91rJU8tzylXv03E75NCaTxTM+FBXPmsAVYQ4GYhhgFt8S2UWMoaaABLDe
 7l5FdnLdDEcbmd8uLU2CaG4W2cLrUaI4jz2XbkcPQkqTQ3EB67hYkjiEE6Zy3ggOitiQGcqp
 j//OwE0EWznS4AEIAMYmP4M/V+T5RY5at/g7rUdNsLhWv1APYrh9RQefODYHrNRHUE9eosYb
 T6XMryR9hT8XlGOYRwKWwiQBoWSDiTMo/Xi29jUnn4BXfI2px2DTXwc22LKtLAgTRjP+qbU6
 3Y0xnQN29UGDbYgyyK51DW3H0If2a3JNsheAAK+Xc9baj0LGIc8T9uiEWHBnCH+RdhgATnWW
 GKdDegUR5BkDfDg5O/FISymJBHx2Dyoklv5g4BzkgqTqwmaYzsl8UxZKvbaxq0zbehDda8lv
 hFXodNFMAgTLJlLuDYOGLK2AwbrS3Sp0AEbkpdJBb44qVlGm5bApZouHeJ/+n+7r12+lqdsA
 EQEAAcLAdgQYAQgAIAIbDBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftOH6AAoJEGgNwR1T
 C3ojVSkIALpAPkIJPQoURPb1VWjh34l0HlglmYHvZszJWTXYwavHR8+k6Baa6H7ufXNQtThR
 yIxJrQLW6rV5lm7TjhffEhxVCn37+cg0zZ3j7zIsSS0rx/aMwi6VhFJA5hfn3T0TtrijKP4A
 SAQO9xD1Zk9/61JWk8OysuIh7MXkl0fxbRKWE93XeQBhIJHQfnc+YBLprdnxR446Sh8Wn/2D
 Ya8cavuWf2zrB6cZurs048xe0UbSW5AOSo4V9M0jzYI4nZqTmPxYyXbm30Kvmz0rYVRaitYJ
 4kyYYMhuULvrJDMjZRvaNe52tkKAvMevcGdt38H4KSVXAylqyQOW5zvPc4/sq9c=
In-Reply-To: <20250703115915.3096-1-spasswolf@web.de>
X-Spam-Level: 
X-Spam-Flag: NO
X-Spam-Score: -3.20
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7B0F840B82
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.90 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.223.131/32];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:29298, ipnet:195.135.223.0/24, country:DE];
	RCPT_COUNT_TWELVE(0.00)[12];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[web.de];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[suse.de:dkim,suse.de:mid,smtp-out2.suse.de:rdns,smtp-out2.suse.de:helo];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Action: no action
Message-ID-Hash: R2NDVYU7KINIOMJMYJ2N764DXJRJD57A
X-Message-ID-Hash: R2NDVYU7KINIOMJMYJ2N764DXJRJD57A
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-next@vger.kernel.org, Anusha Srivatsa <asrivats@redhat.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Warnings in next-20250703 caused by commit 582111e630f5
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R2NDVYU7KINIOMJMYJ2N764DXJRJD57A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi

Am 03.07.25 um 13:59 schrieb Bert Karwatzki:
> When booting next-20250703 on my Msi Alpha 15 Laptop running debian sid (last
> updated 20250703) I get a several warnings of the following kind:
>
>      [    8.702999] [   T1628] ------------[ cut here ]------------
>      [    8.703001] [   T1628] WARNING: drivers/gpu/drm/drm_gem.c:287 at drm_gem_object_handle_put_unlocked+0xaa/0xe0, CPU#14: Xorg/1628

Well, that didn't take long to blow up. Thanks for reporting the bug.

I have an idea how to fix this, but it would likely just trigger the 
next issue.

Christian, can we revert this patch, and also the other patches that 
switch from import_attach->dmabuf to ->dma_buf that cased the problem?

Best regards
Thomas

>      [    8.703007] [   T1628] Modules linked in: snd_seq_dummy snd_hrtimer snd_seq_midi snd_seq_midi_event snd_rawmidi snd_seq snd_seq_device rfcomm bnep nls_ascii nls_cp437 vfat fat snd_ctl_led snd_hda_codec_realtek snd_hda_codec_generic snd_hda_scodec_component snd_hda_codec_hdmi snd_hda_intel btusb snd_intel_dspcfg btrtl btintel snd_hda_codec uvcvideo snd_soc_dmic snd_acp3x_pdm_dma btbcm snd_acp3x_rn btmtk snd_hwdep videobuf2_vmalloc snd_soc_core snd_hda_core videobuf2_memops snd_pcm_oss uvc videobuf2_v4l2 bluetooth snd_mixer_oss videodev snd_pcm snd_rn_pci_acp3x videobuf2_common snd_acp_config snd_timer msi_wmi ecdh_generic snd_soc_acpi ecc mc sparse_keymap snd wmi_bmof edac_mce_amd k10temp soundcore snd_pci_acp3x ccp ac battery button joydev hid_sensor_accel_3d hid_sensor_prox hid_sensor_als hid_sensor_magn_3d hid_sensor_gyro_3d hid_sensor_trigger industrialio_triggered_buffer kfifo_buf industrialio hid_sensor_iio_common amd_pmc evdev mt7921e mt7921_common mt792x_lib mt76_con
 nac_lib mt76 mac80211 libarc4 cfg80211 rfkill msr fuse
>      [    8.703056] [   T1628]  nvme_fabrics efi_pstore configfs efivarfs autofs4 ext4 mbcache jbd2 usbhid amdgpu drm_client_lib i2c_algo_bit drm_ttm_helper ttm drm_panel_backlight_quirks drm_exec drm_suballoc_helper amdxcp drm_buddy xhci_pci gpu_sched xhci_hcd drm_display_helper hid_sensor_hub hid_multitouch mfd_core hid_generic drm_kms_helper psmouse i2c_hid_acpi nvme usbcore amd_sfh i2c_hid hid cec serio_raw nvme_core r8169 crc16 i2c_piix4 usb_common i2c_smbus i2c_designware_platform i2c_designware_core
>      [    8.703082] [   T1628] CPU: 14 UID: 1000 PID: 1628 Comm: Xorg Not tainted 6.16.0-rc4-next-20250703-master #127 PREEMPT_{RT,(full)}
>      [    8.703085] [   T1628] Hardware name: Micro-Star International Co., Ltd. Alpha 15 B5EEK/MS-158L, BIOS E158LAMS.10F 11/11/2024
>      [    8.703086] [   T1628] RIP: 0010:drm_gem_object_handle_put_unlocked+0xaa/0xe0
>      [    8.703088] [   T1628] Code: c7 f6 8a ff 48 89 ef e8 94 d4 2e 00 eb d8 48 8b 43 08 48 8d b8 d8 06 00 00 e8 52 78 2b 00 c7 83 08 01 00 00 00 00 00 00 eb 98 <0f> 0b 5b 5d e9 98 f6 8a ff 48 8b 83 68 01 00 00 48 8b 00 48 85 c0
>      [    8.703089] [   T1628] RSP: 0018:ffffb8e8c7fbfb00 EFLAGS: 00010246
>      [    8.703091] [   T1628] RAX: 0000000000000000 RBX: 0000000000000001 RCX: 0000000000000000
>      [    8.703092] [   T1628] RDX: 0000000000000000 RSI: ffff94cdc062b478 RDI: ffff94ce71390448
>      [    8.703093] [   T1628] RBP: ffff94ce14780010 R08: ffff94cdc062b618 R09: ffff94ce14780278
>      [    8.703094] [   T1628] R10: 0000000000000001 R11: ffff94cdc062b478 R12: ffff94ce14780010
>      [    8.703095] [   T1628] R13: 0000000000000007 R14: 0000000000000004 R15: ffff94ce14780010
>      [    8.703096] [   T1628] FS:  00007fc164276b00(0000) GS:ffff94dcb49cf000(0000) knlGS:0000000000000000
>      [    8.703097] [   T1628] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>      [    8.703098] [   T1628] CR2: 00005647ccd53008 CR3: 000000012533f000 CR4: 0000000000750ef0
>      [    8.703099] [   T1628] PKRU: 55555554
>      [    8.703100] [   T1628] Call Trace:
>      [    8.703101] [   T1628]  <TASK>
>      [    8.703104] [   T1628]  drm_gem_fb_destroy+0x27/0x50 [drm_kms_helper]
>      [    8.703113] [   T1628]  __drm_atomic_helper_plane_destroy_state+0x1a/0xa0 [drm_kms_helper]
>      [    8.703119] [   T1628]  drm_atomic_helper_plane_destroy_state+0x10/0x20 [drm_kms_helper]
>      [    8.703124] [   T1628]  drm_atomic_state_default_clear+0x1c0/0x2e0
>      [    8.703127] [   T1628]  __drm_atomic_state_free+0x6c/0xb0
>      [    8.703129] [   T1628]  drm_atomic_helper_disable_plane+0x92/0xe0 [drm_kms_helper]
>      [    8.703135] [   T1628]  drm_mode_cursor_universal+0xf2/0x2a0
>      [    8.703140] [   T1628]  drm_mode_cursor_common.part.0+0x9c/0x1e0
>      [    8.703144] [   T1628]  ? drm_mode_setplane+0x320/0x320
>      [    8.703146] [   T1628]  drm_mode_cursor_ioctl+0x8a/0xa0
>      [    8.703148] [   T1628]  drm_ioctl_kernel+0xa1/0xf0
>      [    8.703151] [   T1628]  drm_ioctl+0x26a/0x510
>      [    8.703153] [   T1628]  ? drm_mode_setplane+0x320/0x320
>      [    8.703155] [   T1628]  ? srso_alias_return_thunk+0x5/0xfbef5
>      [    8.703157] [   T1628]  ? rt_spin_unlock+0x12/0x40
>      [    8.703159] [   T1628]  ? do_setitimer+0x185/0x1d0
>      [    8.703161] [   T1628]  ? srso_alias_return_thunk+0x5/0xfbef5
>      [    8.703164] [   T1628]  amdgpu_drm_ioctl+0x46/0x90 [amdgpu]
>      [    8.703283] [   T1628]  __x64_sys_ioctl+0x91/0xe0
>      [    8.703286] [   T1628]  do_syscall_64+0x65/0xfc0
>      [    8.703289] [   T1628]  entry_SYSCALL_64_after_hwframe+0x55/0x5d
>      [    8.703291] [   T1628] RIP: 0033:0x7fc1645f78db
>      [    8.703292] [   T1628] Code: 00 48 89 44 24 18 31 c0 48 8d 44 24 60 c7 04 24 10 00 00 00 48 89 44 24 08 48 8d 44 24 20 48 89 44 24 10 b8 10 00 00 00 0f 05 <89> c2 3d 00 f0 ff ff 77 1c 48 8b 44 24 18 64 48 2b 04 25 28 00 00
>      [    8.703294] [   T1628] RSP: 002b:00007ffd75bce430 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
>      [    8.703295] [   T1628] RAX: ffffffffffffffda RBX: 000056224e896ea0 RCX: 00007fc1645f78db
>      [    8.703296] [   T1628] RDX: 00007ffd75bce4c0 RSI: 00000000c01c64a3 RDI: 000000000000000f
>      [    8.703297] [   T1628] RBP: 00007ffd75bce4c0 R08: 0000000000000100 R09: 0000562210547ab0
>      [    8.703298] [   T1628] R10: 000000000000004c R11: 0000000000000246 R12: 00000000c01c64a3
>      [    8.703298] [   T1628] R13: 000000000000000f R14: 0000000000000000 R15: 000056224e5c1cd0
>      [    8.703302] [   T1628]  </TASK>
>      [    8.703303] [   T1628] ---[ end trace 0000000000000000 ]---
>
> As the warnings do not occur in next-20250702, I looked at the commits given by
> $ git log --oneline next-20250702..next-20250703 drivers/gpu/drm
> to search for a culprit. So I reverted the most likely candidate,
> commit 582111e630f5 ("drm/gem: Acquire references on GEM handles for framebuffers"),
> in next-20250703 and the warnings disappeared.
> This is the hardware I used:
> $ lspci
> 00:00.0 Host bridge: Advanced Micro Devices, Inc. [AMD] Renoir/Cezanne Root Complex
> 00:00.2 IOMMU: Advanced Micro Devices, Inc. [AMD] Renoir/Cezanne IOMMU
> 00:01.0 Host bridge: Advanced Micro Devices, Inc. [AMD] Renoir PCIe Dummy Host Bridge
> 00:01.1 PCI bridge: Advanced Micro Devices, Inc. [AMD] Renoir PCIe GPP Bridge
> 00:02.0 Host bridge: Advanced Micro Devices, Inc. [AMD] Renoir PCIe Dummy Host Bridge
> 00:02.1 PCI bridge: Advanced Micro Devices, Inc. [AMD] Renoir/Cezanne PCIe GPP Bridge
> 00:02.2 PCI bridge: Advanced Micro Devices, Inc. [AMD] Renoir/Cezanne PCIe GPP Bridge
> 00:02.3 PCI bridge: Advanced Micro Devices, Inc. [AMD] Renoir/Cezanne PCIe GPP Bridge
> 00:02.4 PCI bridge: Advanced Micro Devices, Inc. [AMD] Renoir/Cezanne PCIe GPP Bridge
> 00:08.0 Host bridge: Advanced Micro Devices, Inc. [AMD] Renoir PCIe Dummy Host Bridge
> 00:08.1 PCI bridge: Advanced Micro Devices, Inc. [AMD] Renoir Internal PCIe GPP Bridge to Bus
> 00:14.0 SMBus: Advanced Micro Devices, Inc. [AMD] FCH SMBus Controller (rev 51)
> 00:14.3 ISA bridge: Advanced Micro Devices, Inc. [AMD] FCH LPC Bridge (rev 51)
> 00:18.0 Host bridge: Advanced Micro Devices, Inc. [AMD] Cezanne Data Fabric; Function 0
> 00:18.1 Host bridge: Advanced Micro Devices, Inc. [AMD] Cezanne Data Fabric; Function 1
> 00:18.2 Host bridge: Advanced Micro Devices, Inc. [AMD] Cezanne Data Fabric; Function 2
> 00:18.3 Host bridge: Advanced Micro Devices, Inc. [AMD] Cezanne Data Fabric; Function 3
> 00:18.4 Host bridge: Advanced Micro Devices, Inc. [AMD] Cezanne Data Fabric; Function 4
> 00:18.5 Host bridge: Advanced Micro Devices, Inc. [AMD] Cezanne Data Fabric; Function 5
> 00:18.6 Host bridge: Advanced Micro Devices, Inc. [AMD] Cezanne Data Fabric; Function 6
> 00:18.7 Host bridge: Advanced Micro Devices, Inc. [AMD] Cezanne Data Fabric; Function 7
> 01:00.0 PCI bridge: Advanced Micro Devices, Inc. [AMD/ATI] Navi 10 XL Upstream Port of PCI Express Switch (rev c3)
> 02:00.0 PCI bridge: Advanced Micro Devices, Inc. [AMD/ATI] Navi 10 XL Downstream Port of PCI Express Switch
> 03:00.0 Display controller: Advanced Micro Devices, Inc. [AMD/ATI] Navi 23 [Radeon RX 6600/6600 XT/6600M] (rev c3)
> 03:00.1 Audio device: Advanced Micro Devices, Inc. [AMD/ATI] Navi 21/23 HDMI/DP Audio Controller
> 04:00.0 Network controller: MEDIATEK Corp. MT7921K (RZ608) Wi-Fi 6E 80MHz
> 05:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8111/8168/8211/8411 PCI Express Gigabit Ethernet Controller (rev 15)
> 06:00.0 Non-Volatile memory controller: Kingston Technology Company, Inc. KC3000/FURY Renegade NVMe SSD [E18] (rev 01)
> 07:00.0 Non-Volatile memory controller: Micron/Crucial Technology P1 NVMe PCIe SSD[Frampton] (rev 03)
> 08:00.0 VGA compatible controller: Advanced Micro Devices, Inc. [AMD/ATI] Cezanne [Radeon Vega Series / Radeon Vega Mobile Series] (rev c5)
> 08:00.1 Audio device: Advanced Micro Devices, Inc. [AMD/ATI] Renoir Radeon High Definition Audio Controller
> 08:00.2 Encryption controller: Advanced Micro Devices, Inc. [AMD] Family 17h (Models 10h-1fh) Platform Security Processor
> 08:00.3 USB controller: Advanced Micro Devices, Inc. [AMD] Renoir/Cezanne USB 3.1
> 08:00.4 USB controller: Advanced Micro Devices, Inc. [AMD] Renoir/Cezanne USB 3.1
> 08:00.5 Multimedia controller: Advanced Micro Devices, Inc. [AMD] Audio Coprocessor (rev 01)
> 08:00.6 Audio device: Advanced Micro Devices, Inc. [AMD] Family 17h/19h/1ah HD Audio Controller
> 08:00.7 Signal processing controller: Advanced Micro Devices, Inc. [AMD] Sensor Fusion Hub
>
>
> Bert Karwatzki

-- 
--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstrasse 146, 90461 Nuernberg, Germany
GF: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moerman
HRB 36809 (AG Nuernberg)

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
