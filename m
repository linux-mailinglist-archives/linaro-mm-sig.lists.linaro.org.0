Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E287535043
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 May 2022 15:56:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 072593F061
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 May 2022 13:56:19 +0000 (UTC)
Received: from sender4-of-o54.zoho.com (sender4-of-o54.zoho.com [136.143.188.54])
	by lists.linaro.org (Postfix) with ESMTPS id 488363EC05
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 May 2022 19:09:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1653505760; cv=none;
	d=zohomail.com; s=zohoarc;
	b=bgLDYqaveJdzb2Qx0GE9mfATAHdQWjJAq8Ak78bUrrCuMTgFH/SQwSSIBXg7fkNNK3vpbx/Wek+u26om4F4IW5g0ksqhXNjkbnFM874fHkMl8SeRXXT8PCA3fPvBrNuW/GdHVwp6xeOhhLh+7WJKaK1ugAR3surC3X958GY/J8A=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1653505760; h=Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To;
	bh=VKYnTaOCGfhBc578jkFhugpweFkbGpTsCSjATGWkyhw=;
	b=NoXWxYoVP2LGAYMg5j3yIe99tbYG+75YUQ4wliVM6fII36Fk8dFdieMkfdBApBJHP/Qv8JBlW7ODu2NwdLH0LExol0fc+Tk5XMQNFbDsHEbEB91bh5Q/trO4157it2GakWfco8PJkpqkdH1n6TVcufzthiAcGCkfaPGBckn5OC0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=mitchellaugustin.com;
	spf=pass  smtp.mailfrom=kernel@mitchellaugustin.com;
	dmarc=pass header.from=<kernel@mitchellaugustin.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1653505760;
	s=zoho; d=mitchellaugustin.com; i=kernel@mitchellaugustin.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:MIME-Version:Content-Transfer-Encoding:Reply-To;
	bh=VKYnTaOCGfhBc578jkFhugpweFkbGpTsCSjATGWkyhw=;
	b=hUmu8a1QYmKsKXARKUzyVpWlvy+wqWAXkyJfY14WU2KxFZQ6YyTEDiw6ZAAjbyKA
	m+d2DiGvIfG69dB/2Jalr7WHuPQdj8G/XglEaJW7ViP6GwxiShHFcwZfLNlXjce0z1i
	xQZxYdMuXE71OQ56eoPz7UHP9JA72DHRcM7pwGYE=
Received: from localhost.localdomain (static-68-235-50-228.cust.tzulo.com [68.235.50.228]) by mx.zohomail.com
	with SMTPS id 1653505759009259.68636689044604; Wed, 25 May 2022 12:09:19 -0700 (PDT)
From: Mitchell Augustin <kernel@mitchellaugustin.com>
To: alexander.deucher@amd.com,
	christian.koenig@amd.com,
	Xinhui.Pan@amd.com,
	airlied@linux.ie,
	daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	andrey.grodzovsky@amd.com,
	guchun.chen@amd.com,
	evan.quan@amd.com,
	kevin1.wang@amd.com,
	lang.yu@amd.com,
	shaoyun.liu@amd.com
Date: Wed, 25 May 2022 14:09:14 -0500
Message-Id: <20220525190914.60544-1-kernel@mitchellaugustin.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-ZohoMailClient: External
X-MailFrom: kernel@mitchellaugustin.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PKFWWPZSH5U5J75XA6YQO5SPQZ6UJVUM
X-Message-ID-Hash: PKFWWPZSH5U5J75XA6YQO5SPQZ6UJVUM
X-Mailman-Approved-At: Thu, 26 May 2022 13:56:15 +0000
CC: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] amdgpu: amdgpu_device.c: Removed trailing whitespace
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PKFWWPZSH5U5J75XA6YQO5SPQZ6UJVUM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Removed trailing whitespace from end of line in amdgpu_device.c

Signed-off-by: Mitchell Augustin <kernel@mitchellaugustin.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
index 49f734137f15..c531c05163cf 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
@@ -3365,7 +3365,7 @@ bool amdgpu_device_asic_has_dc_support(enum amd_asic_type asic_type)
  */
 bool amdgpu_device_has_dc_support(struct amdgpu_device *adev)
 {
-	if (amdgpu_sriov_vf(adev) || 
+	if (amdgpu_sriov_vf(adev) ||
 	    adev->enable_virtual_display ||
 	    (adev->harvest_ip_mask & AMD_HARVEST_IP_DMU_MASK))
 		return false;
@@ -5762,7 +5762,7 @@ int amdgpu_in_reset(struct amdgpu_device *adev)
 {
 	return atomic_read(&adev->reset_domain->in_gpu_reset);
 	}
-	
+
 /**
  * amdgpu_device_halt() - bring hardware to some kind of halt state
  *
-- 
2.36.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
