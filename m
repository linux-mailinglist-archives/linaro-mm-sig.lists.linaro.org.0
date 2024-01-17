Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAE4830C7E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jan 2024 19:12:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 887AC43F3D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jan 2024 18:12:19 +0000 (UTC)
Received: from mail-pj1-f74.google.com (mail-pj1-f74.google.com [209.85.216.74])
	by lists.linaro.org (Postfix) with ESMTPS id BC3173F975
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jan 2024 18:11:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="h/Ozuuv9";
	spf=pass (lists.linaro.org: domain of 3bRioZQkKDXIjZcUhSYUhWeeWbU.SecbYdQhe-cc-iYWbYiji.bYdQhe.ehW@flex--tjmercier.bounces.google.com designates 209.85.216.74 as permitted sender) smtp.mailfrom=3bRioZQkKDXIjZcUhSYUhWeeWbU.SecbYdQhe-cc-iYWbYiji.bYdQhe.ehW@flex--tjmercier.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pj1-f74.google.com with SMTP id 98e67ed59e1d1-28e7161e1c4so1612386a91.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jan 2024 10:11:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1705515118; x=1706119918; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=78wGbyaR1N/RpeDHrml7Zj+rHmeYYvmV/w0ACPzkZ2Q=;
        b=h/Ozuuv9ufXOqFjylTEACpKL8tjG2Lg1loGiIKM5VeUk1Os6XyuyLIRm1shkN1oyVv
         kqHRY0ici21iZ7BOwPzNqDqGUpKzIMDfVYw2jEa4mKbzz7P7G3Fh1QDeDHywOdA8GZUE
         PaqIEmeYf94VB357PmNEOA6s711J3YRov48s+YS9YkG4cAqAOqte3vOsdimGhBtuRJrW
         0f9b/EvO7myutEu5emPoMotTOFo4nAJoBy1YuzUMTRKW1flo8sao6xC1pkfJVg5KKIgl
         P1LnireNXd2AinKfF521OKYrfKMKkpgafeg8lSzfEEsdbxMWb0wU5hYWb6f1RMS8n+h8
         CBiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705515118; x=1706119918;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=78wGbyaR1N/RpeDHrml7Zj+rHmeYYvmV/w0ACPzkZ2Q=;
        b=nAieKnxfXSV+A7G98Hmq71r3KLMzU3VRgEGGyx4R7n1TicN3v3gDNgRudb8+1sjmA6
         VANFGZGGGZ4rgw7i2VzL+SG1pTOSQHHVkQZxl+HcsPolRnaGWg828ozKe58WcrYCoGaR
         8IBiGvfk2rbjwLHvsn7kur6RQcppFlJEsoN95wlYQ5LZ7vSSHqypUPh4YIMxXjDYF2Vx
         HHlu47yqHp8of8hi68gnO5cHd4V9R9/Yzy6PpkLfLiKJ5wstdIYWNGhMg8dumOsc8NOt
         hLrBCZMkBTPX4XFmegtrjy4xgo+B+Gbp7DGkgHdJ67Tqqk2Fx2TcicFPQNAl8GLtnBFR
         hrdQ==
X-Gm-Message-State: AOJu0YxTRVSvp11prfyyhzEsbHo3zIj9/gNblSKzNIje05vv/sndxiPG
	XV8e1OXjD2xKonlSzpa54l4l9j0XjVKsjlID/A2Opw==
X-Google-Smtp-Source: AGHT+IEqlpk5VBwIaxFJ3ed3SctyHMNGEmAma0Nj0WOvArfTlAIrR/Z8ubBEgvCHIcFZ3dr6Jg5yS8q7Aksd9jY=
X-Received: from tj-virt.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:5683])
 (user=tjmercier job=sendgmr) by 2002:a17:90b:51c7:b0:28d:6729:c29a with SMTP
 id sf7-20020a17090b51c700b0028d6729c29amr615328pjb.2.1705515117716; Wed, 17
 Jan 2024 10:11:57 -0800 (PST)
Date: Wed, 17 Jan 2024 18:11:40 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.43.0.381.gb435a96ce8-goog
Message-ID: <20240117181141.286383-1-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: tjmercier@google.com, Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>, Sandeep Patil <sspatil@android.com>,
	Laura Abbott <labbott@redhat.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,3bRioZQkKDXIjZcUhSYUhWeeWbU.SecbYdQhe-cc-iYWbYiji.bYdQhe.ehW@flex--tjmercier.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.74:from];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[17];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3bRioZQkKDXIjZcUhSYUhWeeWbU.SecbYdQhe-cc-iYWbYiji.bYdQhe.ehW@flex--tjmercier.bounces.google.com];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BC3173F975
X-Spamd-Bar: --
Message-ID-Hash: EPN6H3QTKDU3ZC3KCXW3IAUNRFINZNVV
X-Message-ID-Hash: EPN6H3QTKDU3ZC3KCXW3IAUNRFINZNVV
X-MailFrom: 3bRioZQkKDXIjZcUhSYUhWeeWbU.SecbYdQhe-cc-iYWbYiji.bYdQhe.ehW@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: android-mm@google.com, minchan@google.com, daniel@ffwll.ch, John Stultz <john.stultz@linaro.org>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: heaps: Don't track CMA dma-buf pages under RssFile
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EPN6H3QTKDU3ZC3KCXW3IAUNRFINZNVV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

DMA buffers allocated from the CMA dma-buf heap get counted under
RssFile for processes that map them and trigger page faults. In
addition to the incorrect accounting reported to userspace, reclaim
behavior was influenced by the MM_FILEPAGES counter until linux 6.8, but
this memory is not reclaimable. [1] Change the CMA dma-buf heap to set
VM_PFNMAP on the VMA so MM does not poke at the memory managed by this
dma-buf heap, and use vmf_insert_pfn to correct the RSS accounting.

The system dma-buf heap does not suffer from this issue since
remap_pfn_range is used during the mmap of the buffer, which also sets
VM_PFNMAP on the VMA.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/mm/vmscan.c?id=fb46e22a9e3863e08aef8815df9f17d0f4b9aede

Fixes: b61614ec318a ("dma-buf: heaps: Add CMA heap to dmabuf heaps")
Signed-off-by: T.J. Mercier <tjmercier@google.com>
---
 drivers/dma-buf/heaps/cma_heap.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index ee899f8e6721..4a63567e93ba 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -168,10 +168,7 @@ static vm_fault_t cma_heap_vm_fault(struct vm_fault *vmf)
 	if (vmf->pgoff > buffer->pagecount)
 		return VM_FAULT_SIGBUS;
 
-	vmf->page = buffer->pages[vmf->pgoff];
-	get_page(vmf->page);
-
-	return 0;
+	return vmf_insert_pfn(vma, vmf->address, page_to_pfn(buffer->pages[vmf->pgoff]));
 }
 
 static const struct vm_operations_struct dma_heap_vm_ops = {
@@ -185,6 +182,8 @@ static int cma_heap_mmap(struct dma_buf *dmabuf, struct vm_area_struct *vma)
 	if ((vma->vm_flags & (VM_SHARED | VM_MAYSHARE)) == 0)
 		return -EINVAL;
 
+	vm_flags_set(vma, VM_IO | VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP);
+
 	vma->vm_ops = &dma_heap_vm_ops;
 	vma->vm_private_data = buffer;
 
-- 
2.43.0.381.gb435a96ce8-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
