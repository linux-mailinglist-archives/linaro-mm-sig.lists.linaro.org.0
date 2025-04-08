Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FB6A7FD5B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Apr 2025 13:01:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6199B44541
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Apr 2025 11:01:47 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by lists.linaro.org (Postfix) with ESMTPS id 929E73EBAA
	for <linaro-mm-sig@lists.linaro.org>; Tue,  8 Apr 2025 11:01:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=m6xp+iOp;
	spf=pass (lists.linaro.org: domain of dan.carpenter@linaro.org designates 209.85.128.52 as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43cfecdd8b2so42459115e9.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 08 Apr 2025 04:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744110090; x=1744714890; darn=lists.linaro.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NirbuKEOTyR2moljejzdS649GYkI8qfTa3FOlPaWlDQ=;
        b=m6xp+iOpiy/+LJWy88KYAlsykKuqcEJsYXSyRZucimDVDb79kECbM2lWzlSWdYNyAQ
         N4O0yIRwk6eWgAIOxheaXEjkBteZXXYJJnkylZPy6VjDMZsijkDy2xjbd/Zq2PEBTi3O
         tBmuRu4bOO6Mr8ZD/oAYj20hoCw5gEVOQIRldjAtgBqNK8Qpy6Op/7Vkh3aSy5/g0JQt
         X+HfAgVLC5tkqw0ycUStpD1v/lhvtnAmrr6Qp1A5uwV8dREeV6J8YmkgTszsC8RO48Ap
         6o67S2eiUdKSbhiQsvHiQRBit0WXvJHkqvPsUZZ2voRLm8pmQpBM2TzAzmvAmuH7A4ET
         wEfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744110090; x=1744714890;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NirbuKEOTyR2moljejzdS649GYkI8qfTa3FOlPaWlDQ=;
        b=dL9Qw1Wyz35cOraHbZ+euno5FO2F2PSi5xf7/eB+PRbdowmKsLbN9T6mcMfT30e/yf
         lYwMVc2fhcla0JQpRnRIthUudBwrK+XGmgCtSahOWswAOZrYwJ+HY5gdc+tCMOeveXG9
         3oLUBdlTrFpeyueMV0uRcr6W589dzWqf21/lYBHXasSgaumKkcXj27HAOrBm1UsJH9cf
         n1x4daPXqvtQtV10biLPimmkEtv8KoxjQXVOUgyD1uD3mLhyjxmS6AhkjCQoGoov1+Di
         aFadD1xlniAeeEnxYNh9dJlYzDXzmVDRdVhZdEWDOfs3ZkeaVHbobm7/c+7EhOpIFqnU
         7BFA==
X-Forwarded-Encrypted: i=1; AJvYcCX8qJtELnVS+I3sEfqCmo17hUhektvtHv+7hrm2MHJBeQ4Gz8LgDRV7OGWFKXsw92Kp3pXecokOwHB4PfRH@lists.linaro.org
X-Gm-Message-State: AOJu0YxEmZqmtk5fJvHOsBSC7LEYNQk6/rO72vYGR3+j5EVHdEaqtF+k
	U6J/oJctcs4zuYkTsSyZRmbu+/JEA7Ts/QIore9WVv/fGxG16tsBhCRfuE40l6rgtQ==
X-Gm-Gg: ASbGncusHLdkiLbnoEopDyVQsVou4Mv6utC5uc2HhrXzXhZ9g7vK5rvpH6wbHMDJehN
	5uCDN9xqMzDlaxiUPuR+jy66bn9WbwT4iFOS6xQZBZf7niqBmLqIIS/0vY0XeHVUhMsuPT8tI4W
	UKCldLnFPxkgacX4LN/ubcIHxb4qwVCbUK+Kufjo37nw5U8JKwae0+Evd8ASBXqYta0DlyGjYsq
	EmrIbPbiuo76lq/W4P4cD1Jz5T65cXXRNnaUwzrJWIGSKCAeUC0QwxL40acXrNVbBNLQDdXRFYR
	Inz+1j/8ZsmLHIbL7xVCIOTFzWmYPJxE0F1rBEYbO9x7UUaczQiwpzwtb3aX
X-Google-Smtp-Source: AGHT+IG1HG474H6q6bPpOt7xbsbQ8wAky1uvAa0teAmjbL304Djm6yn2qTXg3DoixKQK6rupsAkAwQ==
X-Received: by 2002:a05:600c:524c:b0:43c:e70d:44f0 with SMTP id 5b1f17b1804b1-43f1890857emr4294885e9.19.1744110090538;
        Tue, 08 Apr 2025 04:01:30 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-43ec169b8a3sm159770715e9.19.2025.04.08.04.01.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 04:01:30 -0700 (PDT)
Date: Tue, 8 Apr 2025 14:01:26 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Rob Clark <robdclark@chromium.org>
Message-ID: <a010a1ac-107b-4fc0-a052-9fd3706ad690@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Rspamd-Queue-Id: 929E73EBAA
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.99 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[209.85.128.52:from];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DNSWL_BLOCKED(0.00)[209.85.128.52:from,196.207.164.177:received];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.52:from];
	DWL_DNSWL_BLOCKED(0.00)[linaro.org:dkim];
	RCPT_COUNT_SEVEN(0.00)[11];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: LCFVAGATIQWTEY5CGSUCVTKOPNN7L7LZ
X-Message-ID-Hash: LCFVAGATIQWTEY5CGSUCVTKOPNN7L7LZ
X-MailFrom: dan.carpenter@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Dmitry Baryshkov <lumag@kernel.org>, Pekka Paalanen <pekka.paalanen@collabora.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] dma-buf/sw_sync: Decrement refcount on error in sw_sync_ioctl_get_deadline()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LCFVAGATIQWTEY5CGSUCVTKOPNN7L7LZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Call dma_fence_put(fence) before returning an error if
dma_fence_to_sync_pt() fails.  Use an unwind ladder at the
end of the function to do the cleanup.

Fixes: 70e67aaec2f4 ("dma-buf/sw_sync: Add fence deadline support")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
v2: style changes.

 drivers/dma-buf/sw_sync.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/dma-buf/sw_sync.c b/drivers/dma-buf/sw_sync.c
index f5905d67dedb..22a808995f10 100644
--- a/drivers/dma-buf/sw_sync.c
+++ b/drivers/dma-buf/sw_sync.c
@@ -438,15 +438,17 @@ static int sw_sync_ioctl_get_deadline(struct sync_timeline *obj, unsigned long a
 		return -EINVAL;
 
 	pt = dma_fence_to_sync_pt(fence);
-	if (!pt)
-		return -EINVAL;
+	if (!pt) {
+		ret = -EINVAL;
+		goto put_fence;
+	}
 
 	spin_lock_irqsave(fence->lock, flags);
-	if (test_bit(SW_SYNC_HAS_DEADLINE_BIT, &fence->flags)) {
-		data.deadline_ns = ktime_to_ns(pt->deadline);
-	} else {
+	if (!test_bit(SW_SYNC_HAS_DEADLINE_BIT, &fence->flags)) {
 		ret = -ENOENT;
+		goto unlock;
 	}
+	data.deadline_ns = ktime_to_ns(pt->deadline);
 	spin_unlock_irqrestore(fence->lock, flags);
 
 	dma_fence_put(fence);
@@ -458,6 +460,13 @@ static int sw_sync_ioctl_get_deadline(struct sync_timeline *obj, unsigned long a
 		return -EFAULT;
 
 	return 0;
+
+unlock:
+	spin_unlock_irqrestore(fence->lock, flags);
+put_fence:
+	dma_fence_put(fence);
+
+	return ret;
 }
 
 static long sw_sync_ioctl(struct file *file, unsigned int cmd,
-- 
2.47.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
