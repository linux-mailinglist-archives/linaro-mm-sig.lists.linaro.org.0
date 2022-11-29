Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E55164C8E5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 13:22:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AC25B3E971
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 12:22:46 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	by lists.linaro.org (Postfix) with ESMTPS id B9D273ECF8
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Nov 2022 09:45:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=QMTGc8dA;
	spf=pass (lists.linaro.org: domain of zys.zljxml@gmail.com designates 209.85.216.43 as permitted sender) smtp.mailfrom=zys.zljxml@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f43.google.com with SMTP id l22-20020a17090a3f1600b00212fbbcfb78so16761325pjc.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Nov 2022 01:45:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ko+qbf+b0Yv7gj3x+dmqgXT2t4VmwkOjBb0uMWb0qeo=;
        b=QMTGc8dATSuNa3qa2tdoi28432ZIGdXhepGsvXVGCtpTOLz41a16mSV6pjjVIeEsO9
         PJrhktRoFkYYeAO5E8N+9SXNKvsJBnpVmZY0oDEWaVJ4nC37dthNqFz+2bX0NyoPb7ji
         D3/HxVLjkt5GkrZw/CysGVyK3EGEpKo/THJR8Y4wpL092B6BWaFSmqNMjXwB4mWqoEUN
         jR4GhjSo6zgxjIkYcZt9OQr8ijnL/KwAbKvTjac/uMZE1ZFsFmqlIY33esnYdKCmgngv
         BTvsjNSh5Vp/JawszvH9dXG0Y2xfdA0UHyun1wvwR0r5/DDXMLHnOiXxFgnUwonl+OPZ
         ecjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ko+qbf+b0Yv7gj3x+dmqgXT2t4VmwkOjBb0uMWb0qeo=;
        b=ZjmlfZzGxyYpls1Siwi5GUKRICNjM8UM0dytyHzZRaa1xSNgQnWay3CChfZAPgLKWd
         ac+CQShCwLlogzz/Sc91oNn4ABhCz4UZYIeqn+q/SqykGqQqCpZ36ubizLiY1/9V8SJ2
         RFrUlCNLATLbopUFte69nUlNvIaMbVu5AzRYB4/r/Ep8oFKQFoxLhlBgMUpf90Ed8P0E
         yvVpw/sJciIsv41Fft5/a+aoi1YjQn7Ohj02SUFq+LeOuuSncG8GQh+3ZLh/ShG1gCKU
         REjiAhmGEzAoDPwKqb1q7RsEKkh4hoX8vrYuJ45KMUnlnjl3BgrVKf/1P4kqPDuF5h2d
         Q/Lw==
X-Gm-Message-State: ANoB5plj7CAH5rSh5nFBUeEvO516Eo/YA0qKBSkWR7QcCbYdhnc1Mtg3
	hesJsXTOWHHdVB/iNorpwCw=
X-Google-Smtp-Source: AA0mqf4Ne7K6UCo3LviuEHHi1Ldd3jeDKdUSANZrcIYdiQ5jgjAkHiE15SlUMXjD5rBe+tGAb5h5og==
X-Received: by 2002:a17:90a:4302:b0:20a:e469:dc7d with SMTP id q2-20020a17090a430200b0020ae469dc7dmr56845748pjg.97.1669715158916;
        Tue, 29 Nov 2022 01:45:58 -0800 (PST)
Received: from localhost.localdomain ([43.132.141.9])
        by smtp.gmail.com with ESMTPSA id h7-20020a170902680700b001895b2d48a1sm8259266plk.253.2022.11.29.01.45.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Nov 2022 01:45:58 -0800 (PST)
From: zys.zljxml@gmail.com
To: thierry.reding@gmail.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	jonathanh@nvidia.com,
	sumit.semwal@linaro.org,
	christian.koenig@amd.com
Date: Tue, 29 Nov 2022 17:45:46 +0800
Message-Id: <20221129094546.197424-1-zys.zljxml@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Rspamd-Queue-Id: B9D273ECF8
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[209.85.216.43:from,43.132.141.9:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.43:from];
	MIME_GOOD(-0.10)[text/plain];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-pj1-f43.google.com:rdns,mail-pj1-f43.google.com:helo];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_NO_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,nvidia.com,linaro.org,amd.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: zys.zljxml@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: J52KJ5RXTCAKMK4FWPDCXNEU2NF6I7MK
X-Message-ID-Hash: J52KJ5RXTCAKMK4FWPDCXNEU2NF6I7MK
X-Mailman-Approved-At: Wed, 14 Dec 2022 12:19:09 +0000
CC: dri-devel@lists.freedesktop.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Yushan Zhou <katrinzhou@tencent.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/tegra: Remove redundant null checks before kfree
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J52KJ5RXTCAKMK4FWPDCXNEU2NF6I7MK/>
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
./drivers/gpu/drm/tegra/submit.c:689:2-7: WARNING:
NULL check before some freeing functions is not needed.

Signed-off-by: Yushan Zhou <katrinzhou@tencent.com>
---
 drivers/gpu/drm/tegra/submit.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/tegra/submit.c b/drivers/gpu/drm/tegra/submit.c
index b24738bdf3df..df34c5daa400 100644
--- a/drivers/gpu/drm/tegra/submit.c
+++ b/drivers/gpu/drm/tegra/submit.c
@@ -685,8 +685,7 @@ int tegra_drm_ioctl_channel_submit(struct drm_device *drm, void *data,
 		kfree(job_data->used_mappings);
 	}
 
-	if (job_data)
-		kfree(job_data);
+	kfree(job_data);
 put_bo:
 	gather_bo_put(&bo->base);
 unlock:
-- 
2.27.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
