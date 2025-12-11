Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KL6fOPYD4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:44:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7684112C0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:44:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8AE7A44CF3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:44:53 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id D51E93F99F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 19:31:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=BqUEgWab;
	spf=pass (lists.linaro.org: domain of echanude@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=echanude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765481510;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=9fNQS7Ht+smYBEt8qQi15gMY9oRc7YfucqsNSafaVMY=;
	b=BqUEgWabxwUfyoNR4Ssc4w+RzJ3si6DqcjWpwT2ldhvaghsvvAe6IJLEsVtaK1ynw6GrSQ
	c/0Dky58d51S7UYh7gkTLCKTDkGulMjrQDbupgfZHufrH76DJxVs7gacLufY4S/N89w+iQ
	FCvGzQ+uMAATsQWVv+KMLVCmbEQzuQg=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-308-K0WrNMxUP1-DYntJvSMNQA-1; Thu, 11 Dec 2025 14:31:49 -0500
X-MC-Unique: K0WrNMxUP1-DYntJvSMNQA-1
X-Mimecast-MFC-AGG-ID: K0WrNMxUP1-DYntJvSMNQA_1765481509
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b6a9c80038so48805885a.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 11:31:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765481509; x=1766086309;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9fNQS7Ht+smYBEt8qQi15gMY9oRc7YfucqsNSafaVMY=;
        b=H3bR5Mfh1snjsCkhptohtJ5C3NNR7Z6mafKHR+vty8l7WwQ0+sZaISSQJwJ/KVysyD
         zzobI7eYEEVN4/Kiw0crzpb4k4ZsY40fuX+fCibH8vnxwclghL0YXLPEYW+6mxc4nl7k
         KpXgTHqUoP8+hB8WrnwIPITNAALXOUjgpl2EmFFgT3jefDkbc0kvlbvaK4U8+phWXDCT
         Z5gN7ZlLloFNwaVtoXUu7Npu2pc9LnzI2uwIourcR1DmgM1gUyP+R4RQJSeg77niFlR1
         4uXJdaF4eNI7r6qF71PG7KCkYsnrrz6e/ShYFPMBW0YTrIiucU880hCcqqrpKPR+OQso
         B9Qw==
X-Forwarded-Encrypted: i=1; AJvYcCX7z4cMzlPCJIQ+vqNqTutv7JYyGzWaapcWyPUo0K2U60DgrwRqFUzYFu1Re8KvE7sfzvg+0QaUsJOCfKoh@lists.linaro.org
X-Gm-Message-State: AOJu0Yz5QiWnpb49S0XVZHE0sSjfj14ICbldFLGKgPSv7GXMNuo/nHHE
	4QdY2f9YORZYuh7uRF/9Vgw830ZU7y6Lxs39nedzpQC8Cuv5QtJxcwFH4hDyipW1HyEAuObHB/Q
	RXb/5xApFxTzHSJJ1De5DmiJyLrf0Ckp4H3Ah/CsHfVG7UmsVp9nA5zS8KhscUltfsovh
X-Gm-Gg: AY/fxX6RCDEXYcnXwXu8IL2st8Z52URmQoVD6jAJETjyyj0SO9gLBQyOW+GS8dPt3Zf
	bDiOglTmPOHJ1stHI9emJCQDCZiF78kWXrjJYLx9nz1+UndcnzbTLFnB71AP4BvWPMqcYBzO6At
	4jmqr3x9GEpiI8kIm4Iv4SvMpkfUiQ7OW+/dOqIQtFdghc6kMoqlRhW+JV65jpHD/MWkMhb7kSX
	A81L/ZylFaizmc/12ZupI7z2YDysEwxw+bwbc7T7xffuO0lsF16RHy3n6KkwZkxTOkKXr342dDV
	cV/7KgvQPlGeIqbptmfo7i58t2hqBcAElx35S2L0Qb7LnthCLZeOjA1Z8lsKayEbo8mGcKZMOjB
	qi3fRl0c/z2ctjCn2jsJHjZOY4MfrU/kYEuKUWdRL12dscvCvD7NL6Q==
X-Received: by 2002:a05:620a:190d:b0:8b2:2607:83d5 with SMTP id af79cd13be357-8ba3b20cc7amr1086240385a.75.1765481508543;
        Thu, 11 Dec 2025 11:31:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGjxv4hC6ptOgdZUS2F0ohaHHF/DSOrKZqK5mzPaPV5p8p12y+Xs+J8IIFSF5PnIj57uqbRqw==
X-Received: by 2002:a05:620a:190d:b0:8b2:2607:83d5 with SMTP id af79cd13be357-8ba3b20cc7amr1086234585a.75.1765481507972;
        Thu, 11 Dec 2025 11:31:47 -0800 (PST)
Received: from localhost (pool-100-17-22-234.bstnma.fios.verizon.net. [100.17.22.234])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8bab5452ec6sm292782685a.1.2025.12.11.11.31.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 11:31:47 -0800 (PST)
From: Eric Chanudet <echanude@redhat.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	Christian Koenig <christian.koenig@amd.com>,
	Maxime Ripard <mripard@redhat.com>
Date: Thu, 11 Dec 2025 14:31:07 -0500
Message-ID: <20251211193106.755485-2-echanude@redhat.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: fNvOQApnMBJ7_3Bb0MF0UZ8sgyBVEfkRQjyUwnl0ig8_1765481509
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: --
X-MailFrom: echanude@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HBU3XZX67JQMFYWIBRGCYXLWZ55W3GVX
X-Message-ID-Hash: HBU3XZX67JQMFYWIBRGCYXLWZ55W3GVX
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:46 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Eric Chanudet <echanude@redhat.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HBU3XZX67JQMFYWIBRGCYXLWZ55W3GVX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[3020];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[echanude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.844];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 7B7684112C0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The system dma-buf heap lets userspace allocate buffers from the page
allocator. However, these allocations are not accounted for in memcg,
allowing processes to escape limits that may be configured.

Pass the __GFP_ACCOUNT for our allocations to account them into memcg.

Userspace components using the system heap can be constrained with, e.g:
  systemd-run --user --scope -p MemoryMax=10M ...

Signed-off-by: Eric Chanudet <echanude@redhat.com>
---
 drivers/dma-buf/heaps/system_heap.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
index 4c782fe33fd4..c91fcdff4b77 100644
--- a/drivers/dma-buf/heaps/system_heap.c
+++ b/drivers/dma-buf/heaps/system_heap.c
@@ -38,10 +38,10 @@ struct dma_heap_attachment {
 	bool mapped;
 };
 
-#define LOW_ORDER_GFP (GFP_HIGHUSER | __GFP_ZERO)
+#define LOW_ORDER_GFP (GFP_HIGHUSER | __GFP_ZERO | __GFP_ACCOUNT)
 #define HIGH_ORDER_GFP  (((GFP_HIGHUSER | __GFP_ZERO | __GFP_NOWARN \
 				| __GFP_NORETRY) & ~__GFP_RECLAIM) \
-				| __GFP_COMP)
+				| __GFP_COMP | __GFP_ACCOUNT)
 static gfp_t order_flags[] = {HIGH_ORDER_GFP, HIGH_ORDER_GFP, LOW_ORDER_GFP};
 /*
  * The selection of the orders used for allocation (1MB, 64K, 4K) is designed
-- 
2.52.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
