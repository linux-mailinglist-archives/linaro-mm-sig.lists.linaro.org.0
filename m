Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 33FGJgZhPWrr2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:10:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 267EE6C7B8F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:10:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=oe5apjiP;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4530E44938
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:10:29 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id 033103F99D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Jun 2026 08:57:49 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4924944fe6bso13094575e9.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Jun 2026 01:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782377868; x=1782982668; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=I7mK938UvamZb4f9XlJ0eXBktak5gapPH+AoT8mY1/M=;
        b=oe5apjiP+AnTTr7B4h0ZGhsBmSulp2jxCLsgJHyhY1zYCEsO868ogBngyDLb8fZ0u+
         WtL8T8V+HhltAYU4T5TrxzdKGNEZ2CUOfeemvzfDgML4iKt5XHoQgL5E8U4WogDRLo07
         Y77pVp+QiSRSI5f1a3JzNaR7gnHw01i44KKluCHytoR0MsSXR2SB5zkEZ8JgPsgQIlRz
         gKCEbcTWmjBKwrqza3PTG1YktNI7lwwlMj6DKEye7lWjLTLQsxC/RnGVYwfH0l2D0dWb
         PKJDf162JCFMd3KTjvQxDSCQrQaqakU6IY3c+usLwBnl4N7ktTUWMNih5NIBAmPZFsTd
         tx7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782377868; x=1782982668;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I7mK938UvamZb4f9XlJ0eXBktak5gapPH+AoT8mY1/M=;
        b=e4Z44Z0lnWshmVmkrM8WVwtoegjoEeCrAHC5qhrmyY7iTHL7I8qcq20MLERbwv2pxD
         XyNyVkR2DolsgEQiXUGr8D/jbox8DSEi7OpmAXGEJ3Su4i16XedDQyL10W+Zh5h1TuK8
         vl31R2iDox3awDu6v8Cns30dDUY9zELyNVkqNCrNRj89DUl5bW+p3v7Gsph+0u2/TeyR
         A4d4lFbsHY+16KO9hZmjgW/7UF3GnIxdV9Bj4c3XsPV9TwMdDyWjpJHmKIrebpWfi2CY
         iAV5sdznIEI74fvSNPb+e+TBkCUY4NR4ySJhsBjS69rhiFkSlXsiCo+S/DnVgFFXKIkM
         Mjaw==
X-Forwarded-Encrypted: i=1; AFNElJ8Qyw5ScNAWHtxd4g7KMvhGRW3l0TAk40NNBy4gxijBUJEDJAiUoxYLPZIUlVm1rdvgkKj+HydCICV3q0kU@lists.linaro.org
X-Gm-Message-State: AOJu0Yzr8S8R5FkFiX/e73gEZfHCFG7Xl7JA0o8sragdlHyU1Gr7lG7Y
	SHhHVKHjcax5hkRrR6O0q2RQLfFMRQti9lr4iWN7/3PHpZ/smvPUbLHE
X-Gm-Gg: AfdE7clNKY+vThkQQGh5D0ofv+gYgyUbEkGvK0nRzk04bxMqLGcnf+X2q2CaIEW8hxG
	9ByOLAyzTcwnMjZjvA+6Ki/XmzS8b+j7llDV3Ov4U8uR0wDm7iutnBU/joZa2WkoLoUNI13Fvzx
	ol0Nyk/CeWBf5K1LKuPE15djjY8weDyvOBA9DiAjU4yOBBkG1vFIhJb4GAkGsu8nfH7gDkEx8PB
	xiMAE+k2ylDSZPdKAQmfLxI84Oy4sgM3YOOfcYUMLpD+1x2+FnjSNVCrh94ew1rGIsVBazk/roA
	KX5ZmIBPkxqKAkEzrQS4vSGtpOqMxeD3jjKteXywaLpJ4B1bk+cepDsNtb1Vh173g/G4mIm/2jS
	aXa1UTmYzzkFcoatwfIfo8J4yFfD3ukSpVdsl+3cYKT2JYkefNGwM0P4Cf66c/sy7OnV5eiFZ7B
	oYT0pidF39LqRGv4l86dfdV/5vAA==
X-Received: by 2002:a05:600c:a12:b0:490:e19b:bd99 with SMTP id 5b1f17b1804b1-492668ad891mr20377325e9.30.1782377867583;
        Thu, 25 Jun 2026 01:57:47 -0700 (PDT)
Received: from Dev-Null-MSI ([2a0d:3344:52ac:a808:98a4:4381:be45:536f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4926541e03asm40015555e9.2.2026.06.25.01.57.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2026 01:57:47 -0700 (PDT)
From: Yousef Alhouseen <alhouseenyousef@gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>,
	Vivek Kasireddy <vivek.kasireddy@intel.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Thu, 25 Jun 2026 10:57:35 +0200
Message-ID: <20260625085735.4488-1-alhouseenyousef@gmail.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: alhouseenyousef@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NAJALM3SRU7IMTRN5RCAF52HBTH47CHZ
X-Message-ID-Hash: NAJALM3SRU7IMTRN5RCAF52HBTH47CHZ
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:06:27 +0000
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Yousef Alhouseen <alhouseenyousef@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: udmabuf: make list limit unsigned
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NAJALM3SRU7IMTRN5RCAF52HBTH47CHZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.59 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:alhouseenyousef@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[alhouseenyousef@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,lists.linaro.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:-];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alhouseenyousef@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 267EE6C7B8F

UDMABUF_CREATE_LIST uses list_limit only as an upper bound for the
unsigned entry count supplied by userspace. Negative values have no
useful meaning and complicate the bounds check.

Make the module parameter unsigned and keep the checked array copy so
large counts cannot wrap the allocation size before udmabuf_create()
walks the copied list.

Signed-off-by: Yousef Alhouseen <alhouseenyousef@gmail.com>
---
 drivers/dma-buf/udmabuf.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
index b4078ec84..620113df3 100644
--- a/drivers/dma-buf/udmabuf.c
+++ b/drivers/dma-buf/udmabuf.c
@@ -16,8 +16,8 @@
 #include <linux/vmalloc.h>
 #include <linux/iosys-map.h>
 
-static int list_limit = 1024;
-module_param(list_limit, int, 0644);
+static uint list_limit = 1024;
+module_param(list_limit, uint, 0644);
 MODULE_PARM_DESC(list_limit, "udmabuf_create_list->count limit. Default is 1024.");
 
 static int size_limit_mb = 64;
@@ -469,12 +469,10 @@ static long udmabuf_ioctl_create_list(struct file *filp, unsigned long arg)
 	struct udmabuf_create_list head;
 	struct udmabuf_create_item *list;
 	int ret = -EINVAL;
-	int limit;
 
 	if (copy_from_user(&head, (void __user *)arg, sizeof(head)))
 		return -EFAULT;
-	limit = READ_ONCE(list_limit);
-	if (!head.count || limit <= 0 || head.count > limit)
+	if (!head.count || head.count > READ_ONCE(list_limit))
 		return -EINVAL;
 	list = memdup_array_user((void __user *)(arg + sizeof(head)),
 				 head.count, sizeof(*list));
-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
