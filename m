Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8P4tGq4L4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:17:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4A94118A9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:17:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B48B4050B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:17:49 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id DC6D04016A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 21:33:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=aRVA6BzO;
	spf=pass (lists.linaro.org: domain of echanude@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=echanude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1768340003;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ix94cAHm6joBtNxj2zTeHiWa8RvsRVDwgdWzBk5YVco=;
	b=aRVA6BzOXoId2BBHrLBFW3L3KFLJnxvBci1OWF36wzNRRuVC2B3U5npG2SDRybMJgrdkYA
	OR7cPTO3+SYBumVUxoyZc9K93l0OKuxWLap7AKoAf43F/J977q9lTXPY9do8kirWbRJRrI
	ZHzXTKDWoJvesVVBymvSFl4AEvfAifo=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-246-RDi57gPuOLWHI0K7BUlT6A-1; Tue, 13 Jan 2026 16:33:20 -0500
X-MC-Unique: RDi57gPuOLWHI0K7BUlT6A-1
X-Mimecast-MFC-AGG-ID: RDi57gPuOLWHI0K7BUlT6A_1768339999
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b2e235d4d2so3115348085a.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 13:33:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768339999; x=1768944799;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ix94cAHm6joBtNxj2zTeHiWa8RvsRVDwgdWzBk5YVco=;
        b=r2vl6h9tyIg44ez7kOXwSQZEggxtfch7so2IVJ8ab+1qiCe0UpP80V12HBWGbFdAVY
         UhEjCU4O2i/xQzkGQiA40AJPliTZrBR7GDx623IGunVuZCq3rrFkNKFTcU9l4wVaxCTS
         oEDwVFnqjyahEvXic9iUpCp+EgRYoeX7kI5y7ENtecQjIGykLNpShqhoF+tEyMjN0USM
         vY3XOb2g5JZoKSAPh0mCveuVY9bo/eF6RHNRr79+eARNwpr0+VSmVqgi9GCCPZpcSCF7
         gcgGUllIu4gl5l17iJk6il8O+/MFq/DOaCkJooyBF71UoYgkWPbplEzoCO4eXI2GrWm1
         hnsw==
X-Forwarded-Encrypted: i=1; AJvYcCUR9zfuLuWokGwbb8OnUNmaafUE7OWR1ecO7KO/eDIJWXfmxZxiyIMX1zfMw9EpN6oEoh7ypnrS8toeP1Tk@lists.linaro.org
X-Gm-Message-State: AOJu0YxNrAm6bVWRlW0m/EZIq6ZlSxczMOBPvPDd+9xa16AEg2N7hfdS
	B8zDJHIJFJkC+Pb1Q35r0aEAALw1+rb3qJ5ovnr7xsIchTIvIRXp63qmVE0vrXam4fTDe0a2Q0a
	H6FUsXvX5wOc4NGsjPP3xWpgttcLFahr+WZidL6O1fpgJXOZ8nbFlaFfpTT2kX2ornYgDHOxKXF
	ZgsXqlO3Zv0qgmw5mqdUligElcO3lXL+yNQVWMFZ+1zNPus7fUvPAB
X-Gm-Gg: AY/fxX5QbPdp6MA6yugi55Q4Cf0sDCh25cei9gQcLlM5XtM2m2tUF5fIKQp4nvYEKxq
	wgF8yNLjzt3UtVeI2i9uNIWo0Lv2pZSWppBt4okXC/BJ0NkhWx/n+K0kJB6rO3My+ph0jL4gfX1
	mecQaiUu3num5tdC8yQ29a+HobME3q3a3HNyp8PXohgpAztzE4jP44LTg3LrubYJ7I01GIyG0ND
	DbEvt9SptW/zCstkX3TGTAKI8vESEsZx9s7yIslMSa2ltrxVirDORsOTfbV4u5fBF18GnitGjQn
	nMvOv06UT+nnhExagcCAA146t5sAXLq0Syd9FZeb171DPaTZlxahfKXMi6Haotsu9HNvzMmG/HF
	NH5utbxQyCYwXMDVTB4tmrwCUi2MqEaZoPqeLmOsYnldqape7sms=
X-Received: by 2002:a05:620a:1a1b:b0:8b2:77aa:73d3 with SMTP id af79cd13be357-8c52fb37f7cmr83797885a.2.1768339998816;
        Tue, 13 Jan 2026 13:33:18 -0800 (PST)
X-Received: by 2002:a05:620a:1a1b:b0:8b2:77aa:73d3 with SMTP id af79cd13be357-8c52fb37f7cmr83793585a.2.1768339998302;
        Tue, 13 Jan 2026 13:33:18 -0800 (PST)
Received: from localhost (pool-100-17-20-16.bstnma.fios.verizon.net. [100.17.20.16])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8907726041fsm172437926d6.45.2026.01.13.13.33.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 13:33:17 -0800 (PST)
From: Eric Chanudet <echanude@redhat.com>
Date: Tue, 13 Jan 2026 16:32:45 -0500
MIME-Version: 1.0
Message-Id: <20260113-dmabuf-heap-system-memcg-v2-2-e85722cc2f24@redhat.com>
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
X-Mimecast-MFC-PROC-ID: yuj_iE3H4sXKxAYLjifzy3uGJ8LgG_cDWbYbnh2T5Rk_1768339999
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: -----
X-MailFrom: echanude@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: S4PORX3M2UFS7VYDHG2ZGZ2BEW3NAIOX
X-Message-ID-Hash: S4PORX3M2UFS7VYDHG2ZGZ2BEW3NAIOX
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:11:56 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Eric Chanudet <echanude@redhat.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 2/2] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S4PORX3M2UFS7VYDHG2ZGZ2BEW3NAIOX/>
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
	NEURAL_HAM(-0.00)[-0.821];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 2D4A94118A9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The system dma-buf heap lets userspace allocate buffers from the page
allocator. However, these allocations are not accounted for in memcg,
allowing processes to escape limits that may be configured.

Pass __GFP_ACCOUNT for system heap allocations, based on the
dma_heap.mem_accounting parameter, to use memcg and account for them.

Signed-off-by: Eric Chanudet <echanude@redhat.com>
---
 drivers/dma-buf/heaps/system_heap.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
index 4c782fe33fd497a74eb5065797259576f9b651b6..139b50df64ed4c4a6fdd69f25fe48324fbe2c481 100644
--- a/drivers/dma-buf/heaps/system_heap.c
+++ b/drivers/dma-buf/heaps/system_heap.c
@@ -52,6 +52,8 @@ static gfp_t order_flags[] = {HIGH_ORDER_GFP, HIGH_ORDER_GFP, LOW_ORDER_GFP};
 static const unsigned int orders[] = {8, 4, 0};
 #define NUM_ORDERS ARRAY_SIZE(orders)
 
+extern bool mem_accounting;
+
 static int dup_sg_table(struct sg_table *from, struct sg_table *to)
 {
 	struct scatterlist *sg, *new_sg;
@@ -320,14 +322,17 @@ static struct page *alloc_largest_available(unsigned long size,
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
