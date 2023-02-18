Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FB769BC7E
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 18 Feb 2023 22:18:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 11EFE4423D
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 18 Feb 2023 21:18:10 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	by lists.linaro.org (Postfix) with ESMTPS id 3575E3F324
	for <linaro-mm-sig@lists.linaro.org>; Sat, 18 Feb 2023 21:15:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b="eQ/2i4Wt";
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.216.47 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id qb8-20020a17090b280800b002341a2656e5so1345750pjb.1
        for <linaro-mm-sig@lists.linaro.org>; Sat, 18 Feb 2023 13:15:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RYIkCiW1P3MTuGNaXnYInZXOL6oL98BTswmIrYI3+hc=;
        b=eQ/2i4WtARuumdk6wu3UFqAW69ZW8h3tfauASKVW6UiPkF3AV+YCLi3IsnRxxMwg0g
         CUIDHLV4BZqXknqttTtk+bXdQ6ljF08ejS9/UaWYQhGdaghr+KWH/71gNpnwDfzQ/UH5
         nBW8tWukaXtSxhoyOsYUBlBageDHZMcz+vUTvBGG9/D5e4fM1azL9Vg9cP2p+UYvndt2
         AHl5A36OpTJ8bpk7MfIg49zDicp0C2GaVHxplb2BU6oIc7LsUP5oMXTq3g1kIWHJce+H
         XGKorRr6oiJXunUlrDyMsUxILj9/VBJnJZI1d9zF9ycS3uV11lNRCp0g7026hwsHpCwE
         JhRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RYIkCiW1P3MTuGNaXnYInZXOL6oL98BTswmIrYI3+hc=;
        b=eDtlZvLxLUFjJRvMaQdJw2Ahmj0VD/PH4QMqLQQNu7TDEuCx54m56FOBdNhmCvMsD6
         fNJQA7ksgLKOjsW7a8L5zRFS4vu4WoEA8zqbGxrAe5RbxELIiXvnpYSbOFQRWaypjNbo
         8bBHQ26N13iG0JfiI0c689OHzXXYoa7YlPT1BEMsXLYwrRdxkDK8GHy6Qslnb3/PAJV2
         GFiEsuvOs4GliIRW8k3SEPeVrLLgJsnJZmOKy0BF9Lci9sHRyx06Uk0+ns7hKU44lXuk
         3FJwLdR2xZj7LWbU15XFK1G8+gjomtbAWSyv0XNwwzgA2JpWEF2FFwND6x/lr4Ad6EhB
         2djA==
X-Gm-Message-State: AO0yUKVe4GQcoZmGx2PXX9lKVfc44oFITr/So5/u3yUeNCLhPMzSFHM4
	SwCFfapJ/XWD8yRBKdv7hGE=
X-Google-Smtp-Source: AK7set+6yJ/VIDgvzJ07sbwRoyqtX5Z4gVUluKE0+5jQloSvZWFq8eCN7xusPVn+H7cDq6VHJfZzWQ==
X-Received: by 2002:a17:902:8504:b0:199:30a6:376c with SMTP id bj4-20020a170902850400b0019930a6376cmr3106041plb.68.1676754956327;
        Sat, 18 Feb 2023 13:15:56 -0800 (PST)
Received: from localhost (c-73-67-135-195.hsd1.or.comcast.net. [73.67.135.195])
        by smtp.gmail.com with ESMTPSA id h12-20020a170902eecc00b0019a96871e09sm5072653plb.211.2023.02.18.13.15.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Feb 2023 13:15:55 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Sat, 18 Feb 2023 13:15:49 -0800
Message-Id: <20230218211608.1630586-7-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230218211608.1630586-1-robdclark@gmail.com>
References: <20230218211608.1630586-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3575E3F324
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[73.67.135.195:received,209.85.216.47:from];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.47:from];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: F2VNOBDVGZIECYP7VATBCVT65CECA5NE
X-Message-ID-Hash: F2VNOBDVGZIECYP7VATBCVT65CECA5NE
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 06/14] dma-buf/sync_file: Support (E)POLLPRI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F2VNOBDVGZIECYP7VATBCVT65CECA5NE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

Allow userspace to use the EPOLLPRI/POLLPRI flag to indicate an urgent
wait (as opposed to a "housekeeping" wait to know when to cleanup after
some work has completed).  Usermode components of GPU driver stacks
often poll() on fence fd's to know when it is safe to do things like
free or reuse a buffer, but they can also poll() on a fence fd when
waiting to read back results from the GPU.  The EPOLLPRI/POLLPRI flag
lets the kernel differentiate these two cases.

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/dma-buf/sync_file.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
index fb6ca1032885..c30b2085ee0a 100644
--- a/drivers/dma-buf/sync_file.c
+++ b/drivers/dma-buf/sync_file.c
@@ -192,6 +192,14 @@ static __poll_t sync_file_poll(struct file *file, poll_table *wait)
 {
 	struct sync_file *sync_file = file->private_data;
 
+	/*
+	 * The POLLPRI/EPOLLPRI flag can be used to signal that
+	 * userspace wants the fence to signal ASAP, express this
+	 * as an immediate deadline.
+	 */
+	if (poll_requested_events(wait) & EPOLLPRI)
+		dma_fence_set_deadline(sync_file->fence, ktime_get());
+
 	poll_wait(file, &sync_file->wq, wait);
 
 	if (list_empty(&sync_file->cb.node) &&
-- 
2.39.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
