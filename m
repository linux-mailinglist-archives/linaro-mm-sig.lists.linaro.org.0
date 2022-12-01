Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AB03B64C8EB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 13:23:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BC7B53EF64
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 12:23:10 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	by lists.linaro.org (Postfix) with ESMTPS id DCF723EA4F
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Dec 2022 01:55:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=PXW7kMdC;
	spf=pass (lists.linaro.org: domain of zys.zljxml@gmail.com designates 209.85.210.174 as permitted sender) smtp.mailfrom=zys.zljxml@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id w129so513642pfb.5
        for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Nov 2022 17:55:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=C8hpJ+dhKLwcq6yGKXl9JYCXBoLbIiY9R+toMXs7xSY=;
        b=PXW7kMdCN3ai+CI0xhP8dUH6+O2YzxU2IhSV5eUBFDR4EwrNFfWs9iu7/OUr82Un6v
         Xf2FxRIXxOn71D8Csqze226LrlxI2ZYZgVWHq8dAdMV0Yr3bRyOZ3UbFb7rA0qIdsFHi
         SKiZSi5nqW4qutJZNdS9mLQZykYBw+dVCuW3lFaN4P+n8nvRhHBnAo5t7BnJeMlX0P7p
         vNxhz5gBRw/Qwhol3ns2Y4F1VMvh6Qg7GefnnMVokuX+Lo3UTT72XDF/yqHTLJogFzSl
         VRzU5lLsVhFSl0PojqcwKhDkrjQEXpRdONrkgc+bD27rsP26wYC2DJxHIn7jC7CiOUE9
         iD5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C8hpJ+dhKLwcq6yGKXl9JYCXBoLbIiY9R+toMXs7xSY=;
        b=vDYr4/6O+6fhwsnlmZG/5+kKhQmfRXbHgavQtuYhn/iMW9MPuK7COvvyJYCM2KaUyM
         iUCmX5+Nb9NwaWjm3vMvAxVlDu52RXC3w2iXIelVgOC+Qo/X5ppycFHDCJRioSbSfJd/
         vBB52MibAW/UFfIN6VCGumR9yFkVYZ/WySqDJo7DTAFWUIu9IPsRicVg1GDidBe8rNwZ
         S+Ez4tBV8StBROVoXGTmESncEHd5sPWCKEBMXU2BJAaKYkkfw6yg5RJ8L3lTOwBVs3I2
         SZOSRrYCRvRTEjrsDmDwzFSvn5N1BRuOriju+dM9xk3jw/ttd8/5Q6ahFAHabBSD/T/A
         Tf/w==
X-Gm-Message-State: ANoB5pligNBxG0LXIqjNEpyC9+PATQVYbEBhVT2xkRzt+k1WJB+A8XRg
	isQ888gGIxS2LYf6gWUh/bw=
X-Google-Smtp-Source: AA0mqf7W++ZGlAQng+eeRI1JZVWPEnuY6Xb3IZoLdPXSTzOLfDjzAs7B0Z6Sl0DCk+ll7W7tSZa5qA==
X-Received: by 2002:a62:8446:0:b0:574:8c08:6c15 with SMTP id k67-20020a628446000000b005748c086c15mr34168668pfd.82.1669859736108;
        Wed, 30 Nov 2022 17:55:36 -0800 (PST)
Received: from localhost.localdomain ([43.132.141.8])
        by smtp.gmail.com with ESMTPSA id x9-20020aa79a49000000b0056e0ff577edsm2013079pfj.43.2022.11.30.17.55.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Nov 2022 17:55:35 -0800 (PST)
From: zys.zljxml@gmail.com
To: thierry.reding@gmail.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	christian.koenig@amd.com
Date: Thu,  1 Dec 2022 09:55:21 +0800
Message-Id: <20221201015522.38163-1-zys.zljxml@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Rspamd-Queue-Id: DCF723EA4F
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[43.132.141.8:received,209.85.210.174:from];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.174:from];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[mail-pf1-f174.google.com:rdns,mail-pf1-f174.google.com:helo];
	FROM_NO_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linaro.org,amd.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: zys.zljxml@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LY7NXBQ2N2ZNXRAOVI2TRQVNT66J3K5V
X-Message-ID-Hash: LY7NXBQ2N2ZNXRAOVI2TRQVNT66J3K5V
X-Mailman-Approved-At: Wed, 14 Dec 2022 12:19:30 +0000
CC: dri-devel@lists.freedesktop.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Yushan Zhou <katrinzhou@tencent.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] gpu: host1x: Remove redundant null checks before kfree
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LY7NXBQ2N2ZNXRAOVI2TRQVNT66J3K5V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Yushan Zhou <katrinzhou@tencent.com>

Fix the following coccicheck warning:
./drivers/gpu/host1x/fence.c:97:2-7: WARNING:
NULL check before some freeing functions is not needed.

Signed-off-by: Yushan Zhou <katrinzhou@tencent.com>
---
 drivers/gpu/host1x/fence.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/host1x/fence.c b/drivers/gpu/host1x/fence.c
index ecab72882192..05b36bfc8b74 100644
--- a/drivers/gpu/host1x/fence.c
+++ b/drivers/gpu/host1x/fence.c
@@ -93,8 +93,7 @@ static void host1x_syncpt_fence_release(struct dma_fence *f)
 {
 	struct host1x_syncpt_fence *sf = to_host1x_fence(f);
 
-	if (sf->waiter)
-		kfree(sf->waiter);
+	kfree(sf->waiter);
 
 	dma_fence_free(f);
 }
-- 
2.27.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
