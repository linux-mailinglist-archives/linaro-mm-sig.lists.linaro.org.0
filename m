Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA58780E6E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Aug 2023 16:59:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BECC03F4FE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Aug 2023 14:59:52 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	by lists.linaro.org (Postfix) with ESMTPS id A70723F4FE
	for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Aug 2023 14:59:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=ouDnn0Ay;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.170 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1bdb7b0c8afso7361155ad.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Aug 2023 07:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692370785; x=1692975585;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Q3cLEemZTaWpxY5Ud6JppKDD+KRnvXP8a0Q/gju7PB0=;
        b=ouDnn0AyYsSTb5kwn1zqGecGxkqk76B7ZzCQf8wDD7IUFCttgUZqkcKemEy506eST+
         9gOte6+cVVktahqA9lcFLWCzZD7ZFm8HUKEhcyizBfwzbWAmJjhdtE3++Ukp+eaksvK9
         a415y8s+AVZ7PO7J/fBQM2D2Ldtxbst0sbFRf8oL3PwcUgeWSlZAt7hbVFRBsdYNts0E
         iAD2yBLViw/8SzdbXwjngQYLu3mBX3DJNJKZKcLckQl8o/+36+gvbq1pFU6YZHDUg7XK
         7Bc3sYe2yb2WyEdx2EHrhIxYBsRiL1TFStghefTBqyGr543gEa/0Yo2ungfOcEpqcIpD
         TKSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692370785; x=1692975585;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q3cLEemZTaWpxY5Ud6JppKDD+KRnvXP8a0Q/gju7PB0=;
        b=FjbXPI6x4Khaq29rnp74YpDqd7z+6n4Y3h27CV5mmv7PnTOzK3aYzb+pciCuIyMJHB
         eFgdd/h7ngCZmahrR3VI1dq4qdJgr7wcOHs3054EfMolM4Qs4yW5fw7sLt84IUDNzcxq
         wlIv0jhj+oQGnG0RH2uLrl0+pQqwFbZjLt2zPYKByG8UqbeJXuc11lbgUBHB2FaXxl7s
         /0ykOa8PE9MClCFCmZQIXIMc2YCjhSArAhMBpIOqHBF8tIgL9Use73HnbvdcQFzM6FAy
         rQhfhmg2Ts17q4sZDFNd1KMGJdZbf9iDmTJKVFRuuFOdsRgaTVXL19cF5tjYNfmZ1f3c
         nmgQ==
X-Gm-Message-State: AOJu0YwHPSn2TFH2yNRrDxXoRBN1ZYhF58OrLTXakuOaWlk5BcZBFq8N
	pKviAVStfArsd7ARMIpNqbk=
X-Google-Smtp-Source: AGHT+IEx4dcYnmGUbiTQEAo39DjvTIO3+KAAitSZwJ3e8/xFi3fvDLd9aL7Rz1QuxXkeWG44aHO8Sg==
X-Received: by 2002:a17:902:bd45:b0:1be:e851:c070 with SMTP id b5-20020a170902bd4500b001bee851c070mr2236300plx.22.1692370784595;
        Fri, 18 Aug 2023 07:59:44 -0700 (PDT)
Received: from localhost ([2a00:79e1:abd:4a00:6c80:7c10:75a0:44f4])
        by smtp.gmail.com with ESMTPSA id l13-20020a170902d34d00b001b8013ed362sm1874349plk.96.2023.08.18.07.59.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Aug 2023 07:59:43 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 18 Aug 2023 07:59:38 -0700
Message-ID: <20230818145939.39697-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A70723F4FE
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.10 / 15.00];
	DWL_DNSWL_HI(-3.50)[gmail.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.170:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[]
Message-ID-Hash: MBIPEPCTU5UODV32U27PH52FJJVB3FPI
X-Message-ID-Hash: MBIPEPCTU5UODV32U27PH52FJJVB3FPI
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Rob Clark <robdclark@chromium.org>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Chris Wilson <chris@chris-wilson.co.uk>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] dma-buf/sw_sync: Avoid recursive lock during fence signal
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MBIPEPCTU5UODV32U27PH52FJJVB3FPI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

If a signal callback releases the sw_sync fence, that will trigger a
deadlock as the timeline_fence_release recurses onto the fence->lock
(used both for signaling and the the timeline tree).

To avoid that, temporarily hold an extra reference to the signalled
fences until after we drop the lock.

(This is an alternative implementation of https://patchwork.kernel.org/patch/11664717/
which avoids some potential UAF issues with the original patch.)

v2: Remove now obsolete comment, use list_move_tail() and
    list_del_init()

Reported-by: Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>
Fixes: d3c6dd1fb30d ("dma-buf/sw_sync: Synchronize signal vs syncpt free")
Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/dma-buf/sw_sync.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/dma-buf/sw_sync.c b/drivers/dma-buf/sw_sync.c
index 63f0aeb66db6..f0a35277fd84 100644
--- a/drivers/dma-buf/sw_sync.c
+++ b/drivers/dma-buf/sw_sync.c
@@ -191,6 +191,7 @@ static const struct dma_fence_ops timeline_fence_ops = {
  */
 static void sync_timeline_signal(struct sync_timeline *obj, unsigned int inc)
 {
+	LIST_HEAD(signalled);
 	struct sync_pt *pt, *next;
 
 	trace_sync_timeline(obj);
@@ -203,21 +204,20 @@ static void sync_timeline_signal(struct sync_timeline *obj, unsigned int inc)
 		if (!timeline_fence_signaled(&pt->base))
 			break;
 
-		list_del_init(&pt->link);
+		dma_fence_get(&pt->base);
+
+		list_move_tail(&pt->link, &signalled);
 		rb_erase(&pt->node, &obj->pt_tree);
 
-		/*
-		 * A signal callback may release the last reference to this
-		 * fence, causing it to be freed. That operation has to be
-		 * last to avoid a use after free inside this loop, and must
-		 * be after we remove the fence from the timeline in order to
-		 * prevent deadlocking on timeline->lock inside
-		 * timeline_fence_release().
-		 */
 		dma_fence_signal_locked(&pt->base);
 	}
 
 	spin_unlock_irq(&obj->lock);
+
+	list_for_each_entry_safe(pt, next, &signalled, link) {
+		list_del_init(&pt->link);
+		dma_fence_put(&pt->base);
+	}
 }
 
 /**
-- 
2.41.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
