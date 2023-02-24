Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2DF6A22FD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Feb 2023 21:04:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C424444243
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Feb 2023 20:04:28 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	by lists.linaro.org (Postfix) with ESMTPS id B94A344242
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Feb 2023 20:02:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=YjrzSGmS;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.216.52 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id nw10-20020a17090b254a00b00233d7314c1cso3954812pjb.5
        for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Feb 2023 12:02:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qPSgblFxcMDwoNtdY8qW+0LuYLpgnFy45QQcEr2JcOw=;
        b=YjrzSGmSAO24NAy7pV99H76mHnO/ob0DJd+KgHuXHgTONteT6eB8WKwKvzxTAV8OFc
         ozODGa8na8UY6YME2rJSC+RUVjI+c0l9Zr9nmjTVoIq+dYqU50lqNhMb6B01hqnG7mMj
         S94REDyVMh5NWQHFZF56abZ0uJNxUpO2pG4bdx0klAg7rZDI5Re4eaBmwMj8v//CcpE1
         RtofOghuwLRSl9tPiOQ1TWX4fP326emGj/xi1A2eZFVxerP3uJll6xEQhXhLzvLjzFc9
         ZGZq/hzvp/teFofSmQtORvyU2110tn2XdxVYxH1WPlaBH7/nMEsrJFl/TsVRy5vryYa7
         8d3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qPSgblFxcMDwoNtdY8qW+0LuYLpgnFy45QQcEr2JcOw=;
        b=N9OiZ5sogmaM5GInN+R69IY8JKzXpFUs6dhvlMk1YfUpBtfebrtBmBqI5xmaUwYrZ0
         /EN0/0zpqEJfOQADQj1SFbWPz+/NA8JsdT1W9dMYzV6ZauSQLp30TM7rheaXW94KwM7h
         TyI1lPDDYwqimDrP42P4bquo5ic5RzFAP23Am2caxVze7nfqBN8yBX9z6AvEJaa4QHbX
         Hkghgiq8Tbg4xk/FKEvYL9iO2iZxwtqK9xpbNabEVTC8v7oAgSFTImQrQ+iIBspbhPX9
         cyFNFD/NS5mjD7CRIYi/3yjOR6QAmHeza6eVD0Btlye2CczRw+6N04OB1I9deCohxJT+
         UJyw==
X-Gm-Message-State: AO0yUKUDB7U+ZLBtcArrqkbJF0bVsQB7TzMzPXS6QxXOxasPDO/JcUKf
	d7WHbHMxe9v+hU/c2Iz7pxk=
X-Google-Smtp-Source: AK7set/0So7/yjbHxG+9IFq3Vyn2w/a/SkcQTRiHJyKEh5wCWaBbLoFxjxFUp2shIAdMi1mUsKQDAg==
X-Received: by 2002:a17:90a:351:b0:236:73d5:82cf with SMTP id 17-20020a17090a035100b0023673d582cfmr17766333pjf.9.1677268930955;
        Fri, 24 Feb 2023 12:02:10 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id g23-20020a1709029f9700b0019cbe436b87sm3610113plq.81.2023.02.24.12.02.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 12:02:10 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 24 Feb 2023 12:01:34 -0800
Message-Id: <20230224200155.2510320-7-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230224200155.2510320-1-robdclark@gmail.com>
References: <20230224200155.2510320-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B94A344242
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[2a00:79e1:abd:4a00:61b:48ed:72ab:435b:received,209.85.216.52:from];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.52:from];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[18];
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
Message-ID-Hash: TCHSIWBEDZI7WUAIUJFH75RC7VOWQSSS
X-Message-ID-Hash: TCHSIWBEDZI7WUAIUJFH75RC7VOWQSSS
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 06/15] dma-buf/sync_file: Support (E)POLLPRI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TCHSIWBEDZI7WUAIUJFH75RC7VOWQSSS/>
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
index 418021cfb87c..cbe96295373b 100644
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
