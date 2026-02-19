Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YFsxIvES4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:48:49 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C12A411FE4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:48:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 45EB6404F1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:48:48 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 4D4513F75B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 17:21:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=RCydY3dT;
	spf=pass (lists.linaro.org: domain of echanude@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=echanude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771521687;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=a+MlxWO2a/5NxxDnoLl6rDcBacWRef25tqpr85yXgBM=;
	b=RCydY3dT5Jp4U4g1nemVhH64THAWDmlvyGQ3FaoONVfx2dx6Qlmkrzrap1h2QUfB9fiuV+
	lD3EHW4pVGKPc4vXXKRSYffU7151knNUkee6Sq6rMkn5NrYZxKgF6yAbyhdztaNUDQpBBT
	UzCpyfatzJCnkpizn6nsKx2uBnfLgIg=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-593-K73ZbGhOMlC4msN1Wi6IJA-1; Thu, 19 Feb 2026 12:21:25 -0500
X-MC-Unique: K73ZbGhOMlC4msN1Wi6IJA-1
X-Mimecast-MFC-AGG-ID: K73ZbGhOMlC4msN1Wi6IJA_1771521685
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-506b4bdde91so115988601cf.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 09:21:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771521685; x=1772126485;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a+MlxWO2a/5NxxDnoLl6rDcBacWRef25tqpr85yXgBM=;
        b=p8KDnXPpqBbXzPRo4OxXRHXmjlG8HDmwWg/0ZCgLiH9rImmHboV0rRzjBjpYZp6JY2
         7m1/zCg0ed23q1is0lO+KQW/ZI2rvMXkmAWS0lMFYdwzkqYpXk3tGwcZ+9iWtWYecXtW
         MWLFm3k2WCKwZpyRAI3ol9yNOKwQv+2OZC8RhmS8VFifUzs2gxDH/xDjLAcS1SoZNuqE
         FghyKnsA3adtA+w/9s/I1eryxYSBNgFz2Cww5UiqrrlvA9NvXa64jvvvQjbH/r0V1rlT
         1pam06RpYoDAN4oDYKExIXvduxUZT87OZpzWiOxWu9ciKH1QSA0kEJvccEfS7z5Uw6Ob
         62ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXArnNxve0iMqIIuVM375AqESKtI0ZEMTju2dkjy+oWkidazCZENiHlQk1xKW7cbxGfIz3RB5rtbzoBoz2G@lists.linaro.org
X-Gm-Message-State: AOJu0YwNi6rE6Zh91lnoLNkQsesh+GudMuHZk7PNIkBe96kTfxQCjjqi
	e4MqG9R3MrcwKCpc5SB+q0JmUkLPzN36eMSqGN9uQ8X3uEiIuq2u3TL5IlkwLBTqlpJuSHXcwVT
	OYOD0eJQwi4O1z0eG0Xytx0cQ4nX4GSa8iXizMEijNZSxXJk2HNk1HP9Oc8jed4BruE7X
X-Gm-Gg: AZuq6aJlU1Bl1mRiL5GN1BdkmjAklfXTp4HCQjuIgc4hHL2HyT9QS148AZiONl+k2rv
	ahsq+4QvzYcpEs5a3JqQuJamrOSLjKbGXAmQ/Q7O4xqjUqx9he/YRakImKFcMY6toVWeCx73KqS
	brBkfUuwZp7YNpaAde3QFLkWWcmS03qqjqm25wiTIOGzQTwd1lwHWcTjZus/o7qcnPyJnmwlK6f
	r6tcdL15OyMopheixyyZhVKe1AioDBjwhYC7KkjfqmtTjce4kGEiC+WUt2T6/KVmcUupzrYLn//
	/zliaezkS93Jz3gXvOdO5I87ce6N6JhdRhuv8AuAdb0RdwoKqLRZPI02UJjH6DrMhgD65SXVakC
	L0JJ2g1wu6UvSfXqef2co2KXSFozzRc6R9j/10xeDL/TXrVq5rrIyI5xif3XoQyA=
X-Received: by 2002:a05:620a:4148:b0:8cb:3f0e:7740 with SMTP id af79cd13be357-8cb79f3269dmr425872285a.51.1771521685062;
        Thu, 19 Feb 2026 09:21:25 -0800 (PST)
X-Received: by 2002:a05:620a:4148:b0:8cb:3f0e:7740 with SMTP id af79cd13be357-8cb79f3269dmr425866385a.51.1771521684499;
        Thu, 19 Feb 2026 09:21:24 -0800 (PST)
Received: from localhost (pool-100-17-19-56.bstnma.fios.verizon.net. [100.17.19.56])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50684b94e9fsm210902201cf.24.2026.02.19.09.21.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 09:21:24 -0800 (PST)
Date: Thu, 19 Feb 2026 12:21:23 -0500
From: Eric Chanudet <echanude@redhat.com>
To: Maxime Ripard <mripard@redhat.com>
Message-ID: <aZdEMlKE_kGheI-b@fedora>
References: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
 <20260218-dmabuf-heap-cma-dmem-v2-3-b249886fb7b2@redhat.com>
 <20260219-illustrious-tungsten-starfish-5dad8c@houat>
MIME-Version: 1.0
In-Reply-To: <20260219-illustrious-tungsten-starfish-5dad8c@houat>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: TNg0YUTJcYRkVMvaa5TZEcZD1NTyt8erSrKbg5oYOPQ_1771521685
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spamd-Bar: ---
X-MailFrom: echanude@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QXL3QOYOYOHERJON3HITNBQQMY7AIOIM
X-Message-ID-Hash: QXL3QOYOYOHERJON3HITNBQQMY7AIOIM
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:35 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Albert Esteve <aesteve@redhat.com>, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/3] dma-buf: heaps: cma: charge each cma heap's dmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QXL3QOYOYOHERJON3HITNBQQMY7AIOIM/>
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
	DATE_IN_PAST(1.00)[1343];
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
	RCPT_COUNT_TWELVE(0.00)[21];
	DKIM_TRACE(0.00)[redhat.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[echanude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.969];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 2C12A411FE4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Feb 19, 2026 at 10:16:37AM +0100, Maxime Ripard wrote:
> Hi,
> 
> On Wed, Feb 18, 2026 at 12:14:12PM -0500, Eric Chanudet wrote:
> > The cma dma-buf heaps let userspace allocate buffers in CMA regions
> > without enforcing limits. Since each cma region registers in dmem,
> > charge against it when allocating a buffer in a cma heap.
> > 
> > Signed-off-by: Eric Chanudet <echanude@redhat.com>
> > ---
> >  drivers/dma-buf/heaps/cma_heap.c | 15 ++++++++++++++-
> >  1 file changed, 14 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
> > index 49cc45fb42dd7200c3c14384bcfdbe85323454b1..bbd4f9495808da19256d97bd6a4dca3e1b0a30a0 100644
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
> > @@ -58,6 +59,7 @@ struct cma_heap_buffer {
> >  	pgoff_t pagecount;
> >  	int vmap_cnt;
> >  	void *vaddr;
> > +	struct dmem_cgroup_pool_state *pool;
> 
> I guess we should add an #if IS_ENABLED #endif guard for dmem?
> 

Sure, I saw the other user (ttm) didn't, but that makes sense as the
field is useless if dmem is not enabled.

> >  };
> >  
> >  struct dma_heap_attachment {
> > @@ -276,6 +278,7 @@ static void cma_heap_dma_buf_release(struct dma_buf *dmabuf)
> >  	kfree(buffer->pages);
> >  	/* release memory */
> >  	cma_release(cma_heap->cma, buffer->cma_pages, buffer->pagecount);
> > +	dmem_cgroup_uncharge(buffer->pool, buffer->len);
> >  	kfree(buffer);
> >  }
> >  
> > @@ -319,9 +322,17 @@ static struct dma_buf *cma_heap_allocate(struct dma_heap *heap,
> >  	if (align > CONFIG_CMA_ALIGNMENT)
> >  		align = CONFIG_CMA_ALIGNMENT;
> >  
> > +	if (mem_accounting) {
> > +		ret = dmem_cgroup_try_charge(
> > +			cma_get_dmem_cgroup_region(cma_heap->cma), size,
> > +			&buffer->pool, NULL);
> 
> This alone doesn't call for a new version, but adhering to the kernel
> coding style would look like this:
> 
> +		ret = dmem_cgroup_try_charge(cma_get_dmem_cgroup_region(cma_heap->cma),
> +					     size, &buffer->pool, NULL);

Will add to v3 with the other changes.

Thanks,

> 
> It looks good to me otherwise,
> Acked-by: Maxime Ripard <mripard@kernel.org>
> 
> Maxime



-- 
Eric Chanudet

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
