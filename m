Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /BECOgTjQWr3vQkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 05:14:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5F46D59FF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 05:14:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=ihR3gjI9;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3582040A52
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 03:14:09 +0000 (UTC)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	by lists.linaro.org (Postfix) with ESMTPS id 657F94015E
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jun 2026 03:13:58 +0000 (UTC)
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-8478fe07f0fso100195b3a.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 28 Jun 2026 20:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782702837; x=1783307637; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vIf1UjIu4HobsLfku1GIoLJNf/dF/mUSSo+eQGmmVZs=;
        b=ihR3gjI9uZd40DqDJmnOaMllu7goK/AWGSMokxPEKR2kwDO46mUMKDHn1758oGJ9Rg
         z911tLWlFzxmDUhmxqObbFmlFer7f9n9qRkoT5vBIjZIZyc7QO45HSgxsZyoXs9QYeFr
         HhnjVWSInGAjSwM9e1nrxNbMWMM7mhspsZTRk8tjnGJ11BlYx5Cfw9+LoFyIOGawApbF
         FwXpPK/ILp1Ct3VFosUfnL3zYdh+5pQ7XFBZhY8yFDRtAt8OC5cdnx7MJupZxlFjbCQo
         qCYlevkRMQjvWWIue2zyqxYidHOeqbqwluqwicJlrKAdB/mFO1+MqdaRxfMpF+5KGZVN
         ASwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782702837; x=1783307637;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vIf1UjIu4HobsLfku1GIoLJNf/dF/mUSSo+eQGmmVZs=;
        b=DpC3NGQzsUmBgVIhCFVL237D+WxsVsZKMzZM2FIXGUaR/q1u56mt79Qty6g30EmTnj
         TKJRwCuTEP9kfkN3UVEewUNFXlyFwtakmxBW3OJruH6XnGZnBhE+636QnZ8ot1PFSQUG
         fqfN3BXQuKmqt32MsFRjQ4MQJqO9ZRPeKzYZRsyy++hTWyL9OMejENetETQ9p8WmWx2h
         5SJzwGZfV+QpNejJgd/QlcMMaUM8uSrL5szWvK9TJwxPe717VpTT7tOLMJH+ukm70UtY
         fQ7IBRBxeMUtO9g8xUzYE0ppPRFTUownzHqsCwBLWM+m1UcMTbVLuIRdVYVzeBwK4P7A
         wRMA==
X-Forwarded-Encrypted: i=1; AHgh+Rq0xLL45bFbuV1qlNBnj1QXD76CWuAsTOIhsXaohQRVL7LmRpcWdb+xoXlmUL//zIoPC9KlbR3ItXKIPeKt@lists.linaro.org
X-Gm-Message-State: AOJu0YwuTqRz1K5VA5W0UjJMpt7KOwHQqVXtPpvEgNUTNDyVi4VvY9lL
	Oxge/hxarpSmUZCxcUs7vFwfFGLCS0Ps8sTOuj29rfdOeQ4p0sjowpUj
X-Gm-Gg: AfdE7cnSMGb9IWiYnO2PqzwQDaQnoVkv/IHn3bK6uHTChnIKdFuQms7yLWgdAT9wEaP
	Mg15jwfNmjDjesIjUSUQq033KAlpzmZ95OVjpmySIIqp4XxU6qBKRaEGt2LZsIwkuGe9NtF8P4h
	VQDDTAzZsapT89RUFSHOUs3ijJ5ce6JNTw3LRxP8puKFAi0FHPhBaXDe4QTXLVNpUiS35EIOT6V
	CzjUbOLaxi7sdHXk7azoOLm8AlgJQfREsQftjUk9Wv4DXfjaSVqZ76gyEBwOv0Fqpvp4Intc2jL
	ztbC1Yr3lqQlY0KZ5EbLLIOkOHBeH6K06m9qIju/98GAhkDupjIlBqawyDGpBN2L3GWNWwHPmLs
	o97SZ7bbJy+a/840YJCzxtYuxqcAlwVj0NYyQKnYIEEg5nBmn+fYKJC917f7oCLTWBr1Gs6uzLv
	rAzZPFi3YHH/DohQxM7qNZ6D2rSwVP
X-Received: by 2002:a05:6a00:94f1:b0:847:88eb:1e00 with SMTP id d2e1a72fcca58-84788eb24femr987190b3a.49.1782702837428;
        Sun, 28 Jun 2026 20:13:57 -0700 (PDT)
Received: from localhost.localdomain ([117.133.183.252])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-845a4121fdbsm10761359b3a.51.2026.06.28.20.13.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2026 20:13:57 -0700 (PDT)
From: Baineng Shou <shoubaineng@gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Mon, 29 Jun 2026 11:13:46 +0800
Message-Id: <20260629031346.3875683-1-shoubaineng@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spamd-Bar: --
Message-ID-Hash: S3XDFOR54L7K6X4VQ2KYM7HROJWIGKVZ
X-Message-ID-Hash: S3XDFOR54L7K6X4VQ2KYM7HROJWIGKVZ
X-MailFrom: shoubaineng@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Tvrtko Ursulin <tursulin@ursulin.net>, Philipp Stanner <phasta@kernel.org>, Akash Goel <akash.goel@arm.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org, Baineng Shou <shoubaineng@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-fence: Make dma_fence_dedup_array() robust against 0-count input
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S3XDFOR54L7K6X4VQ2KYM7HROJWIGKVZ/>
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
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tursulin@ursulin.net,m:phasta@kernel.org,m:akash.goel@arm.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:shoubaineng@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[shoubaineng@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[ursulin.net,kernel.org,arm.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	FROM_HAS_DN(0.00)[];
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
X-Rspamd-Queue-Id: 6E5F46D59FF

dma_fence_dedup_array() returns 1 when called with num_fences == 0:
the for-loop body never executes, j stays at 0, and the final
`return ++j` yields 1. This contradicts both the kernel-doc ("Return:
Number of unique fences remaining in the array") and the natural
expectation that 0 input gives 0 output.

All in-tree callers currently filter num_fences == 0 before invoking
this helper (__dma_fence_unwrap_merge() bails out via the
`if (count == 0 || count == 1)` fast path; amdgpu_userq_wait_*()
cannot reach the dedup call with a zero local count because the
amdgpu_userq_wait_add_fence() helper guarantees num_fences stays in
[0, wait_info->num_fences], and wait_info->num_fences > 0 is enforced
at the ioctl entry).

However, dma_fence_dedup_array() is EXPORT_SYMBOL_GPL, so any future
caller that forgets to pre-filter the zero case will get a misleading
return value of 1. Depending on how that caller uses the result, it
could dereference an uninitialized fence slot in the array, since the
caller's array may have been allocated but not yet populated.

Make the contract match the documentation by returning 0 early. This
also skips an unnecessary sort() call on an empty array.

Signed-off-by: Baineng Shou <shoubaineng@gmail.com>
---
 drivers/dma-buf/dma-fence-unwrap.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/dma-buf/dma-fence-unwrap.c b/drivers/dma-buf/dma-fence-unwrap.c
index 53bb40e70b27..364cbf79ad73 100644
--- a/drivers/dma-buf/dma-fence-unwrap.c
+++ b/drivers/dma-buf/dma-fence-unwrap.c
@@ -97,6 +97,9 @@ int dma_fence_dedup_array(struct dma_fence **fences, int num_fences)
 {
 	int i, j;
 
+	if (!num_fences)
+		return 0;
+
 	sort(fences, num_fences, sizeof(*fences), fence_cmp, NULL);
 
 	/*
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
