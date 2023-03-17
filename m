Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E08366C4304
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 07:22:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EE77C4839E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 06:22:12 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 4B2FF3F47A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Mar 2023 08:22:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=eFRtBGLR;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EB4A562226;
	Fri, 17 Mar 2023 08:22:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C360DC4339E;
	Fri, 17 Mar 2023 08:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679041350;
	bh=8O4QuVXZ8A7FPD2U3Nkc5z3et0F4wiZvDMcIjCSnRrM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=eFRtBGLRKjUcF/Fmcq6iLIf9PZnd5LDpEdzQ9XUtmPUJ6sRagbrGGRXpHaG3imHGH
	 Bq3kM6SuDzu3PbLQKYsvXgQ9ZJBXzvILzNflaVdYCFPjyb8eSaZC8pxiVXApiPx0g4
	 McOn9BZAEk+AUF2P5lJvaWoLBUqz1ssWQ5etAFp2Wwz/ADI/wifmPBDzTXscksQkQ/
	 yFjpejbFkT/DFTau934rCipSLC8TGVDmvUnPK6fVA8+qNQ3AUJdPd3tZNwQf/zgbrk
	 U84/OY2UlThW72APAY69ocE46xCcN/HptNhEl0IySSBcRxOliPNW79TLQtGTfA/zA5
	 gjipHLcERZYyw==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 17 Mar 2023 08:16:46 +0000
Message-Id: <20230317081718.2650744-6-lee@kernel.org>
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
In-Reply-To: <20230317081718.2650744-1-lee@kernel.org>
References: <20230317081718.2650744-1-lee@kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4B2FF3F47A
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org:c];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	RCPT_COUNT_SEVEN(0.00)[10];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:email,lists.freedesktop.org:email,ffwll.ch:email,linaro.org:email,dfw.source.kernel.org:rdns,dfw.source.kernel.org:helo];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,gmail.com,ffwll.ch,linaro.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[]
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UGI5C3AVGH2IBTKTY7WTDKV3T6F5DBN2
X-Message-ID-Hash: UGI5C3AVGH2IBTKTY7WTDKV3T6F5DBN2
X-Mailman-Approved-At: Wed, 22 Mar 2023 06:21:07 +0000
CC: linux-kernel@vger.kernel.org, Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 05/37] drm/ttm/ttm_bo: Provide a missing 'bulk' description and correct misnaming of 'placement'
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UGI5C3AVGH2IBTKTY7WTDKV3T6F5DBN2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

'bulk' description taken from another in the same file.

Fixes the following W=1 kernel build warning(s):

 drivers/gpu/drm/ttm/ttm_bo.c:98: warning: Function parameter or member 'bulk' not described in 'ttm_bo_set_bulk_move'
 drivers/gpu/drm/ttm/ttm_bo.c:768: warning: Function parameter or member 'placement' not described in 'ttm_bo_mem_space'
 drivers/gpu/drm/ttm/ttm_bo.c:768: warning: Excess function parameter 'proposed_placement' description in 'ttm_bo_mem_space'

Cc: Christian Koenig <christian.koenig@amd.com>
Cc: Huang Rui <ray.huang@amd.com>
Cc: David Airlie <airlied@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Sumit Semwal <sumit.semwal@linaro.org>
Cc: dri-devel@lists.freedesktop.org
Cc: linux-media@vger.kernel.org
Cc: linaro-mm-sig@lists.linaro.org
Signed-off-by: Lee Jones <lee@kernel.org>
---
 drivers/gpu/drm/ttm/ttm_bo.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index 459f1b4440daa..d056d28f8758a 100644
--- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -84,6 +84,7 @@ EXPORT_SYMBOL(ttm_bo_move_to_lru_tail);
  * ttm_bo_set_bulk_move - update BOs bulk move object
  *
  * @bo: The buffer object.
+ * @bulk: bulk move structure
  *
  * Update the BOs bulk move object, making sure that resources are added/removed
  * as well. A bulk move allows to move many resource on the LRU at once,
@@ -748,7 +749,7 @@ static int ttm_bo_mem_force_space(struct ttm_buffer_object *bo,
  *
  * @bo: Pointer to a struct ttm_buffer_object. the data of which
  * we want to allocate space for.
- * @proposed_placement: Proposed new placement for the buffer object.
+ * @placement: Proposed new placement for the buffer object.
  * @mem: A struct ttm_resource.
  * @ctx: if and how to sleep, lock buffers and alloc memory
  *
-- 
2.40.0.rc1.284.g88254d51c5-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
