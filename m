Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0103069D4DA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 21:21:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 128EE3F499
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 20:21:41 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	by lists.linaro.org (Postfix) with ESMTPS id 4D7F03F4FD
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 20:19:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=b6XsnDqK;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.216.51 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id pt11so3078056pjb.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 12:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qPSgblFxcMDwoNtdY8qW+0LuYLpgnFy45QQcEr2JcOw=;
        b=b6XsnDqK1olt5qz2T9u3YiOy1VT5RRxz/VMoCYps3Pgrs+exn0Ya8JX+enLUoYcNBj
         buWfCT4iJPWfewaDPWp/5MvY+8QNicRVOvpZHbzyieCeadRJB6D+ELIdtWQA4vrudB0C
         Ic8gs+sFUfMRmdGe8U8V9mlHakR00nNgiPRSLRz2wdN0NwK0cO/ZTEM+Dk85lDjnxFGH
         4H69GyzuGQ4Yzbn85CZMH0ujDoR4wVYNjPMbCZHKi7GaRLaFXdb2OrikJlOFpEQdeOqM
         rY/t4VFouvqsEETK+GCENjhhtY9tFNbH5CV48cJKLSsRL+uhx50XjKjLgz+GY+R0oaqk
         Wy2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qPSgblFxcMDwoNtdY8qW+0LuYLpgnFy45QQcEr2JcOw=;
        b=LmE6NhyvZc3FlVmFQImxdIKDJ1CJ4Z7y0A84lExq0mrqfGb1g5hcJXCby/dTjJR8t8
         Tbt1jf57kmpdeTi32GjBzcnx8DxEIYMI1Fni4cJMkeJ7hXTuhOZFwARBjZgT3vXgALL+
         ls56kRoLvfZs3wKUMcAQpfLwZhn8R9XQG07mz5xoWPesaXWlCjR0xYlsAzzwxuk2WqlA
         BV3RR+54GNYHCkwytWJDUmR+2xSDy558ZXAF8SQOr0R9BYjy88BKW2KCHLPdpRGWCC7l
         noJu/zue1ks2PwlHiPRykjorEdAnJd10iQxzmaWhRI7Mwf6SeGc57a1bmZcydDgCRPVW
         vQyw==
X-Gm-Message-State: AO0yUKWJui8cJ6dAXvw1pWovJfTtdSUg0UNIvpCK/iK+ck35M88qZ4Fl
	NoymhD2iRlVVGUSizRxV3bQ=
X-Google-Smtp-Source: AK7set/kLRp8IZ3rKb3WEqYptlfgjeKBGtJDw+/6Vpa1D7As5QAyc9t819GAtY4AWeHTvgf1dPYb+A==
X-Received: by 2002:a17:902:ea07:b0:19a:f9b5:2f2f with SMTP id s7-20020a170902ea0700b0019af9b52f2fmr2362963plg.55.1676924367448;
        Mon, 20 Feb 2023 12:19:27 -0800 (PST)
Received: from localhost (c-73-67-135-195.hsd1.or.comcast.net. [73.67.135.195])
        by smtp.gmail.com with ESMTPSA id z18-20020a1709028f9200b00198f2407ea1sm2033972plo.241.2023.02.20.12.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Feb 2023 12:19:27 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 20 Feb 2023 12:18:53 -0800
Message-Id: <20230220201916.1822214-7-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230220201916.1822214-1-robdclark@gmail.com>
References: <20230220201916.1822214-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4D7F03F4FD
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.51:from];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: BWIEUAROOL6JBWNMRUCM7M76RV4KHPOV
X-Message-ID-Hash: BWIEUAROOL6JBWNMRUCM7M76RV4KHPOV
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 06/14] dma-buf/sync_file: Support (E)POLLPRI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BWIEUAROOL6JBWNMRUCM7M76RV4KHPOV/>
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
