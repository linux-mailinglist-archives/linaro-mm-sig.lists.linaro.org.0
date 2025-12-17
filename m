Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHf5KpcJ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:08:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 639484115ED
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:08:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 68F7F40500
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:08:54 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id EBE403F8EF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Dec 2025 10:25:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=MnTyjjuM;
	spf=pass (lists.linaro.org: domain of lbulwahn@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=lbulwahn@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765967128;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=smHdiTegAULuGhXNBZg/bX/26IPaO/x2LiGtrg1VjdM=;
	b=MnTyjjuMf7e1dHMhG/Ca2U7O25YbWRlmao6fKkoX4QeKmPnh6gUq9Lhe3cATD9ItQ6OecL
	ExUXSdYLBWSuRhJur8QHKRn03uyLYoWE4kans1AXQmrCM9Yf8Q1Uoqx0BEVc4v5/mmutG5
	AUyeLbYhqw03E5SwG9VvaQBAQP5UQdg=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-441-w8BuovdROg-n406CuoR6Ug-1; Wed, 17 Dec 2025 05:25:27 -0500
X-MC-Unique: w8BuovdROg-n406CuoR6Ug-1
X-Mimecast-MFC-AGG-ID: w8BuovdROg-n406CuoR6Ug_1765967126
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-4775f51ce36so44603265e9.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Dec 2025 02:25:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765967126; x=1766571926;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=smHdiTegAULuGhXNBZg/bX/26IPaO/x2LiGtrg1VjdM=;
        b=BRuyMX+FWsrnNf0NUBkzPeVq/D8+RaFnrxNuBuIr4SZQd+sPeZhqC4qC5BHglsUUgV
         gJamZEoswBllZAYpTpSbRyUkM4BY6nkwMmUEoWN5JOVRmrTLxXn2uaPotfrq8BziPcsz
         mTOPFWJtBwuNuNz2VEn2GY0DJja+Lat0+2v8FD5ArSIggPW8jMgJ/bZJ9DW/Ri4DBwB2
         olhz/TGteCErh16Rb8pL6tKKCat5Lyv8/m95wb+BUYLdOES1MkyNaQPFM5zx0g+JvS4z
         y8BR2O8NDKekZ8PRdJpyhybS734BDhyguwm3eI3x2tedFi6s/BIKA/qqGo5kG62EKcpN
         Nolg==
X-Forwarded-Encrypted: i=1; AJvYcCWHKSYzpuxLYpA9mA9aO/ChZQ4FGLA1LWUzACNg4VSSBRw5ejA+THayV+diPP0ItQHMYLyOzvcteaQb7xS/@lists.linaro.org
X-Gm-Message-State: AOJu0YxhhbJvr9/NjMdFBgDjIJzHcpg4y+wmz5CCTC+C14sC+FP3/Nm7
	t8xXr+XBxffjB6PSew974b2Vj52/uTMwJwcqSAlA+JJ0abBq5X/wC9C9FCPPsrW+hR99LaXmYSl
	17CH8l8oLLp9LR9xAQ6pXrlOm4CqMkVKAlxi6K4ZHW8bYCJOt0d25YZj1yqN+NZaUnizY
X-Gm-Gg: AY/fxX7WV1xVmbeJ+hVOx96mEb7rGeCmebU+FS74yFfJObDRS0316A6KndPN8cVu32q
	O6iaPf1Nz5xGGboNvfV66pi1BeYQt4sVAAXXc8u8mkuq6S8U1JHjjhfo6HiM8By0d2t94nfXQLz
	nXCn6MKY3oFQSfum2HFDbVPwnTS3w6DAZ96XZsp/uDxh//XJ4N1hYXTxpa/ORCeEZ80cF45YYUP
	LsNxK+uHmgn5xfedbnYOpihof56dZBne3aTvIftaxqDkCfHKGJaaLtO0BtFfzEmxlwz1uQjxmPm
	ifmS/njY1+jn2Eig32X0Eu3nJnwvBGbjHVBTDrXKRicwIUTbCgfSDXxVuoe40vuVg4YV6nHv92r
	BKmlbgGXkO0h6eWSEaDkmlP7shEeozQ1/9MUUYOsfvktQJ8vzHALs4NcrEuo=
X-Received: by 2002:a05:600c:5254:b0:46e:37fe:f0e6 with SMTP id 5b1f17b1804b1-47a8f90d28bmr183475065e9.30.1765967125964;
        Wed, 17 Dec 2025 02:25:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHv94oYFukoKO/fNpwSZWIAqty2A+HqHfndysVYm5pmz3lseu6l1OSQncA0MKLpd0JpALSjTg==
X-Received: by 2002:a05:600c:5254:b0:46e:37fe:f0e6 with SMTP id 5b1f17b1804b1-47a8f90d28bmr183474695e9.30.1765967125517;
        Wed, 17 Dec 2025 02:25:25 -0800 (PST)
Received: from lbulwahn-thinkpadx1carbongen12.rmtde.csb ([2a02:810d:7e01:ef00:1622:5a48:afdc:799f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47bdc1e6ca3sm30491045e9.12.2025.12.17.02.25.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 02:25:24 -0800 (PST)
From: Lukas Bulwahn <lbulwahn@redhat.com>
X-Google-Original-From: Lukas Bulwahn <lukas.bulwahn@redhat.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"Michael J . Ruhl" <michael.j.ruhl@intel.com>,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Wed, 17 Dec 2025 11:25:22 +0100
Message-ID: <20251217102522.2790298-1-lukas.bulwahn@redhat.com>
X-Mailer: git-send-email 2.51.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 5exX32yv6BoKeVYc34bfxAGBPSMmFsYl2gCkv-k8j_A_1765967126
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
X-MailFrom: lbulwahn@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AXNMON3QCOUAD7SSXH473FRMASUILI3U
X-Message-ID-Hash: AXNMON3QCOUAD7SSXH473FRMASUILI3U
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:04:50 +0000
CC: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, Lukas Bulwahn <lukas.bulwahn@redhat.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: really enable DMABUF_DEBUG by default on DEBUG kernels
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AXNMON3QCOUAD7SSXH473FRMASUILI3U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; x-default="true"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[2885];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lbulwahn@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.846];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 639484115ED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Lukas Bulwahn <lukas.bulwahn@redhat.com>

The intent of commit 646013f513f3 ("dma-buf: enable DMABUF_DEBUG by default
on DEBUG kernels") is clear, but it mixes up the config option name. The
config option for kernel debugging is named DEBUG_KERNEL, not DEBUG.

Fix up the DMABUF_DEBUG definition to use the intended name.

Fixes: 646013f513f3 ("dma-buf: enable DMABUF_DEBUG by default on DEBUG kernels")
Signed-off-by: Lukas Bulwahn <lukas.bulwahn@redhat.com>
---
 drivers/dma-buf/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/Kconfig b/drivers/dma-buf/Kconfig
index fdd823e446cc..426c9ad3364f 100644
--- a/drivers/dma-buf/Kconfig
+++ b/drivers/dma-buf/Kconfig
@@ -55,7 +55,7 @@ config DMABUF_MOVE_NOTIFY
 config DMABUF_DEBUG
 	bool "DMA-BUF debug checks"
 	depends on DMA_SHARED_BUFFER
-	default y if DEBUG
+	default y if DEBUG_KERNEL
 	help
 	  This option enables additional checks for DMA-BUF importers and
 	  exporters. Specifically it validates that importers do not peek at the
-- 
2.51.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
