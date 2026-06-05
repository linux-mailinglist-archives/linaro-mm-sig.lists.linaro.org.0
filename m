Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id khP8NbZJKWrzTgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:25:42 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2FB668C1B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:25:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=trailofbits.com header.s=google header.b=Nqvf5avq;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=trailofbits.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AAD5240A24
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:25:41 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by lists.linaro.org (Postfix) with ESMTPS id B029D3F81B
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Jun 2026 15:42:55 +0000 (UTC)
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-9158629a220so234570385a.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 05 Jun 2026 08:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=trailofbits.com; s=google; t=1780674175; x=1781278975; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jDvkiRMPuLtyk7kkNunkFVh4+WhfFUZFqxPcwQnozzM=;
        b=Nqvf5avqbjV5Bvq7g6VQq1AHJRghs6RN0c2PHNvp0Ynct1wqiQCl2W1B1e1RvB6aCX
         xWkCoq8rLaxJvKXYU5uFJxg/asnDHLrROidgWSZHZRFJqaMqI6oeZ+a05AjgIH+2gGXz
         YYvf1KBknz/ZfpjAj+79VDlKxuoln6SctCGWNrgGtJyNrn6bywceixvX6ML3pejrRDK1
         icLwSytLYnSEZ/ob0kIBtm2TT+M7F1ncoR6nBnifxEhi5Js1AGiaTczuKvyOdw3zXDRV
         eYYeXoJzQ0FvGjkd6VY9QIYHy1OEaFJbS9DdIRar6QhdPCIlwCbbUhClZ9BBvtF6yf/u
         pEGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780674175; x=1781278975;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jDvkiRMPuLtyk7kkNunkFVh4+WhfFUZFqxPcwQnozzM=;
        b=iZ+OpFsAoRb7Hhbs7f0qs+iiqplAIog5si67E+JJmdHcyvbvPDp06nIj2aJ8LTOesq
         ZFBNiknCvLqQ4a/4dLFGLYaa1Zp+6Qba+RygTdpSZ8qjG1W21QorzKva8guFxP0LexMs
         +qSmqyqrvP2ziMtzUWgKL5dMBBw4hubFxLiZLK/6zhEmzOhhxJuWz/u1VitibmYcXbDY
         4PJ3cuIpQvOtxmupife0Znu2YAcfQBNym/Czy7/cyuJwXJGUCfYnDYgORvcMyt5AS9HM
         hV0Q0EEdVPlgIGQx9yEjclA2asfUnihYcCvCOaeqPtZBxXAe4YB2kvQYO+ucALGZwkmN
         Lp6w==
X-Forwarded-Encrypted: i=1; AFNElJ/r2ChtFlQQ/VrmcfRmrTWXnL1vFmMEd2UZ/oHNldi5RCUWjRP1QTkMOMpitc11cRgFt1TZZwpxZb2f0CVa@lists.linaro.org
X-Gm-Message-State: AOJu0Yxby/jVW+x5hk3I34+rfiKvAAHdSgdZ9e4JAIKtmdbalrvbqx+S
	rAGOBih/uH8knLtzCe/IRfNnAjukqJ2Is+c2hW0UKeoIgLqliCvkEzm0ew0JT7XpHJM=
X-Gm-Gg: Acq92OEMXHRDcysePtNzyFMbrsp6FD6OUf+TrLc0lohllhUeOlq6n/+CmkxFUfnyS6G
	KjFfwTN5LQBx5Hfq8xTGf4NInM+nBQp/BZVRLaQ8BeNUA5xt7I8dPMRDKsbGPKMgPNfZkrjSdLr
	i66nE+jFLCN5rsORxjwWz0wkqHfuZD2CqVMPlgXG/xdvNU7IzJVwtzycy8y56bHXpMv7eE3imbY
	iXIXXQ8soiileZQ/UAKQyfkVqadjrhUT2u0biVBufxFANxSv9hsKyRM//PtaFQyQYIg3ifbJc4c
	2dpToE/LIHy2dDiFCOyhtQzX/pMqU19FHfT10yx/vKQEzepzfhvH+utR+jnwUqUjEiF6YHxGnpZ
	prMRvnAql3r3B+Lhwbt+4DYzWivy5lNQ2ovSJyy3zipGdBo+8TIl1j6m1VRdfhaMWWKAhNg2ES4
	Q4xB7IyFH2ew4xiZh6/ZJfgSUnY0moMtWY8FlyHg==
X-Received: by 2002:a05:620a:254a:b0:910:db3a:7bdb with SMTP id af79cd13be357-915a9d888demr747343385a.32.1780674175256;
        Fri, 05 Jun 2026 08:42:55 -0700 (PDT)
Received: from localhost ([161.35.96.86])
        by smtp.gmail.com with UTF8SMTPSA id af79cd13be357-9158a37bae6sm927242485a.31.2026.06.05.08.42.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2026 08:42:54 -0700 (PDT)
From: Samuel Moelius <sam.moelius@trailofbits.com>
To: Gerd Hoffmann <kraxel@redhat.com>
Date: Fri,  5 Jun 2026 15:42:51 +0000
Message-ID: <20260605154252.2125942-1-sam.moelius@trailofbits.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: sam.moelius@trailofbits.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5AWEOUEGTT7MLQLAV2X6D26RBEV6GEWO
X-Message-ID-Hash: 5AWEOUEGTT7MLQLAV2X6D26RBEV6GEWO
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:24:32 +0000
CC: Samuel Moelius <sam.moelius@trailofbits.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "open list:USERSPACE DMA BUFFER DRIVER" <dri-devel@lists.freedesktop.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: udmabuf: validate create-list count before copying
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5AWEOUEGTT7MLQLAV2X6D26RBEV6GEWO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[trailofbits.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[trailofbits.com:s=google];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[115];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:kraxel@redhat.com,m:sam.moelius@trailofbits.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	TO_DN_ALL(0.00)[];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[sam.moelius@trailofbits.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sam.moelius@trailofbits.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[trailofbits.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,trailofbits.com:email,trailofbits.com:mid,trailofbits.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8E2FB668C1B

UDMABUF_CREATE_LIST copies a variable-length list using a byte count
derived from head.count. The list_limit module parameter is signed and
writable, so setting it negative lets a large unsigned count bypass the
limit check. The u32 byte-count calculation can then wrap, causing only
a small list to be copied while udmabuf_create() still iterates over the
large count.

Reject negative list_limit values and use checked size_t multiplication
before copying the list.

Assisted-by: Codex:gpt-5.5-cyber-preview
Signed-off-by: Samuel Moelius <sam.moelius@trailofbits.com>
---
 drivers/dma-buf/udmabuf.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
index 94b8ecb892bb..46b077639bfb 100644
--- a/drivers/dma-buf/udmabuf.c
+++ b/drivers/dma-buf/udmabuf.c
@@ -13,6 +13,7 @@
 #include <linux/hugetlb.h>
 #include <linux/slab.h>
 #include <linux/udmabuf.h>
+#include <linux/overflow.h>
 #include <linux/vmalloc.h>
 #include <linux/iosys-map.h>
 
@@ -489,13 +490,14 @@ static long udmabuf_ioctl_create_list(struct file *filp, unsigned long arg)
 	struct udmabuf_create_list head;
 	struct udmabuf_create_item *list;
 	int ret = -EINVAL;
-	u32 lsize;
+	size_t lsize;
 
 	if (copy_from_user(&head, (void __user *)arg, sizeof(head)))
 		return -EFAULT;
-	if (head.count > list_limit)
+	if (list_limit < 0 || head.count > list_limit)
+		return -EINVAL;
+	if (check_mul_overflow(sizeof(struct udmabuf_create_item), head.count, &lsize))
 		return -EINVAL;
-	lsize = sizeof(struct udmabuf_create_item) * head.count;
 	list = memdup_user((void __user *)(arg + sizeof(head)), lsize);
 	if (IS_ERR(list))
 		return PTR_ERR(list);
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
