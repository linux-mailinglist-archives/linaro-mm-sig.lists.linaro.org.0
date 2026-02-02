Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGQ/MX0Q4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:38:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB32411C9B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:38:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A9C744B2D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:38:20 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 916423F677
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Feb 2026 15:18:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=QiQE2wdS;
	spf=pass (lists.linaro.org: domain of echanude@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=echanude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1770045538;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=IAa9rUiFokLsL02HcrzVefKkv/ss8oRA4iFHEcIfETc=;
	b=QiQE2wdStdckCYxDzoOBEUVG38+pAdcXRqWagMpauswXJFGGO5DmPLyPAxsIuHq5Es7ZyS
	x4XUNC5ZpZ1Dz87TN+Mr4zgj4ziYSMD/B7fDVTPKodxlncuUto5xm6j2HY1OMPr8rwTAzz
	O0XPjbOTmPZ5jhoNsYonQQo1w9C4O4g=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-208-67eDFWfEMMKZm3pRn47QvQ-1; Mon, 02 Feb 2026 10:18:57 -0500
X-MC-Unique: 67eDFWfEMMKZm3pRn47QvQ-1
X-Mimecast-MFC-AGG-ID: 67eDFWfEMMKZm3pRn47QvQ_1770045536
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-89470bda22aso145024486d6.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Feb 2026 07:18:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770045536; x=1770650336;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IAa9rUiFokLsL02HcrzVefKkv/ss8oRA4iFHEcIfETc=;
        b=QPwB/5/W1BmurWWhC7z3JBh0ZETYUzSdNHJf4acmbhdAmOkeGjYL4Zx5qA1yjZi/Xf
         hGZjgts6tVwMq2rL1dpEYtizSg7NRH4Qsm7tuXBK9pfL2OBVL4FcuyfwgV5nMca2dHQU
         I1xQM9BBq00ENbmQNvgJK52X8xtU2B+QuOxzWCUWqOvAhsDZc0c7KD+xfAMXC8ktxjly
         F8Oq0xWffTQ+hKguJ02igyl61eGTC8zUZ0hFiDm8KXMc8S7thhCACcIeCDZGOpO6QmWJ
         DDNeVlQqV7tZ1RoW333+p6LpoL8csaHWn1GKMKgr1mvY04/3oHufGdYcQ55kYk6Qlaoa
         tMvg==
X-Forwarded-Encrypted: i=1; AJvYcCXmMYOibiFt3DpevPY98osKTz6iaQmTKy/ePGSs9xOp+hMUWL+r8yAk/n6Y97CIc+MrpS5B3p4FOMpCx9uS@lists.linaro.org
X-Gm-Message-State: AOJu0Yw5RWTLBFFTz3lBeALSr0IQ/PyMUd7tHy/pgZXt9Z0FAL3OUzN+
	kYQcbCxeRHhnUg56nJcbizCOP9iGmT3expdM7X3OrXWNlYkl97ZL/cnQxWl6BPw52ADw4G0UacW
	kt6nb9a5oM9cayusFRjIKwqCZtP8BFdNvQs2eT0h/Npc8nU1hXGRc7rLpAwBAaEaymQ+2
X-Gm-Gg: AZuq6aJKF4qgscYh5byOMwAqGbQsPknbJ49ZGFf7QrL9YGIjjq0mkxYRpqZVmjqNLq4
	8Gf9VZsYiI2iQP+YgeAAQK3cLF24mVs7yfe9U+/S5JSLtZSWY7qqMwM9qHCUhPqs0n1V75eRDai
	kjy0vOb2smMj+oyklzr48IJDiK4Ahn7rURlKouGkgPye2unuPBKCzPImFjFELEYXZP78A7eW1l1
	S+mBINcc/eqYYV3tKXvAEdMzLibLxBbbHd2BIhYANQZpFaN6QRjtfmQrT2VQbhzomiBp/UIVk4t
	ODicpaCjHAVBUoMy1tjdr15LdnUPHguDINf2pBwuS4IGm4CEnwVn1erWyoAU5EwCrezDSP5bIxj
	dAW5jtYf2RFP2GCuku+mh2X7NYHrYsL+A/AHEWDX9ULy4x2z59f8=
X-Received: by 2002:a05:6214:764:b0:894:2cf7:7171 with SMTP id 6a1803df08f44-894e9f79920mr169707656d6.28.1770045536387;
        Mon, 02 Feb 2026 07:18:56 -0800 (PST)
X-Received: by 2002:a05:6214:764:b0:894:2cf7:7171 with SMTP id 6a1803df08f44-894e9f79920mr169706896d6.28.1770045535786;
        Mon, 02 Feb 2026 07:18:55 -0800 (PST)
Received: from localhost (pool-100-17-19-56.bstnma.fios.verizon.net. [100.17.19.56])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c711b7c7besm1249530285a.2.2026.02.02.07.18.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 07:18:55 -0800 (PST)
Date: Mon, 2 Feb 2026 10:18:54 -0500
From: Eric Chanudet <echanude@redhat.com>
To: Maxime Ripard <mripard@redhat.com>
Message-ID: <aYC1rNKBTpxE-Llm@fedora>
References: <20260130-dmabuf-heap-cma-dmem-v1-1-3647ea993e99@redhat.com>
 <20260202-wealthy-quick-cow-8c5421@houat>
MIME-Version: 1.0
In-Reply-To: <20260202-wealthy-quick-cow-8c5421@houat>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: qU-iBMThmvO8zDps4auAvvCGpmQ6GffekwIsMs0USak_1770045536
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spamd-Bar: ---
X-MailFrom: echanude@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BSLD7342ECL2WPELEG5SN6MNUZKRXOED
X-Message-ID-Hash: BSLD7342ECL2WPELEG5SN6MNUZKRXOED
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:02 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Albert Esteve <aesteve@redhat.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: cma: register a dmem region for each cma heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BSLD7342ECL2WPELEG5SN6MNUZKRXOED/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[1753];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[redhat.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[echanude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.917];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 7EB32411C9B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Feb 02, 2026 at 11:12:37AM +0100, Maxime Ripard wrote:
> Hi,
> 
> On Fri, Jan 30, 2026 at 05:55:30PM -0500, Eric Chanudet wrote:
> > The cma dma-buf heaps let userspace allocate buffers in CMA regions
> > without enforcing limits. Register a dmem region per cma heap and charge
> > against it when allocating a buffer in a cma heap.
> > 
> > For the default cma region, two heaps may be created for the same cma
> > range:
> > commit 854acbe75ff4 ("dma-buf: heaps: Give default CMA heap a fixed name")
> >   Introduced /dev/dma_heap/default_cma_region
> > commit 4f5f8baf7341 ("dma-buf: heaps: cma: Create CMA heap for each CMA
> >                       reserved region")
> >   Created a CMA heap for each CMA region, which might create a duplicate
> >   heap to the default one, e.g:
> >     /dev/dma_heap/default_cma_region
> >     /dev/dma_heap/reserved
> > 
> > Removing the legacy heap would break user API. So handle the special
> > case by using one dmem between the two heaps to account charges
> > correctly.
> > 
> > Signed-off-by: Eric Chanudet <echanude@redhat.com>
> > ---
> > In continuation with introducing cgroup for the system heap[1], this
> > behavior is enabled based on dma_heap.mem_accounting, disabled by
> > default.
> > 
> > dmem is chosen for CMA heaps as it allows limits to be set for each
> > region backing each heap. There is one caveat for the default cma range
> > that may accessible through two different cma heaps, which is treated as
> > a special case.
> > 
> > [1] https://lore.kernel.org/all/20260116-dmabuf-heap-system-memcg-v3-0-ecc6b62cc446@redhat.com/
> > ---
> >  drivers/dma-buf/heaps/cma_heap.c | 51 ++++++++++++++++++++++++++++++++++++----
> >  1 file changed, 46 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
> > index 49cc45fb42dd7200c3c14384bcfdbe85323454b1..608af8ad6bce7fe0321da6d8f1b65a69f5d8d950 100644
> > --- a/drivers/dma-buf/heaps/cma_heap.c
> > +++ b/drivers/dma-buf/heaps/cma_heap.c
> > @@ -27,6 +27,7 @@
> >  #include <linux/scatterlist.h>
> >  #include <linux/slab.h>
> >  #include <linux/vmalloc.h>
> > +#include <linux/cgroup_dmem.h>
> >  
> >  #define DEFAULT_CMA_NAME "default_cma_region"
> >  
> > @@ -46,7 +47,9 @@ int __init dma_heap_cma_register_heap(struct cma *cma)
> >  struct cma_heap {
> >  	struct dma_heap *heap;
> >  	struct cma *cma;
> > +	struct dmem_cgroup_region *cg;
> >  };
> > +static struct dmem_cgroup_region *default_cma_cg;
> >  
> >  struct cma_heap_buffer {
> >  	struct cma_heap *heap;
> > @@ -58,6 +61,7 @@ struct cma_heap_buffer {
> >  	pgoff_t pagecount;
> >  	int vmap_cnt;
> >  	void *vaddr;
> > +	struct dmem_cgroup_pool_state *pool;
> >  };
> >  
> >  struct dma_heap_attachment {
> > @@ -276,6 +280,7 @@ static void cma_heap_dma_buf_release(struct dma_buf *dmabuf)
> >  	kfree(buffer->pages);
> >  	/* release memory */
> >  	cma_release(cma_heap->cma, buffer->cma_pages, buffer->pagecount);
> > +	dmem_cgroup_uncharge(buffer->pool, buffer->len);
> >  	kfree(buffer);
> >  }
> >  
> > @@ -319,9 +324,16 @@ static struct dma_buf *cma_heap_allocate(struct dma_heap *heap,
> >  	if (align > CONFIG_CMA_ALIGNMENT)
> >  		align = CONFIG_CMA_ALIGNMENT;
> >  
> > +	if (mem_accounting) {
> > +		ret = dmem_cgroup_try_charge(cma_heap->cg, size,
> > +					     &buffer->pool, NULL);
> > +		if (ret)
> > +			goto free_buffer;
> > +	}
> >
> >  	cma_pages = cma_alloc(cma_heap->cma, pagecount, align, false);
> >  	if (!cma_pages)
> > -		goto free_buffer;
> > +		goto uncharge_cgroup;
> >  
> >  	/* Clear the cma pages */
> >  	if (PageHighMem(cma_pages)) {
> > @@ -376,6 +388,8 @@ static struct dma_buf *cma_heap_allocate(struct dma_heap *heap,
> >  	kfree(buffer->pages);
> >  free_cma:
> >  	cma_release(cma_heap->cma, cma_pages, pagecount);
> > +uncharge_cgroup:
> > +	dmem_cgroup_uncharge(buffer->pool, size);
> 
> Should we make that conditional on mem_accounting == true ?
> 
> >  free_buffer:
> >  	kfree(buffer);
> >  
> > @@ -390,25 +404,52 @@ static int __init __add_cma_heap(struct cma *cma, const char *name)
> >  {
> >  	struct dma_heap_export_info exp_info;
> >  	struct cma_heap *cma_heap;
> > +	struct dmem_cgroup_region *region;
> > +	int ret;
> >  
> >  	cma_heap = kzalloc(sizeof(*cma_heap), GFP_KERNEL);
> >  	if (!cma_heap)
> >  		return -ENOMEM;
> >  	cma_heap->cma = cma;
> >  
> > +	/*
> > +	 * If two heaps are created for the default cma region, use the same
> > +	 * dmem for them. They both use the same memory pool.
> > +	 */
> > +	if (dev_get_cma_area(NULL) == cma && default_cma_cg)
> > +		region = default_cma_cg;
> > +	else {
> > +		region = dmem_cgroup_register_region(cma_get_size(cma), "cma/%s", name);
> > +		if (IS_ERR(region)) {
> > +			ret = PTR_ERR(region);
> > +			goto free_cma_heap;
> > +		}
> > +	}
> > +	cma_heap->cg = region;
> > +
> 
> I'm not sure it's the best way to go with this. We want to track all
> relevant CMA allocations going forward, in the heaps and elsewhere.
> 
> If we were to do what you suggest, an allocation in, say, DRM or v4l2
> wouldn't be tracked in the same region than one in the heaps, while we
> want to have it cumulated.
> 
> I think we'd be better off if we created a dmem region for each CMA
> region in the system, but we would charge from the heap so we don't
> account for every allocation.

That makes more sense. I will do that in a v2.

> I don't think we can register the dmem region when the CMA area is
> initialized though, since it will probably be too early in the kernel
> boot and SLAB isn't around yet.
> 
> But since we would need an accessor to get a dmem region from a cma
> region, we could do something like check if a dmem eregion already
> exists for that cma region, and allocate one otherwise. Or have a
> secondary initcall to allocate all dmem regions.

In an earlier series[1], you did this during cma_activate_area(),
core_initcall is late enough, so I can start from this in your series.

[1] https://lore.kernel.org/all/20250310-dmem-cgroups-v1-1-2984c1bc9312@kernel.org/

> 
> Maxime



-- 
Eric Chanudet

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
