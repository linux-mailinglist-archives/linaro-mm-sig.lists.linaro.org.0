Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FcRC8g/DGqqawUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:47:36 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1D957CC4C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:47:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D97C640705
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:47:34 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 9A7333FDB2
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 15:06:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=dFmRQNgv;
	spf=pass (lists.linaro.org: domain of will@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=will@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 151AF43CBC;
	Mon, 18 May 2026 15:06:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F976C2BCB7;
	Mon, 18 May 2026 15:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779116809;
	bh=pBqnVpw3j1aq4FC8bJx5X8I7niRcnpb+yzemwEGWIm8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dFmRQNgvaK/sEKCsSU5dU9VXcXDYrkV1E8PUzaTOCyb/A2q2XxNpxqsKRgh83MGSq
	 iL9bUarFULyucGdH1rsCHCbludiwbA5afG7jhMKwYHrAmx9kFd/BpZCXrY4FTLKKcF
	 +qppNazAKQp2zjd09uPeUCgiy9a/py736dNl8tW8icQJ+jC6937z6lxrUojQRY0gm4
	 mPQ9m8AYvcJIMwaUEvEXAH0lqkW9239pMDoGwIyYdIlksBODCVfQKYxmxobwWoiOck
	 EpJdbJ5ZhzNiVBk+lAH0KuQh0K2gsD2v9c90UrQilKexeNSLVmBsitaHU/d5+pyhSX
	 LF1cV7m7fFzcg==
Date: Mon, 18 May 2026 16:06:44 +0100
From: Will Deacon <will@kernel.org>
To: Dan Carpenter <error27@gmail.com>, jstultz@google.com,
	tjmercier@google.com
Message-ID: <agsrBPXYXA2vZgj1@willie-the-truck>
References: <afXGeq1AvqFY76MY@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <afXGeq1AvqFY76MY@stanley.mountain>
X-Spamd-Bar: ---
X-MailFrom: will@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2FHVYTOCIK5KJGBFJXFSUK3AGUX5P2QI
X-Message-ID-Hash: 2FHVYTOCIK5KJGBFJXFSUK3AGUX5P2QI
X-Mailman-Approved-At: Tue, 19 May 2026 10:46:26 +0000
CC: Catalin Marinas <catalin.marinas@arm.com>, linux-mm@kvack.org, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [bug report] dma-buf: heaps: Rework heap allocation hooks to return struct dma_buf instead of fd
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2FHVYTOCIK5KJGBFJXFSUK3AGUX5P2QI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,google.com];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	FROM_NEQ_ENVFROM(0.00)[will@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: CE1D957CC4C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, May 02, 2026 at 12:40:10PM +0300, Dan Carpenter wrote:
> I'm not sure exactly who to report this bug too.  Probably the mm
> devs?

[Adding John and TJ, in case they are interested / able to help]

Will

(original report follows)

> 	drivers/dma-buf/heaps/system_heap.c:499 system_heap_allocate()
> 	warn: passing positive error code 's32min-(-1),1' to 'ERR_PTR'
> 
> drivers/dma-buf/heaps/system_heap.c
>     459         if (cc_shared) {
>     460                 for_each_sgtable_sg(table, sg, i) {
>     461                         ret = system_heap_set_page_decrypted(sg_page(sg));
>     462                         if (ret)
>     463                                 goto free_pages;
> 
> It kind of looks like system_heap_set_page_decrypted() can return 1.
> 
>     464                 }
>     465         }
>     466 
>     467         /* create the dmabuf */
>     468         exp_info.exp_name = dma_heap_get_name(heap);
>     469         exp_info.ops = &system_heap_buf_ops;
>     470         exp_info.size = buffer->len;
>     471         exp_info.flags = fd_flags;
>     472         exp_info.priv = buffer;
>     473         dmabuf = dma_buf_export(&exp_info);
>     474         if (IS_ERR(dmabuf)) {
>     475                 ret = PTR_ERR(dmabuf);
>     476                 goto free_pages;
>     477         }
>     478         return dmabuf;
>     479 
>     480 free_pages:
>     481         for_each_sgtable_sg(table, sg, i) {
>     482                 struct page *p = sg_page(sg);
>     483 
>     484                 /*
>     485                  * Intentionally leak pages that cannot be re-encrypted
>     486                  * to prevent shared memory from being reused.
>     487                  */
>     488                 if (buffer->cc_shared &&
>     489                     system_heap_set_page_encrypted(p))
>     490                         continue;
>     491                 __free_pages(p, compound_order(p));
>     492         }
>     493         sg_free_table(table);
>     494 free_buffer:
>     495         list_for_each_entry_safe(page, tmp_page, &pages, lru)
>     496                 __free_pages(page, compound_order(page));
>     497         kfree(buffer);
>     498 
> --> 499         return ERR_PTR(ret);
>     500 }
> 
> The problem is that add_to_pagemap() returns PM_END_OF_BUFFER (1)
> which is used by pagemap_read() and nowhere else.  The call tree
> is:
> 
> system_heap_allocate()
> system_heap_set_page_decrypted()
> set_memory_decrypted()
> realm_set_memory_decrypted()
> __set_memory_enc_dec()
> __change_memory_common()
> update_range_prot()
> walk_kernel_page_table_range_lockless()
> walk_pgd_range()
> pagemap_pte_hole()
> add_to_pagemap()
> 
> This code seems sort of old and I guess no one has reported the bug
> so maybe it's a false positive, but it feels like it's asking for
> problems to return the PM_END_OF_BUFFER.  There aren't any comments
> on any of those functions above explaining what return values are
> expected.
> 
> This email is a free service from the Smatch-CI project [smatch.sf.net].
> 
> regards,
> dan carpenter
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
