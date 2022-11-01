Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5D0615463
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Nov 2022 22:40:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB3AE3F5C2
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Nov 2022 21:40:48 +0000 (UTC)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	by lists.linaro.org (Postfix) with ESMTPS id 15E773E89F
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Nov 2022 21:40:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=VZJNFuV6;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.215.182 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pg1-f182.google.com with SMTP id e129so14552313pgc.9
        for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Nov 2022 14:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iWEKtw3qUiAawaOxdqPs0umv7nzkxV855xae9pF938c=;
        b=VZJNFuV6OqUqkfyPaVBqFRI+HviyopjecL9O6a9KR4Dnv8fxfloSbQqHTlU5JDSJOZ
         Pcaf0S6s8TcGkbxtKETFXAKgbzTe/IXDkokGzWw0acAPUzDDYfblLW7lLXrvM2LC0/vI
         x84dmhX0CRy3+gkufw6qBK8XWvFITUYtX0NmO61tuNL1Jjjzln3Np3G1vqLZGXwh9zId
         7OaeIm9GBk+PK8wQ+66P7wutixk0nL26IhFmix49TwTXFN+2+pWTVTT+4K5uyteDmKpn
         JuC0iT2Lrr+kGhVth0CVFVoI3rZc/YIVMeaLh2Sofc9hoEVbmuOpZEvkL+vtSlk6+Fzx
         qNUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iWEKtw3qUiAawaOxdqPs0umv7nzkxV855xae9pF938c=;
        b=xUseK8KUaxPL5JkByhlAtmkZBvgS6AcM+qc0i5ALlSMBeDO4GOEPzIVST15HF41OgF
         q6O96YybVGWrO1QHWAbSzKa+WQ0LubkPrMs2Xl8W+Y5FxVxE0MBU+IK9P7bMJJaswmKH
         bKTj7Bys+6upGFawqhCu5VvHpX5UO8qWz5I/7Xb73H2nchm/gicm1OvXsj9ld7JY6M9l
         orYWOraR6QRNHZp3KAiji4MwUBIvHNaCrBDENvk3h4LY3Gbt5JnREL9DCpTZBCmgGKzh
         r6zZHudcHXXtEfifglrk+t8uKKjx+G12SARY0DTNscYVHCOMppGyzs/Pj/iWEbePKDIh
         rXDg==
X-Gm-Message-State: ACrzQf04s0SRXSQAGCBotIET/GQeUOhvsn7Z4UExaAnCDdVzYbPyM5Tv
	OsSiY9ElHK9jSAj7pgurlfo=
X-Google-Smtp-Source: AMsMyM7F+3y0j+vNfiWFgdOKBUcgGGtop7epjSDL2dB/w16YWgkhYtADtESEPfIDnchwayqwxrOtJg==
X-Received: by 2002:a05:6a00:224c:b0:56c:40ff:7709 with SMTP id i12-20020a056a00224c00b0056c40ff7709mr21623319pfu.59.1667338831058;
        Tue, 01 Nov 2022 14:40:31 -0700 (PDT)
Received: from localhost ([2a00:79e1:abd:4a00:2703:3c72:eb1a:cffd])
        by smtp.gmail.com with ESMTPSA id y5-20020aa78f25000000b005544229b992sm6964575pfr.22.2022.11.01.14.40.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Nov 2022 14:40:30 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Tue,  1 Nov 2022 14:40:51 -0700
Message-Id: <20221101214051.159988-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --
X-Rspamd-Queue-Id: 15E773E89F
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.215.182:from];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-0.921];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,ffwll.ch,chromium.org,gmail.com,quicinc.com,linaro.org,poorly.run,amd.com,lists.linaro.org];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_TLS_LAST(0.00)[]
Message-ID-Hash: HRBDL5PSBFFY2FAIVHUQQFGO3ENWYHK5
X-Message-ID-Hash: HRBDL5PSBFFY2FAIVHUQQFGO3ENWYHK5
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, Rob Clark <robdclark@chromium.org>, Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/msm: Remove exclusive-fence hack
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HRBDL5PSBFFY2FAIVHUQQFGO3ENWYHK5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

The workaround was initially necessary due to dma_resv having only a
single exclusive fence slot, yet whe don't necessarily know what order
the gpu scheduler will schedule jobs.  Unfortunately this workaround
also has the result of forcing implicit sync, even when userspace does
not want it.

However, since commit 047a1b877ed4 ("dma-buf & drm/amdgpu: remove
dma_resv workaround") the workaround is no longer needed.  So remove
it.  This effectively reverts commit f1b3f696a084 ("drm/msm: Don't
break exclusive fence ordering")

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/msm/msm_gem_submit.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/msm/msm_gem_submit.c b/drivers/gpu/drm/msm/msm_gem_submit.c
index 5599d93ec0d2..cc48f73adadf 100644
--- a/drivers/gpu/drm/msm/msm_gem_submit.c
+++ b/drivers/gpu/drm/msm/msm_gem_submit.c
@@ -334,8 +334,7 @@ static int submit_fence_sync(struct msm_gem_submit *submit, bool no_implicit)
 		if (ret)
 			return ret;
 
-		/* exclusive fences must be ordered */
-		if (no_implicit && !write)
+		if (no_implicit)
 			continue;
 
 		ret = drm_sched_job_add_implicit_dependencies(&submit->base,
-- 
2.38.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
