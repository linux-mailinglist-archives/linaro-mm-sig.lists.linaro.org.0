Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oPUPKCphPWr02AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:11:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4863C6C7BA7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:11:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=IE1YL1Vb;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 66A7F449FF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:11:05 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	by lists.linaro.org (Postfix) with ESMTPS id 3A77D3F824
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Jun 2026 14:12:45 +0000 (UTC)
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-8422f395a4aso798630b3a.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Jun 2026 07:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782396764; x=1783001564; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1agOcM108mYien5bPYKqYcmwOSbFBw2SAS45aRrQL3c=;
        b=IE1YL1Vbr8AgWdPx5P8wAYF31Z0JZ+bc/DobKMP16qhImKZd+luvP8x55YdoCzvDoR
         /atynY9YZbZcoZIlBYrH/K7DiA/nmrOHk711FQh50mTcl1wOB0lluwEHTnOBwQAN+sMk
         7qVB0jzf/DR6xsN3wV4yNUz8HT5UoPgZrb+rdTr6jwbyUn/Wn/ncgvvcEGZ9yu9jLosS
         SewreDuEcHRp0A/0CbVUIMCT/BTlA6sAcpg5SrgrEBR9T+RPrnhJs9132jXcQqiXbb5a
         uT0zPsKJMGYW/Nkj3btyHbT1yGPbdd6OpYdj1WgsevJXS0V/5dYFZkpIBczrvbhsDLOT
         UdpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782396764; x=1783001564;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1agOcM108mYien5bPYKqYcmwOSbFBw2SAS45aRrQL3c=;
        b=KWZagDEz8Jw6SBDn8UbcA6NjAxwSSM6g1nFoDAba8UcVe8W/+FqS5kP2k19+Pn0TDN
         U+U6OohUcydiTuOFCZ4MJktOA0WV5LhpE4iXGqEBwzanOk9jm6FUy+5Cv7O8Npmx3imM
         1Z/w/p+DKUXw8tnn8PhJwZCyadYCfrB2RoY4uriMYCTsJtTrGATk4IoKyEe3CK1EFt5l
         79UDDBnTMx53ddO97oGlz+o/Qv3qJXbg2ev003Gwd6oZ+iQCju3G76T8rjvT1m0V8RjF
         6Zd3MydM8gY39BaW51x4hD8hwU25Vx52mqvOlrvXJzpus96mpwguGckZXblvxpt9ZTXz
         cxYA==
X-Forwarded-Encrypted: i=1; AFNElJ9ZwG0njymYBS6j7bOpCYjbWWyZS/tdIHDzkuHv5R/k8bkD3kPMKX9MxnrEGezBisExbClTeGOniNuhHI3W@lists.linaro.org
X-Gm-Message-State: AOJu0Yz4up4oh6x95CL7T8xX61t9PdVTYDF/TLVoUvcGM/Z5J8sm2riP
	+IcWYKsXUTerc2FnaxXUwFU1ulv2GC8pJ4Yt6lgjukTd4BdwWb3wojpG
X-Gm-Gg: AfdE7ck6moFAXOGpA9dHf+oivVp1K7c5liIm74PngTrRegJy2ryLOvGJsoQAOvMeHtO
	mV6UbuqL0R67rUc16+Q4BNqeSKFN1WzA/DGtEcQu2yhiyyVx5UtKIzGlmkODhvlw/BNtKraLjnn
	wesxNfAi6JpOAzV/1Ka0OOkdn2sZ8BwzV+YKP+CIDOpnGrQVtcHKhe7K0pHyZD1fQahIbxjANoz
	szkXGre5mCUgce/rhkg7mzgkB/xkPouJboegdBbuWnX0CGR4fBzC1uXBcO4F8Fyz4jbNxd2Eh+0
	DDW7L0hGaLTKcriWMQPFKGm3b11b5JU2OgZechkeZ7W2JFUd2fVEt8HhzNaDiAsUDZMGXZ0uyor
	U//6VkuTkHhaKuNape7VcBgL6FNXxsR2Jl5YymIwGrsp+XkR6ZYEOsk/8DkI25oAFEtOyfRwycB
	KBFWi19RxMBgWY9Oi3bJVdR8H3nsRk
X-Received: by 2002:a05:6a00:10c7:b0:83f:250d:5a5 with SMTP id d2e1a72fcca58-845b44eb213mr2676677b3a.16.1782396764267;
        Thu, 25 Jun 2026 07:12:44 -0700 (PDT)
Received: from localhost.localdomain ([117.133.183.252])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-845a40d23d7sm4838015b3a.30.2026.06.25.07.12.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2026 07:12:43 -0700 (PDT)
From: Baineng Shou <shoubaineng@gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Thu, 25 Jun 2026 22:12:27 +0800
Message-Id: <20260625141227.38931-1-shoubaineng@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: shoubaineng@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MQN2F23YL3AN3BITK22SI4ETSGSP2HGG
X-Message-ID-Hash: MQN2F23YL3AN3BITK22SI4ETSGSP2HGG
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:06:28 +0000
CC: Tvrtko Ursulin <tursulin@ursulin.net>, Philipp Stanner <phasta@kernel.org>, Akash Goel <akash.goel@arm.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org, Baineng Shou <shoubaineng@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-fence: Fix dma_fence_timeline_name() to call get_timeline_name()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MQN2F23YL3AN3BITK22SI4ETSGSP2HGG/>
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
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tursulin@ursulin.net,m:phasta@kernel.org,m:akash.goel@arm.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:shoubaineng@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[shoubaineng@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[ursulin.net,kernel.org,arm.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:-];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shoubaineng@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4863C6C7BA7

dma_fence_timeline_name() incorrectly invokes ops->get_driver_name()
instead of ops->get_timeline_name(), so every caller receives the
driver name where the timeline name was expected.

This is a copy-paste regression that has resurfaced twice. It was
originally introduced by commit 62918542b7bf ("dma-fence: Fix sparse
warnings due __rcu annotations") when adding the __rcu casts, fixed
by commit 033559473dd3 ("dma-fence: Fix safe access wrapper to call
timeline name method"), and then accidentally reintroduced by commit
e58b4dea9054 ("dma-buf/dma-fence: Add dma_fence_test_signaled_flag()")
when both wrappers were refactored to use the new helper.

Signed-off-by: Baineng Shou <shoubaineng@gmail.com>
---
 drivers/dma-buf/dma-fence.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
index b3bfa6943a8e..5292d714419b 100644
--- a/drivers/dma-buf/dma-fence.c
+++ b/drivers/dma-buf/dma-fence.c
@@ -1202,7 +1202,7 @@ const char __rcu *dma_fence_timeline_name(struct dma_fence *fence)
 	/* RCU protection is required for safe access to returned string */
 	ops = rcu_dereference(fence->ops);
 	if (!dma_fence_test_signaled_flag(fence))
-		return (const char __rcu *)ops->get_driver_name(fence);
+		return (const char __rcu *)ops->get_timeline_name(fence);
 	else
 		return (const char __rcu *)"signaled-timeline";
 }
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
