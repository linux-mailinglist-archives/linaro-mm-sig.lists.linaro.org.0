Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id G7vKM9FgPWrZ2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:09:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 854FE6C7B65
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:09:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b="pu5u/V/1";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9BE4344715
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:09:36 +0000 (UTC)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	by lists.linaro.org (Postfix) with ESMTPS id 7FCC940A79
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jun 2026 12:53:56 +0000 (UTC)
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-80260a90522so13295667b3.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jun 2026 05:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782305636; x=1782910436; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=M1WZO8vWv2VJGmEwDoBM9gWeu5JjgR3Wcyzn9bhpYvk=;
        b=pu5u/V/13bHHeYz4UIGv8LCrfGhwzSxBLF4Rw/aD9T0iPAkKirN2nb4Gs/uXnADIsD
         ApyTBw8SdEjllrHbwWCd0StPsEH1m5XEIr9gigTzBfwI1CoL+BJ32muyEptKVi1OQdhP
         vfR2SsKzHiU0Ybx7A3LeqHbueU+GPKpoZFNOUGP3J5/fzq3aMG91deRdmyFcyqVWjbqc
         cWLu8WW3cb/vA7cSOPrnZVdX2hgDIkdm8e2n4Zpt/asXTHmSmBcN3EJJbxkmVzf7W9fp
         /CaK+h3AW4gmiDNYk5IhoA0P1x8WMcS/hTQEs9LDwCUK8daY4KJrii9CamN+naNTQT9l
         cg2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782305636; x=1782910436;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M1WZO8vWv2VJGmEwDoBM9gWeu5JjgR3Wcyzn9bhpYvk=;
        b=FrWZxPcwuJEnXbTmZAd8hNiANR3f9NWJkLMzhjb8drV3gDYAE4oRI4QDMh527jGjt/
         mZZa7s426HO1I3anlqKB97hZfbL6N+BfjQocZsi4cc5y48YEThFEFBiooxbSfXh01pfb
         lvsaAqgZVQgWSwtxag4JhfTri7G8LShdzCJ69Xs9ACZnIvgQdf1Fxl6HLcYCPBRxFYEt
         BDpkOsGK8GL1825V3dmmrXiwWTTmFbnT5gvr5ha+ZOoblh5njkf6wdoM8zv5pv/0/QZ5
         oaRij/vdfmRKnB0Xktz7Yvt29jgyX/uTDNz9S3RKalegrmWb86oW9QnAkj30SEKkUfpV
         qr3w==
X-Forwarded-Encrypted: i=1; AHgh+RrsUpOP+C1haH4Q2xl0zmBnrgXdpzlY93tWT2rUiVF+b6WqdWtfixkAs9Jdh+XEmyktCAvegvCgBfP06lZ2@lists.linaro.org
X-Gm-Message-State: AOJu0YwO89WbwGieHHL8BYEx7vTHBMzCDqTJhpDE8MpW/UpL5b1YuJ0T
	hYE49AkAeGru8SH+d4Qxo3gv+k0KmIjLQy/Cco0epvFemVj1rtjzcx8u
X-Gm-Gg: AfdE7ckLS2HRTq/sjCxNy2oXehvVVuj4IfUdFAwZ9c1Bh5kjPnoLnZRdodUzcWJLObv
	R9xNm0XAO+NRbyhQoy/viCfP3FCf123f6s1G00+rB/vulUyN0+xUcTWF90L5y72H8fEXF0YqVNz
	gMZD1ZILaPBbALFWRLm9NxStxazIHTb7tIQAPx5v0Q0Y2uPs4nrH9KeIRMMOYcnXVySIavmaz5a
	yDwM/5yMOBA5sgw7WzZiniBSBKjpGGj9kxlsDbGkqYZq9gLJkmF2cDLr4ZxgD3Mf01jV5ghjKZ7
	XiyCbTFIF8Htr87wtmQ1X8pTYMkjbkEOGYwRxSTUZQpXunOVRTJMRaIWqtDmGXwjBa2QhxnzSUg
	NbYklPnxxgYTmznP8F6u5slezXvC5x7Q7WitS/2Tgstd2x+jPmscX8gK3rtdIjyXYnK9FN11l0A
	f8zqYOec/qEW2JDDCPFYyx2SqiPw==
X-Received: by 2002:a05:690c:c4f7:b0:7fd:d8ba:44dd with SMTP id 00721157ae682-806c3a16dc1mr67516207b3.42.1782305635714;
        Wed, 24 Jun 2026 05:53:55 -0700 (PDT)
Received: from Dev-Null-MSI ([2a0d:3344:52ac:a808:98a4:4381:be45:536f])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-8025cf69b5asm57476257b3.20.2026.06.24.05.53.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 05:53:55 -0700 (PDT)
From: Yousef Alhouseen <alhouseenyousef@gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>,
	Vivek Kasireddy <vivek.kasireddy@intel.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Wed, 24 Jun 2026 14:52:42 +0200
Message-ID: <20260624125242.11232-1-alhouseenyousef@gmail.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: alhouseenyousef@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XNY2XNVBWHFVVSULU3AW774KFPDLDZAR
X-Message-ID-Hash: XNY2XNVBWHFVVSULU3AW774KFPDLDZAR
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:06:27 +0000
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Yousef Alhouseen <alhouseenyousef@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: udmabuf: avoid list copy size overflow
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XNY2XNVBWHFVVSULU3AW774KFPDLDZAR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.59 / 15.00];
	DATE_IN_PAST(1.00)[28];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:alhouseenyousef@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[alhouseenyousef@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,lists.linaro.org,gmail.com];
	FROM_HAS_DN(0.00)[];
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
X-Rspamd-Queue-Id: 854FE6C7B65

UDMABUF_CREATE_LIST copies an array whose element count comes from
userspace. The count is compared against list_limit, but list_limit is a
signed module parameter while the count is u32.

If the limit is raised too far or made negative, that comparison no
longer bounds the count to a range where sizeof(*list) * count fits in
the u32 temporary used for the copy length. A wrapped copy length lets
memdup_user() copy fewer entries than udmabuf_create() subsequently
walks, leading to out-of-bounds reads from the copied list.

Take a positive snapshot of the module limit and use memdup_array_user()
so the multiplication is checked before copying.

Signed-off-by: Yousef Alhouseen <alhouseenyousef@gmail.com>
---
 drivers/dma-buf/udmabuf.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
index bced421c0..b4078ec84 100644
--- a/drivers/dma-buf/udmabuf.c
+++ b/drivers/dma-buf/udmabuf.c
@@ -469,14 +469,15 @@ static long udmabuf_ioctl_create_list(struct file *filp, unsigned long arg)
 	struct udmabuf_create_list head;
 	struct udmabuf_create_item *list;
 	int ret = -EINVAL;
-	u32 lsize;
+	int limit;
 
 	if (copy_from_user(&head, (void __user *)arg, sizeof(head)))
 		return -EFAULT;
-	if (head.count > list_limit)
+	limit = READ_ONCE(list_limit);
+	if (!head.count || limit <= 0 || head.count > limit)
 		return -EINVAL;
-	lsize = sizeof(struct udmabuf_create_item) * head.count;
-	list = memdup_user((void __user *)(arg + sizeof(head)), lsize);
+	list = memdup_array_user((void __user *)(arg + sizeof(head)),
+				 head.count, sizeof(*list));
 	if (IS_ERR(list))
 		return PTR_ERR(list);
 
-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
