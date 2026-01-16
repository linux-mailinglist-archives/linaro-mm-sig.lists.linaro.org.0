Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WHhQOT8M4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:20:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C9060411996
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:20:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D76AB40503
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:20:14 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 5FE51401BE
	for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Jan 2026 20:06:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=DSP7+4mq;
	spf=pass (lists.linaro.org: domain of echanude@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=echanude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1768594000;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PAII7mTGSKHnVbVtbYqYnUY14STvK0vS9h+9Pl6qxlo=;
	b=DSP7+4mqJjxPlLvRnUf+fE+xGTiRVv/irHBBicGD4PTkTIrrSklfDUEaczP88QgeSsrC04
	m7rd/B6SK9mivlVTxrNzKd2Vj+4mE2D0l7hUuIyjvykMNLiPS1Ovt+rpOu+FTju6F02Ot2
	YWo3wQKnRWda8gn7420PalAPf57fhSw=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-522-nFJpHDxjOFWNxDb8DBHyYA-1; Fri, 16 Jan 2026 15:06:38 -0500
X-MC-Unique: nFJpHDxjOFWNxDb8DBHyYA-1
X-Mimecast-MFC-AGG-ID: nFJpHDxjOFWNxDb8DBHyYA_1768593998
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5013be25d41so75568721cf.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Jan 2026 12:06:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768593998; x=1769198798;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PAII7mTGSKHnVbVtbYqYnUY14STvK0vS9h+9Pl6qxlo=;
        b=V5xL2ILdttDXjZYcl/qsJZ2yNboICVkADrEfCKJGAhhWMOLtL8LdOcl8QTc4sBW60J
         1dZtWJ6gWFluvHLW3UEXre0pYgVO+frQi1Wzm99RlmnTtb75DtV5Zr0OxjKdMMsuYFWE
         oFo3J+dNne1Up86I8e/9LPzR8I8atbgZJk9hLpwtb95uaQ8+ksDjbtqmVKKK4wOO7d53
         lSdmbk7Q1imX5DgfSXNDDjiSz7qr3FS4/+n3ROsNoe4dn+zgeQmFU3XOKwCryxxyoUfz
         ucJiTEjnyGEyrpiT+iNLL8fydPD4NFE5u0Yh1X7OAXnLyHn70C8F9WtF421IFyvfwZfP
         lIWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWt9U9ecKCvdAHV2u0WG8ECJ2iW1OSdqRqSrhXgH8YmFH3JAguSkRjRiri5pNVLLPdlC5iiERY0F82d+xai@lists.linaro.org
X-Gm-Message-State: AOJu0YyfsiQHvT7BwIonF1/GpcCXx/Gd+y9dmbcrIOrFeuSfqakIBiR1
	NMe7HNmgKFYbLOW2k+6txQ7Nq2HYw1GyAfh82fANvWG7OmE6UjbiI7io0o7XJzLO1dWHgOx/JDk
	POS5U/aB0aqqtdC590dyZy/RMQKxH6r1IzSqqa5p9S3qtLD5Ih81FEaceIrVqzrfPMFGR
X-Gm-Gg: AY/fxX6hQhB6BU2TS02G5CPGOYExO75klVKxFHRl5W3OZhjnOuaPD93slKfRgL59agy
	fKRve2qOve83IPkQAb2oPW9Lk1CoMQMRLKxeE49tSn18oB6O2oiesWEy+zgEolM0FSXP6cBM82F
	R2KuXt6kqsf9gc9AvKwqYegZ8a0wI7WRIpqOQkAV9AN46oEDunCCjPbhvDQD5iFHeUsh3yzhVEk
	R4NkSECpO0d6tl2Xud45mrAdZ7fAZqnoq1RVWptTmlbFK6YmFoJ5xQG3NpmOsJqxlfh/SwosNrP
	ndnpB1az2prXnVjsluWUpMW0u8vWsHI/Abue20FdgahOXX+ksnubjavpMpey7Z7yXlEXuBuuc8x
	oBoZ59A5MIw8BCgOU46ai+dmWeebCtVuzVmlfUhFILQ6y1D23E5s=
X-Received: by 2002:ac8:588f:0:b0:4f3:5816:bd8d with SMTP id d75a77b69052e-502a179ca4fmr63770311cf.62.1768593997947;
        Fri, 16 Jan 2026 12:06:37 -0800 (PST)
X-Received: by 2002:ac8:588f:0:b0:4f3:5816:bd8d with SMTP id d75a77b69052e-502a179ca4fmr63769841cf.62.1768593997449;
        Fri, 16 Jan 2026 12:06:37 -0800 (PST)
Received: from localhost (pool-100-17-20-16.bstnma.fios.verizon.net. [100.17.20.16])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-502a1efb0b2sm28738281cf.29.2026.01.16.12.06.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 12:06:35 -0800 (PST)
From: Eric Chanudet <echanude@redhat.com>
Date: Fri, 16 Jan 2026 15:05:39 -0500
MIME-Version: 1.0
Message-Id: <20260116-dmabuf-heap-system-memcg-v3-2-ecc6b62cc446@redhat.com>
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
X-Mimecast-MFC-PROC-ID: co_pdVjupChUgs_6lr2bDbTkMyiw20uI30HviUQp4bw_1768593998
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
X-MailFrom: echanude@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EJ3K2ZJBYIEO3OXNZIXT36TL2EV6EXIR
X-Message-ID-Hash: EJ3K2ZJBYIEO3OXNZIXT36TL2EV6EXIR
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:09 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Eric Chanudet <echanude@redhat.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 2/2] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EJ3K2ZJBYIEO3OXNZIXT36TL2EV6EXIR/>
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
	NEURAL_HAM(-0.00)[-0.813];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: C9060411996
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The system dma-buf heap lets userspace allocate buffers from the page
allocator. However, these allocations are not accounted for in memcg,
allowing processes to escape limits that may be configured.

Pass __GFP_ACCOUNT for system heap allocations, based on the
dma_heap.mem_accounting parameter, to use memcg and account for them.

Signed-off-by: Eric Chanudet <echanude@redhat.com>
---
 drivers/dma-buf/heaps/system_heap.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
index 4c782fe33fd497a74eb5065797259576f9b651b6..4049d042afa14ec2f4d034f59f1740600a20c1e5 100644
--- a/drivers/dma-buf/heaps/system_heap.c
+++ b/drivers/dma-buf/heaps/system_heap.c
@@ -320,14 +320,17 @@ static struct page *alloc_largest_available(unsigned long size,
 {
 	struct page *page;
 	int i;
+	gfp_t flags;
 
 	for (i = 0; i < NUM_ORDERS; i++) {
 		if (size <  (PAGE_SIZE << orders[i]))
 			continue;
 		if (max_order < orders[i])
 			continue;
-
-		page = alloc_pages(order_flags[i], orders[i]);
+		flags = order_flags[i];
+		if (mem_accounting)
+			flags |= __GFP_ACCOUNT;
+		page = alloc_pages(flags, orders[i]);
 		if (!page)
 			continue;
 		return page;

-- 
2.52.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
