Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B4496697D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Aug 2024 21:26:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 610A03F60B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Aug 2024 19:26:44 +0000 (UTC)
Received: from mail-pf1-f202.google.com (mail-pf1-f202.google.com [209.85.210.202])
	by lists.linaro.org (Postfix) with ESMTPS id 21CFC3F49D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Aug 2024 19:26:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=Jv5vriiI;
	spf=pass (lists.linaro.org: domain of 37xzSZgkKDa4hXaSfQWSfUccUZS.QcaZWbOfc-aa-gWUZWghg.ZWbOfc.cfU@flex--tjmercier.bounces.google.com designates 209.85.210.202 as permitted sender) smtp.mailfrom=37xzSZgkKDa4hXaSfQWSfUccUZS.QcaZWbOfc-aa-gWUZWghg.ZWbOfc.cfU@flex--tjmercier.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pf1-f202.google.com with SMTP id d2e1a72fcca58-70f0a00eb16so1611727b3a.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Aug 2024 12:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1725046000; x=1725650800; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FuDRdZr3lnXIzC7C2IwkgUCCNdeMT8LTC1OgvHLHr0o=;
        b=Jv5vriiIPWfev0hPK5oP3I+xNYr+gFcZ9sYDhMnBOaXk2+cMivMBTZ5Zlme3ntzQYN
         chwEhn6u2cHIKFRjfS5I85+j0bkiO3KbKKVscjrFWpx7GA2cjIfzz06bAgcDZro0lIlh
         G4+l9S0AQKUyiaNCJl+wpWs2VjKDnDpZjdbaortj8uH3XsWA0dQFLJ0id4jxx0ERuP4s
         TgzCBCv8IwpB17Ddo4qCMDHsuUGM66GpV5EmqxtgjszDJ8B6cDqFv7c9rJJBbv/LmEsm
         0D9dv+sUzQNrFsbG26bg/8LPwn+pal/iR437GHIpNPRjQV/SbP7GcScX5gm0h+5FRiVf
         VbSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725046000; x=1725650800;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FuDRdZr3lnXIzC7C2IwkgUCCNdeMT8LTC1OgvHLHr0o=;
        b=gOeO6TxY3yfRmVGXv1drtQMGRSTprLrDXOjBDXkna0NOT7OFdra1ccCQIBgyO+BZy1
         8NwGTIYf5ZrrkWdr2ePHef6DEzk84r3JoQdOQ0oxCxBCXiI3gOjhScdgtLmCXEGunvC8
         3OBmijMexx8E33fHA0KGA4YFiV2Ef5/wxFaS4CMfL4d76Fy7CMhug34KlGnJbsazPPfH
         fT3e25MagwWrBmZNSuHkDmEdKOFEAYFfpsydduolJmkWoPStQaF7Bw5D/gAskb+fq7+x
         ezdR7LdBsMCx5/iGYY50htqMnmaG6SIMISmx5zthQBzqQAFHRo50nlyvX7Qnxb3agXij
         CUjg==
X-Forwarded-Encrypted: i=1; AJvYcCU7apA/9i9lL+PzzmOUbOlnqv46AlDSCavvRKmbWACRlaOqY3BKwz3Ve7oD5M/JsGbV395rQOZzutgJUh48@lists.linaro.org
X-Gm-Message-State: AOJu0YzrwPo5R2QL7dyG2/cuPWjvlJvCPDwFyqK2HieFsgQX0BfYgwMQ
	krQA6dQ7HO6p8Qp+QLNNBs8mNX9t23z0/rqUk4k3VqpY80s3zi1V5/ivZ7ZlXnc3L/LtQzQc4Ar
	nP3Na8tJoVxrerg==
X-Google-Smtp-Source: AGHT+IEYDT5yTYPujoEQ0Ej+aCUk5iv9pvxNQHghRZEWhY4u/r1jH/tjVnZ/WpOzBL4HVQ0C2o97rg0PjRinvWA=
X-Received: from tj-virt.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:5683])
 (user=tjmercier job=sendgmr) by 2002:a05:6a00:8585:b0:714:1436:1cef with SMTP
 id d2e1a72fcca58-717307cbc9bmr7143b3a.6.1725045999943; Fri, 30 Aug 2024
 12:26:39 -0700 (PDT)
Date: Fri, 30 Aug 2024 19:26:26 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.46.0.469.g59c65b2a67-goog
Message-ID: <20240830192627.2546033-1-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>
X-Rspamd-Action: no action
X-Spamd-Bar: --
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 21CFC3F49D
X-Spamd-Result: default: False [-2.30 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,37xzSZgkKDa4hXaSfQWSfUccUZS.QcaZWbOfc-aa-gWUZWghg.ZWbOfc.cfU@flex--tjmercier.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.202:from];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[15];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,37xzSZgkKDa4hXaSfQWSfUccUZS.QcaZWbOfc-aa-gWUZWghg.ZWbOfc.cfU@flex--tjmercier.bounces.google.com];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: 5E4CCDQECVC6ALEK3MUJB535IJGBJGYG
X-Message-ID-Hash: 5E4CCDQECVC6ALEK3MUJB535IJGBJGYG
X-MailFrom: 37xzSZgkKDa4hXaSfQWSfUccUZS.QcaZWbOfc-aa-gWUZWghg.ZWbOfc.cfU@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: android-mm@google.com, Xingyu Jin <xingyuj@google.com>, stable@vger.kernel.org, John Stultz <john.stultz@linaro.org>, Brian Starkey <brian.starkey@arm.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: heaps: Fix off-by-one in CMA heap fault handler
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5E4CCDQECVC6ALEK3MUJB535IJGBJGYG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Until VM_DONTEXPAND was added in commit 1c1914d6e8c6 ("dma-buf: heaps:
Don't track CMA dma-buf pages under RssFile") it was possible to obtain
a mapping larger than the buffer size via mremap and bypass the overflow
check in dma_buf_mmap_internal. When using such a mapping to attempt to
fault past the end of the buffer, the CMA heap fault handler also checks
the fault offset against the buffer size, but gets the boundary wrong by
1. Fix the boundary check so that we don't read off the end of the pages
array and insert an arbitrary page in the mapping.

Reported-by: Xingyu Jin <xingyuj@google.com>
Fixes: a5d2d29e24be ("dma-buf: heaps: Move heap-helper logic into the cma_heap implementation")
Cc: stable@vger.kernel.org # Applicable >= 5.10. Needs adjustments only for 5.10.
Signed-off-by: T.J. Mercier <tjmercier@google.com>
---
 drivers/dma-buf/heaps/cma_heap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index c384004b918e..93be88b805fe 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -165,7 +165,7 @@ static vm_fault_t cma_heap_vm_fault(struct vm_fault *vmf)
 	struct vm_area_struct *vma = vmf->vma;
 	struct cma_heap_buffer *buffer = vma->vm_private_data;
 
-	if (vmf->pgoff > buffer->pagecount)
+	if (vmf->pgoff >= buffer->pagecount)
 		return VM_FAULT_SIGBUS;
 
 	return vmf_insert_pfn(vma, vmf->address, page_to_pfn(buffer->pages[vmf->pgoff]));
-- 
2.46.0.469.g59c65b2a67-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
