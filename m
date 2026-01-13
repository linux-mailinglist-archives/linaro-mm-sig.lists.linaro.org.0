Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2HP1DqkL4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:17:45 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E50284118A2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:17:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ADE01404EA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:17:43 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id C304E40153
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 21:33:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=AlF2aA3g;
	spf=pass (lists.linaro.org: domain of echanude@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=echanude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1768339999;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=K1tY2jOzHY+cvWTFhoRqTcHQY4mx0y53P502cs7Wi0g=;
	b=AlF2aA3ghj+Mfpyz1qTUl32W0qRDHTmz95c6OVPC6yrT6heMPhlKegZ5KNJYPVzB/KsO3j
	X4fBW0rEaU1W7b/Xzna/J+gcpCOcwNvFQ8Ed0v4v8abgTvTqIbJBwAEeSDNdmEN4INuLGt
	zsVWffOCcflwbMXR+8U5DQkq3ebYGG0=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-637-uMPbfcocPQKacnU_x7uYxw-1; Tue, 13 Jan 2026 16:33:18 -0500
X-MC-Unique: uMPbfcocPQKacnU_x7uYxw-1
X-Mimecast-MFC-AGG-ID: uMPbfcocPQKacnU_x7uYxw_1768339998
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50148a2a5baso3330711cf.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 13:33:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768339997; x=1768944797;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=K1tY2jOzHY+cvWTFhoRqTcHQY4mx0y53P502cs7Wi0g=;
        b=MRZXAR7sjwFpg0AsQvdtSqoE49l5GEZaSzGIQaTu8UPGr9/WZ17BI+yFIW8NJe2t2W
         UjE7XvjBbg5JCksG8IVJ2MMpF719ot2e7wSPDr9Xpg1Ro+XxGjRqBtAbzT0pyDXp90rp
         RaNCHwl3ypfFtgtGcnbAfew6cRPudNK+4XFNi3keh6FxLNWTGn1ggo0bj4xit8yLTOMk
         2BJt+aLh5YO5thr9wwIQab3bzSPncrPJAqu+6gpBGY/28QON+vuzbFfvQC5x3gzhNWf0
         iUGFvkz/KLMdyd/EzTpd1OZTr8+NOJZolLBeROrpEgf5AWnZ3vo37hRlO2JYeRblz5QN
         xBcw==
X-Forwarded-Encrypted: i=1; AJvYcCXybd3efh+8x9Zxv1US8X1MTQjeUQag/pA5kurGMr/+RRTE7ZK6VNJ6rmscUNIgv6n1wQN6AlUQYTsHEEmd@lists.linaro.org
X-Gm-Message-State: AOJu0YywJ8yGpnmTQ+OwyWB03Sm2bRYQ2AbNVr3U5S/TLz/FusmUqwrJ
	xKvH1WnhUcJNucmqq9cHttSj3DRzReqp3WWzWnY6A5mw1B4FeDZQ90AcVFA626aUeJhOX4/OSAk
	iCPeSlmUgid4WuzAYtl1XN1Zs14mvYToQL004TupPuEto/RizPPrGLN6CIVs5hlz9JYUHTGLfol
	WFwkoi7qZ1EsPTHCLwOysBssOffIybimEzQhz6miAl+cePhrgPFRIz
X-Gm-Gg: AY/fxX6UcBITbxELC4p0SviZVW/RPZ5JDBOrlru4Z3BvNoH+D1Z0fyRSOYVcIGp7s3/
	n5r8k8IltBaMnvRArwQxMhrWKB4Vck3Zz9an6wKa1nzMuwitBCiGBKeOG42XBk+awIVG/hstVRC
	oyayFQSzqcV5n1hTtQe5MI/htG64LoVlCF89MdkvG/Con+4P9aZnFUGE5IMwopsuVamoEjqkPYm
	LLe07f6U36hi5XKvEqaeFyHShAmjCGl6agkrhsY/4XgMTWqqA9Ieo3FFxIPEyj4Yvi/8UYMVMLC
	OZVp4e2cRJU36hzA4rB9Sf6h5qo6kgaSb6GckCfOPzT1QXokbJjIYVJU6gPMjRmBpuMRTIDOho1
	kTmoy8nxWxn4CjpnFefJjMyibztN2UrLohlJp3e1kYjjCmWX7xWg=
X-Received: by 2002:ac8:58d4:0:b0:4ed:bb39:9a60 with SMTP id d75a77b69052e-5014846b14dmr8397001cf.40.1768339996994;
        Tue, 13 Jan 2026 13:33:16 -0800 (PST)
X-Received: by 2002:ac8:58d4:0:b0:4ed:bb39:9a60 with SMTP id d75a77b69052e-5014846b14dmr8396511cf.40.1768339996449;
        Tue, 13 Jan 2026 13:33:16 -0800 (PST)
Received: from localhost (pool-100-17-20-16.bstnma.fios.verizon.net. [100.17.20.16])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50148df8305sm1253971cf.9.2026.01.13.13.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 13:33:15 -0800 (PST)
From: Eric Chanudet <echanude@redhat.com>
Date: Tue, 13 Jan 2026 16:32:44 -0500
MIME-Version: 1.0
Message-Id: <20260113-dmabuf-heap-system-memcg-v2-1-e85722cc2f24@redhat.com>
References: <20260113-dmabuf-heap-system-memcg-v2-0-e85722cc2f24@redhat.com>
In-Reply-To: <20260113-dmabuf-heap-system-memcg-v2-0-e85722cc2f24@redhat.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Maxime Ripard <mripard@redhat.com>
X-Mailer: b4 0.14.2
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: OImtAEuhARcqPpBNbmlCsGWUxXc_dFeWDxj_aZJcc4E_1768339998
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: -----
X-MailFrom: echanude@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: K4YD4YZTCQOINV4HPQPDBEX2MHXEZQOX
X-Message-ID-Hash: K4YD4YZTCQOINV4HPQPDBEX2MHXEZQOX
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:11:56 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Eric Chanudet <echanude@redhat.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 1/2] dma-buf: heaps: add parameter to account allocations using cgroup
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/K4YD4YZTCQOINV4HPQPDBEX2MHXEZQOX/>
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
	DATE_IN_PAST(1.00)[2226];
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
	NEURAL_HAM(-0.00)[-0.804];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: E50284118A2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a parameter to enable dma-buf heaps allocation accounting using
cgroup for heaps that implement it. It is disabled by default as doing
so incurs caveats based on how memcg currently accounts for shared
buffers.

Signed-off-by: Eric Chanudet <echanude@redhat.com>
---
 drivers/dma-buf/dma-heap.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
index 8ab49924f8b71a0272dc89a609539a429feaf6c8..f72e93cb8367fa196e5b87e762a60463023887df 100644
--- a/drivers/dma-buf/dma-heap.c
+++ b/drivers/dma-buf/dma-heap.c
@@ -49,6 +49,11 @@ static dev_t dma_heap_devt;
 static struct class *dma_heap_class;
 static DEFINE_XARRAY_ALLOC(dma_heap_minors);
 
+bool mem_accounting;
+module_param(mem_accounting, bool, 0444);
+MODULE_PARM_DESC(mem_accounting,
+		 "Enable cgroup-based memory accounting for dma-buf heap allocations (default=false).");
+
 static int dma_heap_buffer_alloc(struct dma_heap *heap, size_t len,
 				 u32 fd_flags,
 				 u64 heap_flags)

-- 
2.52.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
