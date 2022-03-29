Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B53594EC4B4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 14:42:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ECB313F0C6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 12:42:35 +0000 (UTC)
Received: from nksmu.kylinos.cn (mailgw.kylinos.cn [123.150.8.42])
	by lists.linaro.org (Postfix) with ESMTPS id 7B8E03EA29
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 05:27:06 +0000 (UTC)
X-UUID: d4b4f838eda744c09a499bf8ad02f325-20220329
X-Spam-Fingerprint: 0
X-GW-Reason: 11101
X-Policy-Incident: 5pS25Lu25Lq66LaF6L+HNeS6uumcgOimgeWuoeaguA==
X-Content-Feature: 
	ica/max.line-size 167
	audit/email.address 1
	meta/cnt.alert 1
X-UUID: d4b4f838eda744c09a499bf8ad02f325-20220329
Received: from cs2c.com.cn [(172.17.111.24)] by nksmu.kylinos.cn
	(envelope-from <lizhenneng@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1875178512; Tue, 29 Mar 2022 11:05:39 +0800
X-ns-mid: postfix-624277B6-7434123726
Received: from localhost.localdomain (unknown [172.20.108.41])
	by cs2c.com.cn (NSMail) with ESMTPA id 4A474383C640;
	Tue, 29 Mar 2022 03:06:30 +0000 (UTC)
From: Zhenneng Li <lizhenneng@kylinos.cn>
To: Alex Deucher <alexander.deucher@amd.com>
Date: Tue, 29 Mar 2022 11:05:47 +0800
Message-Id: <20220329030547.286265-1-lizhenneng@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MailFrom: lizhenneng@kylinos.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZJJR45X64O3MGBG24TWAUR2ICFW5WWJZ
X-Message-ID-Hash: ZJJR45X64O3MGBG24TWAUR2ICFW5WWJZ
X-Mailman-Approved-At: Wed, 30 Mar 2022 12:41:01 +0000
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Pan Xinhui <Xinhui.Pan@amd.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Andrey Grodzovsky <andrey.grodzovsky@amd.com>, Evan Quan <evan.quan@amd.com>, Guchun Chen <guchun.chen@amd.com>, Jack Zhang <Jack.Zhang1@amd.com>, Lijo Lazar <lijo.lazar@amd.com>, Kevin Wang <kevin1.wang@amd.com>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Zhenneng Li <lizhenneng@kylinos.cn>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH next,v2] kernel: Add 1 ms delay to init handler to fix s3 resume hang
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZJJR45X64O3MGBG24TWAUR2ICFW5WWJZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This is a workaround for s3 resume hang for r7 340(amdgpu).
When we test s3 with r7 340 on arm64 platform, graphics card will hang up,
the error message are as follows:
Mar  4 01:14:11 greatwall-GW-XXXXXX-XXX kernel: [    1.599374][ 7] [  T291] amdgpu 0000:02:00.0: fb0: amdgpudrmfb frame buffer device
Mar  4 01:14:11 greatwall-GW-XXXXXX-XXX kernel: [    1.612869][ 7] [  T291] [drm:amdgpu_device_ip_late_init [amdgpu]] *ERROR* late_init of IP block <si_dpm> failed -22
Mar  4 01:14:11 greatwall-GW-XXXXXX-XXX kernel: [    1.623392][ 7] [  T291] amdgpu 0000:02:00.0: amdgpu_device_ip_late_init failed
Mar  4 01:14:11 greatwall-GW-XXXXXX-XXX kernel: [    1.630696][ 7] [  T291] amdgpu 0000:02:00.0: Fatal error during GPU init
Mar  4 01:14:11 greatwall-GW-XXXXXX-XXX kernel: [    1.637477][ 7] [  T291] [drm] amdgpu: finishing device.

On the following hardware:
lspci -nn -s 05:00.0
05:00.0 VGA compatible controller [0300]: Advanced Micro Devices, Inc. [AMD/ATI] Oland [Radeon HD 8570 / R7 240/340 / Radeon 520 OEM] [1002:6611] (rev 87)

Signed-off-by: Zhenneng Li <lizhenneng@kylinos.cn>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
index 3987ecb24ef4..1eced991b5b2 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
@@ -2903,6 +2903,8 @@ static void amdgpu_device_delayed_init_work_handler(struct work_struct *work)
 		container_of(work, struct amdgpu_device, delayed_init_work.work);
 	int r;
 
+	mdelay(1);
+
 	r = amdgpu_ib_ring_tests(adev);
 	if (r)
 		DRM_ERROR("ib ring test failed (%d).\n", r);
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
