Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 449956A639B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Mar 2023 00:04:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4CFFE44244
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Feb 2023 23:04:21 +0000 (UTC)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	by lists.linaro.org (Postfix) with ESMTPS id 15E6344239
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 22:58:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=V1urbG5R;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.215.170 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pg1-f170.google.com with SMTP id 132so6628351pgh.13
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 14:58:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677625132;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qPSgblFxcMDwoNtdY8qW+0LuYLpgnFy45QQcEr2JcOw=;
        b=V1urbG5RuLnnO3VpMHdX0KG/G6gU5WFBPcaLIO0j/3+ro3asLgBZxzPDlmGLQLGWfY
         e1npBQxhdEGRFU27gZsGamZvqXfjGxkBzgs9jBR4/GulwzblxgQ3Q6HMAgg5602sWSXe
         UvJ7TjSeSlS12TW3snncvEDnKiwrwdWyJzrDKOpd+ZV44GjPF2+IThw12qS6zyzKbezc
         wD3N9vq19W3m09Onq+8ioeK5HFFsOCrkYESNlPR/LI/uiCcj/oiQoPZ+0w0sg8XCqlkr
         6ehVtL1cFcF+Pwx6XuAwYT67z061XHz0XA9KQ8wRhNrbCXO7Sp3k2WWlSbcRXTxvF919
         dW1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677625132;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qPSgblFxcMDwoNtdY8qW+0LuYLpgnFy45QQcEr2JcOw=;
        b=KwhSevTnY3QN8zf0DD69KmH+QEx7pBIwBKKM2Sy6ga06077t7lTZIAdBabsAXf26ia
         cXBTDuGrdKVNVU7hfcFgaPQfaS6rn1ldwl+G8uPhOfL5IJqf9m9GB3BXTrn3mIfEgUxx
         M75mAAnEqOpDf5PEEmm8dxDdAyx+IQ5DD0psQUmkqNNKkhK+oezmUQcdnAI15GarUraG
         7f9W99/31iFA1ij2r35Qpsxp2KE+Smfubc5VUgGUVOhwn3AcXDZETrTwvdgkUVVojloq
         bvKEOyRxu/x5UbUaGEcfh5rbnmieBCksII0w+IgH23iop10SQNWIknxy9LCv74hpbRfe
         zzGw==
X-Gm-Message-State: AO0yUKX3LBcFM0pTDr2242hg/1Fu/QxXJjrx7TKMw2GrqrJt6ExI6mww
	5/uWIak43gUSVBKONxZS8bY=
X-Google-Smtp-Source: AK7set9D6bzyHSECO63x+rY5hYGmDXYfp4j6STSXtKZg5kfnZ3Wzzd0d0FRKKk5uiWMW7b1PfnYMZA==
X-Received: by 2002:aa7:99c8:0:b0:5a8:d97d:c346 with SMTP id v8-20020aa799c8000000b005a8d97dc346mr4142929pfi.12.1677625132210;
        Tue, 28 Feb 2023 14:58:52 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id k184-20020a633dc1000000b0049f5da82b12sm6121487pga.93.2023.02.28.14.58.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 14:58:51 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 28 Feb 2023 14:58:11 -0800
Message-Id: <20230228225833.2920879-8-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230228225833.2920879-1-robdclark@gmail.com>
References: <20230228225833.2920879-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 15E6344239
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.215.170:from];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.215.170:from];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[chromium.org:email];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: XGDUF3GOEGKG5DRNGCFMM6MKFC6UOSOV
X-Message-ID-Hash: XGDUF3GOEGKG5DRNGCFMM6MKFC6UOSOV
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v8 07/16] dma-buf/sync_file: Support (E)POLLPRI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XGDUF3GOEGKG5DRNGCFMM6MKFC6UOSOV/>
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
