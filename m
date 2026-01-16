Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBHSFzoM4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:20:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0D241198F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:20:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2BAC8404EC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:20:09 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id F05A2401B4
	for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Jan 2026 20:06:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=Dg0U2ryx;
	spf=pass (lists.linaro.org: domain of echanude@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=echanude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1768593997;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=twwZ6029cLkDAYezw98Z3f9QT2dYne/kukXgOmvL3oQ=;
	b=Dg0U2ryxpEGmD3kaDOKxWNF8Q7hthcuBEJNS8dJvtQKUNKgc86O+u5NkH2xkGed9UWFbU2
	VHSADqBhY1joSzIpNX+Iclu9BPmra+dR9gPUENYyVrhl5Bc79edtub0Fv1JkpzdEX3cPZI
	htI/bEa932lajUWcjKABfVYe+R0USZE=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-106-IXaDwz6zPxW9kCbWYYC4PA-1; Fri, 16 Jan 2026 15:06:36 -0500
X-MC-Unique: IXaDwz6zPxW9kCbWYYC4PA-1
X-Mimecast-MFC-AGG-ID: IXaDwz6zPxW9kCbWYYC4PA_1768593996
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c52d3be24cso342958985a.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Jan 2026 12:06:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768593996; x=1769198796;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=twwZ6029cLkDAYezw98Z3f9QT2dYne/kukXgOmvL3oQ=;
        b=a3KZQ1lkeeptuTap23bakTFuJMbkwc3uV5C33doKnWMZJZrJHLQP4KEIqgffwFSOXH
         +UrAjRD/6c4NgNSmlh13T9fLk5Jo9alwDXLrUQv+SzaMzEj+MuKELAibmP+aG3+pbWXj
         bZdqD9kNWhOUrKomucKc3m3lEoAtA7mDvbVkSsCtePvIhFP+t4RfXhoGMXQM1h2dUQZk
         2wom8NqRJmRDyzwDJ9mJCamFvor0wK7eO4Q+SdaLdccCCZbfd8ZFJhkoS6YDEYt08QJu
         6tfP50Mt5eThTMxym4jSFlEJW1zEPsnDT17mOs7rQ2ROu6aqfgzTg9TPNhKi/d63eavb
         +BcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXh2S3++wYSd3y8Kx9duXRBKMnIOP1eqrsfWZ6Q7Smj7Y1gkPTwrg7vG28BP78HP4QwZWTnZcpPSp9iW4og@lists.linaro.org
X-Gm-Message-State: AOJu0YwbzQ6+t9RrFhKfZO0vzjyG+5UcoAt/8nhzAFjorsU0hzOdPoT7
	XDsISmY3QWN2N2XZNkTOCSgaXQlAza+dGX8fkMSa2u1EWkDPs17jrXk5MwVzn5nx4JmJHoQGhs9
	R5qDPORLtyBCpalMr9Z9ldraW/IDcFuW5ZdInUD8mqTr9v2tvTKvZ950vG8S9ndKOX+v4
X-Gm-Gg: AY/fxX4BV40obM3MPlAdDt0m9jizJFa7f8Kq2OMl/8dJBe9awyMM4JTILvbrUCL9EaE
	TFecCd00AGn+dbMS1qu/j8eHcLjfDXDmbrGV1uc92nbgIJpiGH9tdZ8Sk+NIQu0f329FdwLDbiW
	RyxV7qiCdgb4+own89xTbkAKjFkbJGJXbimtzBfPD0xg8cPvpCdkp41prhfcLhcnKkrd6frDfcN
	PL+406SOQCxGylF05w3QYeZc1uZkNye6HUnTgYFTSNEqd0+JojUNYkJMwA9vl/E96pW6luDZVm2
	NySrZF0I1RlJqxcAcs/92We2hu2yv4LqvzMs7Wx5SQakL6TFkdUpCa7xj39d72aR+0jBIq9fF91
	VdfPTnVX0H/iFJVpX+rVtThc0hPZ02hK240MEYkcjjNGi7aRGynA=
X-Received: by 2002:a05:620a:45a8:b0:88f:e620:21cd with SMTP id af79cd13be357-8c6a67b093emr567595385a.62.1768593995553;
        Fri, 16 Jan 2026 12:06:35 -0800 (PST)
X-Received: by 2002:a05:620a:45a8:b0:88f:e620:21cd with SMTP id af79cd13be357-8c6a67b093emr567588885a.62.1768593994868;
        Fri, 16 Jan 2026 12:06:34 -0800 (PST)
Received: from localhost (pool-100-17-20-16.bstnma.fios.verizon.net. [100.17.20.16])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6a71bf2b0sm297117485a.12.2026.01.16.12.06.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 12:06:33 -0800 (PST)
From: Eric Chanudet <echanude@redhat.com>
Date: Fri, 16 Jan 2026 15:05:38 -0500
MIME-Version: 1.0
Message-Id: <20260116-dmabuf-heap-system-memcg-v3-1-ecc6b62cc446@redhat.com>
References: <20260116-dmabuf-heap-system-memcg-v3-0-ecc6b62cc446@redhat.com>
In-Reply-To: <20260116-dmabuf-heap-system-memcg-v3-0-ecc6b62cc446@redhat.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Maxime Ripard <mripard@redhat.com>
X-Mailer: b4 0.14.2
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: OgFXgzleMHTN2cvkMuqeHd848cDtDtqQBgy_DmI-ZTM_1768593996
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
X-MailFrom: echanude@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3ZBSNBEQAKB2TWKCZNN5W7ASV6WLCW3K
X-Message-ID-Hash: 3ZBSNBEQAKB2TWKCZNN5W7ASV6WLCW3K
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:08 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Eric Chanudet <echanude@redhat.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 1/2] dma-buf: heaps: add parameter to account allocations using cgroup
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3ZBSNBEQAKB2TWKCZNN5W7ASV6WLCW3K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[2156];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[echanude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.794];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 1C0D241198F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a parameter to enable dma-buf heaps allocation accounting using
cgroup for heaps that implement it. It is disabled by default as doing
so incurs caveats based on how memcg currently accounts for shared
buffers.

Signed-off-by: Eric Chanudet <echanude@redhat.com>
---
 drivers/dma-buf/dma-heap.c | 5 +++++
 include/linux/dma-heap.h   | 2 ++
 2 files changed, 7 insertions(+)

diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
index 8ab49924f8b71a0272dc89a609539a429feaf6c8..d230ddeb24e0fa1f2d51cb5d2868ec54fc8376a8 100644
--- a/drivers/dma-buf/dma-heap.c
+++ b/drivers/dma-buf/dma-heap.c
@@ -49,6 +49,11 @@ static dev_t dma_heap_devt;
 static struct class *dma_heap_class;
 static DEFINE_XARRAY_ALLOC(dma_heap_minors);
 
+bool __read_mostly mem_accounting;
+module_param(mem_accounting, bool, 0444);
+MODULE_PARM_DESC(mem_accounting,
+		 "Enable cgroup-based memory accounting for dma-buf heap allocations (default=false).");
+
 static int dma_heap_buffer_alloc(struct dma_heap *heap, size_t len,
 				 u32 fd_flags,
 				 u64 heap_flags)
diff --git a/include/linux/dma-heap.h b/include/linux/dma-heap.h
index 27d15f60950a2093e592be1b961c02e672826e58..648328a64b27eaf25c8b18809a02c6410cbbffde 100644
--- a/include/linux/dma-heap.h
+++ b/include/linux/dma-heap.h
@@ -46,4 +46,6 @@ const char *dma_heap_get_name(struct dma_heap *heap);
 
 struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info);
 
+extern bool mem_accounting;
+
 #endif /* _DMA_HEAPS_H */

-- 
2.52.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
