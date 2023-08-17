Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DF76277FFFA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Aug 2023 23:37:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C41EA44172
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Aug 2023 21:37:42 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	by lists.linaro.org (Postfix) with ESMTPS id 5875B3F08F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Aug 2023 21:37:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=ooeNolDT;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.178 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1bf11b1c7d0so8249415ad.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Aug 2023 14:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692308256; x=1692913056;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VfBSoWR2VMdVe94DeOrM4dJxlWeWi9hCbvQq6BP8leQ=;
        b=ooeNolDTQvVzWf2zo5DcjLo0zaFOj4KtaIyw06AM53glPonl3hUVxydutbt3d/H9CJ
         f+vxbqJFtntaTuU4CzGcyIYDH9p+VwmFwMTTTDvjtS8v5FbxAJqMTczSApyRPW16HBnp
         RgMFZYVwwgdE6AO9PSpytdCh18VA2I/IVKdcX5EppaTF1O3Gu0nWlFyyNFNca/eZFLyi
         pw/BmMOH3uysAn/ltjoXjbR7KJj9xe5slf5Wxb2Kkz6WlRT0xqHOdaHRTdzYjQDoLdBV
         /pMO4wLh9pQn/bQ77zyhrLPhMVAxCodJoQT6zkN1h0AtseHP4mU35GIY4zCkeM2kIhXt
         ig1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692308256; x=1692913056;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VfBSoWR2VMdVe94DeOrM4dJxlWeWi9hCbvQq6BP8leQ=;
        b=BizvgYSpGJ5/9Zz8kUSwd4w1mS+eRu6Hi4MEZ4eXYMvVAAE7i4z6DiYthTKM5YfXGl
         KwAbf/jzMui9O0Ur22mU0pCuoAS1igoVMjta5OY8/6VC+5SQaOo3MDf6tDFqRG0KuyvX
         Xovgwg17J/kNCfA6oSbp+v7Irv1zsa8VAQz1ObDfVrk+5qz4C8qK/S6xHSGCeAgIp2Ao
         ObmDz1V9m9I5jqxgo1DIpGBvXxSjcDkGHYGBfRdRjV7vFIb9ipFBWRDABvCmWmyNm3wv
         SNfSUG5Gosj6nGYK8vyJNuc8mMrObR4DIz+M3G4rsWvnj814ifLzpZ+QTJzuoNo+jJQ3
         55kg==
X-Gm-Message-State: AOJu0YyuD7UR67JvmGsSlBc6TO1iGnIohk1od2OaNcC7oC+ceyFLYxLp
	Z9SkRiSgzy+TB7dtrWs2DUk=
X-Google-Smtp-Source: AGHT+IGhCNZ1M6WxLRZDhHgvhRaLi1UoeCIe3iYoAIHvyaW8/IAW6HFIhufDJb+oEn3k4h34lVliew==
X-Received: by 2002:a17:903:44e:b0:1bc:210d:6365 with SMTP id iw14-20020a170903044e00b001bc210d6365mr715384plb.2.1692308256327;
        Thu, 17 Aug 2023 14:37:36 -0700 (PDT)
Received: from localhost ([2a00:79e1:abd:4a00:6c80:7c10:75a0:44f4])
        by smtp.gmail.com with ESMTPSA id u18-20020a17090341d200b001b9d95945afsm232379ple.155.2023.08.17.14.37.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Aug 2023 14:37:35 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 17 Aug 2023 14:37:28 -0700
Message-ID: <20230817213729.110087-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5875B3F08F
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[2a00:79e1:abd:4a00:6c80:7c10:75a0:44f4:received];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.178:from];
	URIBL_BLOCKED(0.00)[mail-pl1-f178.google.com:helo,mail-pl1-f178.google.com:rdns,basnieuwenhuizen.nl:email];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.214.178:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: TJPGMLFHJ74M56REB3NEOVOVQP54ORXM
X-Message-ID-Hash: TJPGMLFHJ74M56REB3NEOVOVQP54ORXM
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Clark <robdclark@chromium.org>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Chris Wilson <chris@chris-wilson.co.uk>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf/sw_sync: Avoid recursive lock during fence signal
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TJPGMLFHJ74M56REB3NEOVOVQP54ORXM/>
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

Reported-by: Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>
Fixes: d3c6dd1fb30d ("dma-buf/sw_sync: Synchronize signal vs syncpt free")
Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/dma-buf/sw_sync.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/dma-buf/sw_sync.c b/drivers/dma-buf/sw_sync.c
index 63f0aeb66db6..ceb6a0408624 100644
--- a/drivers/dma-buf/sw_sync.c
+++ b/drivers/dma-buf/sw_sync.c
@@ -191,6 +191,7 @@ static const struct dma_fence_ops timeline_fence_ops = {
  */
 static void sync_timeline_signal(struct sync_timeline *obj, unsigned int inc)
 {
+	LIST_HEAD(signalled);
 	struct sync_pt *pt, *next;
 
 	trace_sync_timeline(obj);
@@ -203,9 +204,13 @@ static void sync_timeline_signal(struct sync_timeline *obj, unsigned int inc)
 		if (!timeline_fence_signaled(&pt->base))
 			break;
 
+		dma_fence_get(&pt->base);
+
 		list_del_init(&pt->link);
 		rb_erase(&pt->node, &obj->pt_tree);
 
+		list_add_tail(&pt->link, &signalled);
+
 		/*
 		 * A signal callback may release the last reference to this
 		 * fence, causing it to be freed. That operation has to be
@@ -218,6 +223,11 @@ static void sync_timeline_signal(struct sync_timeline *obj, unsigned int inc)
 	}
 
 	spin_unlock_irq(&obj->lock);
+
+	list_for_each_entry_safe(pt, next, &signalled, link) {
+		list_del(&pt->link);
+		dma_fence_put(&pt->base);
+	}
 }
 
 /**
-- 
2.41.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
