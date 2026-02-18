Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBCLD8cS4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:48:07 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 00034411FA2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:48:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A81A404E9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:48:06 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id A52D3402B2
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Feb 2026 17:15:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=YXCsPxHS;
	spf=pass (lists.linaro.org: domain of echanude@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=echanude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771434906;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RWROfJdWhlgxA5rcp8Pj9VJ7m2fa4/nREAlFrPf4oa8=;
	b=YXCsPxHS1XoX08qE57J0uO7e/ABt0x88xarlYiF/w53DJw+CzcGQu5QZT03kWGkmUJR0I1
	ztPbZHxEQZdla14VZAnCtVR8tyT+aAIL4u/Ug64CWRL7fivBRVe//5hZEV92Iz+pjkNkw8
	m1aXzlNb8PAxpvuyAFbJtsArMQqkf7w=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-463-hfG57qRhNIynk45u2gZNjQ-1; Wed, 18 Feb 2026 12:15:05 -0500
X-MC-Unique: hfG57qRhNIynk45u2gZNjQ-1
X-Mimecast-MFC-AGG-ID: hfG57qRhNIynk45u2gZNjQ_1771434905
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-896fae40578so4080856d6.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Feb 2026 09:15:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771434904; x=1772039704;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RWROfJdWhlgxA5rcp8Pj9VJ7m2fa4/nREAlFrPf4oa8=;
        b=EZ47pQ0FF0TjKE6n8lkHfDcyKoblsARsX7IvQ7wf1FuwcMur+0Y4NHyuCTXQS7eyFj
         vhiE4XX8Vcy+JXLacKBdLM4wISbpZygII/NYEFeGQVXaOXuVtyDkxXdEp/m3q0mZlL1D
         CtaXuuCVHRUNvrkTy5FZztd+21z5k2ZbDHLGfndxiidK6xyyuq+E/AQHWSv9mWFsOryy
         jzMzxys7WRhopN+30SNFWDgGA5FYBU9LT/siyRxZYr41/i9Mkyt5YwLXjYyuMZFj5Q38
         0FnQaTNMynf5wZwqIKQ29gf1GuBSF/u7ZZOao8yWwFQNuIhviKXHlqFKakcXA26A4W8D
         SNAA==
X-Forwarded-Encrypted: i=1; AJvYcCXOybdt8vY4C0w4QyCgnN3Bw94kCUHnZmPEpbZiquro3K9Vsk8C767qvyPpLqVylyGS2aPQk91vf3UZJ05o@lists.linaro.org
X-Gm-Message-State: AOJu0YynrFxLK92dQN7hINCc+ibGud6HCmPNZwVcXP9iEl4RHuz5udVs
	bucrUg9t9K/BrdtO3MKHK9yxqzH5zQNxZ1286TkDPc3JG6KY6u/i5Z9tZLij/GvitgjUkaZ2nxe
	UZvkt6TP6IUkmXV1Itdew3lGPNohOkv9tB4wMGR3NTJKsHaBPn+tc1iFbLN/Zw8k2iHZE
X-Gm-Gg: AZuq6aJaaWzBWx3JgFWABqFYKnjfs9cXo1YeqRy95EWibNz3s6ynYNtuvAjfhjeRocf
	F5ojiHgxZdMOOp2Ew9W8UbreFpftxQcZy+fdku2a3+2WXXLoLlBXi+ro2qk+qdTneqFuE4+YoQE
	/E+tdaQG9dDEBHpawu1G28d7Gc/KUvSo+4qKR/H8gPJep616e70y1ptsEBkIREoWZaWfNQmb30h
	WpQuaW4d39wQtEPKNqqL7IDoo9XxZHMReZ7KxpWTqunzvFCmyesUq6RCaT8i//ndWab2BKH12G9
	mF4gDuNXOH3FVBKhNBIa4oNfjvfYVeho9LdBEdCtT/uS8f+L2bS6JzsKAGonPma2zcM0tSVaNBF
	XXSpWMpY5ca3TJ/b6ZNXdErK6xXlr6QAY2EvH8d7Sbbo0GJ9m42osNeG2z/ncsHE=
X-Received: by 2002:a05:6214:5194:b0:895:d652:e3a5 with SMTP id 6a1803df08f44-89957fd539fmr37373546d6.23.1771434904539;
        Wed, 18 Feb 2026 09:15:04 -0800 (PST)
X-Received: by 2002:a05:6214:5194:b0:895:d652:e3a5 with SMTP id 6a1803df08f44-89957fd539fmr37372786d6.23.1771434904004;
        Wed, 18 Feb 2026 09:15:04 -0800 (PST)
Received: from localhost (pool-100-17-19-56.bstnma.fios.verizon.net. [100.17.19.56])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8971cc7f82csm195307856d6.4.2026.02.18.09.15.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 09:15:02 -0800 (PST)
From: Eric Chanudet <echanude@redhat.com>
Date: Wed, 18 Feb 2026 12:14:12 -0500
MIME-Version: 1.0
Message-Id: <20260218-dmabuf-heap-cma-dmem-v2-3-b249886fb7b2@redhat.com>
References: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
In-Reply-To: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Hildenbrand <david@kernel.org>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>,
 Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>
X-Mailer: b4 0.14.2
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: NzcvR3Kbid0V0cVjK0pdkxVnk27p2oc-nMm9knocU6o_1771434905
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
X-MailFrom: echanude@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6NGNADGYSXN2WHQOTBC7CR2WMRNMT7E2
X-Message-ID-Hash: 6NGNADGYSXN2WHQOTBC7CR2WMRNMT7E2
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:32 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Maxime Ripard <mripard@redhat.com>, Albert Esteve <aesteve@redhat.com>, linux-mm@kvack.org, Eric Chanudet <echanude@redhat.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 3/3] dma-buf: heaps: cma: charge each cma heap's dmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6NGNADGYSXN2WHQOTBC7CR2WMRNMT7E2/>
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
	DATE_IN_PAST(1.00)[1367];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[echanude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.904];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 00034411FA2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The cma dma-buf heaps let userspace allocate buffers in CMA regions
without enforcing limits. Since each cma region registers in dmem,
charge against it when allocating a buffer in a cma heap.

Signed-off-by: Eric Chanudet <echanude@redhat.com>
---
 drivers/dma-buf/heaps/cma_heap.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index 49cc45fb42dd7200c3c14384bcfdbe85323454b1..bbd4f9495808da19256d97bd6a4dca3e1b0a30a0 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -27,6 +27,7 @@
 #include <linux/scatterlist.h>
 #include <linux/slab.h>
 #include <linux/vmalloc.h>
+#include <linux/cgroup_dmem.h>
 
 #define DEFAULT_CMA_NAME "default_cma_region"
 
@@ -58,6 +59,7 @@ struct cma_heap_buffer {
 	pgoff_t pagecount;
 	int vmap_cnt;
 	void *vaddr;
+	struct dmem_cgroup_pool_state *pool;
 };
 
 struct dma_heap_attachment {
@@ -276,6 +278,7 @@ static void cma_heap_dma_buf_release(struct dma_buf *dmabuf)
 	kfree(buffer->pages);
 	/* release memory */
 	cma_release(cma_heap->cma, buffer->cma_pages, buffer->pagecount);
+	dmem_cgroup_uncharge(buffer->pool, buffer->len);
 	kfree(buffer);
 }
 
@@ -319,9 +322,17 @@ static struct dma_buf *cma_heap_allocate(struct dma_heap *heap,
 	if (align > CONFIG_CMA_ALIGNMENT)
 		align = CONFIG_CMA_ALIGNMENT;
 
+	if (mem_accounting) {
+		ret = dmem_cgroup_try_charge(
+			cma_get_dmem_cgroup_region(cma_heap->cma), size,
+			&buffer->pool, NULL);
+		if (ret)
+			goto free_buffer;
+	}
+
 	cma_pages = cma_alloc(cma_heap->cma, pagecount, align, false);
 	if (!cma_pages)
-		goto free_buffer;
+		goto uncharge_cgroup;
 
 	/* Clear the cma pages */
 	if (PageHighMem(cma_pages)) {
@@ -376,6 +387,8 @@ static struct dma_buf *cma_heap_allocate(struct dma_heap *heap,
 	kfree(buffer->pages);
 free_cma:
 	cma_release(cma_heap->cma, cma_pages, pagecount);
+uncharge_cgroup:
+	dmem_cgroup_uncharge(buffer->pool, size);
 free_buffer:
 	kfree(buffer);
 

-- 
2.52.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
