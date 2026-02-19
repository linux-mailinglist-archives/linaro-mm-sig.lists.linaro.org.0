Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDFiCOwS4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:48:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFF5411FD6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:48:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 103A440A20
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:48:43 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id B38F43F75B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 17:10:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=Y5DQVcVI;
	spf=pass (lists.linaro.org: domain of echanude@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=echanude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771521046;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1ufSHZcVh+Dpk6NOIfY9tkcU2Fx29sq1FQcHOa9iMf4=;
	b=Y5DQVcVIb6pypE3mvGaZB0M9DjIEDQT46mr9F+IW2R7YmdlwrlIPOify/EPiOgkvKQE3bE
	Dfgv67xZQRaac+7Ptn5/62xKGz1KUQvlQVxxFAsjUJT6ZSpbCbCfMpTYpGgpOyIFO6FaoM
	POHkcxqvRKsmtIeJT4Vd5Fn3ZjR8QJs=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-690-q53gRIQDM4K93J7d7lEwGg-1; Thu, 19 Feb 2026 12:10:43 -0500
X-MC-Unique: q53gRIQDM4K93J7d7lEwGg-1
X-Mimecast-MFC-AGG-ID: q53gRIQDM4K93J7d7lEwGg_1771521043
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c7166a4643so894608785a.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 09:10:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771521043; x=1772125843;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1ufSHZcVh+Dpk6NOIfY9tkcU2Fx29sq1FQcHOa9iMf4=;
        b=UzNctTnuue1K+4EIavap0Glyby1uMvzwtmCip3V62s7/7sxKIWMQndgTsZoff0qegZ
         BhArV0r0o29gOHtdxG9klfwQyAtg5OvGVG09Wg2b/KZGmj1I8FoG1FIzFEEqVC+98EcV
         sU6pRX0FfhblOxRey41JV/JPabEDfsmTVmsUXtOMrOlsVk++l5cmbQeC2Ox2c2/Lwm0n
         pOK4sSZ3VSfqQku8wIcRcGV3vIlKuIIJM1aVwCsb2W5s9zynGBCOHA2M5THlavVqPsf8
         CF1BBIzd24FPfVbR+QiDYpXRgerTMuQ14j1yTWcHz4Dy0+EwxGBBrYWu0xQGvWAfflKa
         wIbA==
X-Forwarded-Encrypted: i=1; AJvYcCVImGHLJ8Tewk3RHFYOLQfhim6sLcHdMHJL/NGHBz4AW6JZ90Hp9dYzgy/sS1OA4bPJiy0/mP3eVRsneVly@lists.linaro.org
X-Gm-Message-State: AOJu0YzU6I+bqnrFBeCQ9C4Yfmb2nqN8wwHJp+IoVXGNOoLSoE7dls14
	5zsRPckq3udVSBg1/K+JmVgDOC2PbcsuK18d5BqOU07j03QG45KlR1RsPWejbaCC4aapIbBz+lJ
	8V1fGxQuZpYjUY4E7REXCZrCGdJMmWBCMh901+SUYjamZUYV6dgMoD6Kd7q75A6TXcdKo
X-Gm-Gg: AZuq6aJDiqZsf9wLM7oVCdceN6RWjmo2/q4jeNwoR/Y/0cOoY5H31aKDWLgY1R74DpQ
	YKS/H7lXVJWKNNwjAtLmyhj/13ZhgoUzy4R3MS6vQMbaeHosjkNgR1Yy5CD1iJZvL2BvhSZ5sSB
	jm0a6F2gPzvftfAY/lTdh6MEeEq/ZWzCxY5T5JJ9Ju6HeKdXdSczcZ9Prgg6uf3YSL0l8FH/yev
	96tZGWjobIVC04ImmBK+gn2QLD7GKUdSVTrHRTYqUJuw6Tkuj0iv4ViL79qI6vP40csMHCPEDeG
	6EOjdVRuH1RynqQWYCPwu5ABVsAgsZsusik9Pfs7itoXWpTUmT93qArNMZPmiicwLLi7iM1VUSl
	ma2+/YdigdYQg5GF7BlYRo9xyecd/emXldHo6jDWRq0yMjq/1NifXIkj8PdCun0o=
X-Received: by 2002:a05:620a:44c2:b0:8c7:fdc:e877 with SMTP id af79cd13be357-8cb740b5c53mr703611685a.41.1771521043253;
        Thu, 19 Feb 2026 09:10:43 -0800 (PST)
X-Received: by 2002:a05:620a:44c2:b0:8c7:fdc:e877 with SMTP id af79cd13be357-8cb740b5c53mr703604885a.41.1771521042525;
        Thu, 19 Feb 2026 09:10:42 -0800 (PST)
Received: from localhost (pool-100-17-19-56.bstnma.fios.verizon.net. [100.17.19.56])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cb2b0e12eesm2128955585a.15.2026.02.19.09.10.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 09:10:42 -0800 (PST)
Date: Thu, 19 Feb 2026 12:10:41 -0500
From: Eric Chanudet <echanude@redhat.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <aZdAOMBRdRw59fa0@fedora>
References: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
 <20260218-dmabuf-heap-cma-dmem-v2-3-b249886fb7b2@redhat.com>
 <435330fd-ecdd-43c7-8527-f285c03c6421@amd.com>
MIME-Version: 1.0
In-Reply-To: <435330fd-ecdd-43c7-8527-f285c03c6421@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Iv9CFz_eLvmnRqp2njnvCcH6MAA45DhndBQ9ue-_BZA_1771521043
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spamd-Bar: -----
X-MailFrom: echanude@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: G6BVMILKYEXMSELMA336SSIEEIMBYJ6Q
X-Message-ID-Hash: G6BVMILKYEXMSELMA336SSIEEIMBYJ6Q
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:35 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Maxime Ripard <mripard@redhat.com>, Albert Esteve <aesteve@redhat.com>, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/3] dma-buf: heaps: cma: charge each cma heap's dmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G6BVMILKYEXMSELMA336SSIEEIMBYJ6Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
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
	NEURAL_HAM(-0.00)[-0.967];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: EAFF5411FD6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Feb 19, 2026 at 08:17:28AM +0100, Christian K=F6nig wrote:
>=20
>=20
> On 2/18/26 18:14, Eric Chanudet wrote:
> > The cma dma-buf heaps let userspace allocate buffers in CMA regions
> > without enforcing limits. Since each cma region registers in dmem,
> > charge against it when allocating a buffer in a cma heap.
> >=20
> > Signed-off-by: Eric Chanudet <echanude@redhat.com>
> > ---
> >  drivers/dma-buf/heaps/cma_heap.c | 15 ++++++++++++++-
> >  1 file changed, 14 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/c=
ma_heap.c
> > index 49cc45fb42dd7200c3c14384bcfdbe85323454b1..bbd4f9495808da19256d97b=
d6a4dca3e1b0a30a0 100644
> > --- a/drivers/dma-buf/heaps/cma_heap.c
> > +++ b/drivers/dma-buf/heaps/cma_heap.c
> > @@ -27,6 +27,7 @@
> >  #include <linux/scatterlist.h>
> >  #include <linux/slab.h>
> >  #include <linux/vmalloc.h>
> > +#include <linux/cgroup_dmem.h>
> > =20
> >  #define DEFAULT_CMA_NAME "default_cma_region"
> > =20
> > @@ -58,6 +59,7 @@ struct cma_heap_buffer {
> >  	pgoff_t pagecount;
> >  	int vmap_cnt;
> >  	void *vaddr;
> > +	struct dmem_cgroup_pool_state *pool;
> >  };
> > =20
> >  struct dma_heap_attachment {
> > @@ -276,6 +278,7 @@ static void cma_heap_dma_buf_release(struct dma_buf=
 *dmabuf)
> >  	kfree(buffer->pages);
> >  	/* release memory */
> >  	cma_release(cma_heap->cma, buffer->cma_pages, buffer->pagecount);
> > +	dmem_cgroup_uncharge(buffer->pool, buffer->len);
> >  	kfree(buffer);
> >  }
> > =20
> > @@ -319,9 +322,17 @@ static struct dma_buf *cma_heap_allocate(struct dm=
a_heap *heap,
> >  	if (align > CONFIG_CMA_ALIGNMENT)
> >  		align =3D CONFIG_CMA_ALIGNMENT;
> > =20
> > +	if (mem_accounting) {
>=20
> Since mem_accounting is a module parameter it is possible to make it chan=
geable during runtime.
>=20
> IIRC it currently is read only, but maybe add a one line comment that the=
 cma heap now depends on that.
>=20

Agreed, while read-only it is easily missed without at least a comment.
Alternatively, should that value be captured in the init callback to
guaranty it is set once and make this requirement clearer?

Thanks,

> Apart from that the series looks totally sane to me.
>=20
> Regards,
> Christian.
>=20
> > +		ret =3D dmem_cgroup_try_charge(
> > +			cma_get_dmem_cgroup_region(cma_heap->cma), size,
> > +			&buffer->pool, NULL);
> > +		if (ret)
> > +			goto free_buffer;
> > +	}
> > +
> >  	cma_pages =3D cma_alloc(cma_heap->cma, pagecount, align, false);
> >  	if (!cma_pages)
> > -		goto free_buffer;
> > +		goto uncharge_cgroup;
> > =20
> >  	/* Clear the cma pages */
> >  	if (PageHighMem(cma_pages)) {
> > @@ -376,6 +387,8 @@ static struct dma_buf *cma_heap_allocate(struct dma=
_heap *heap,
> >  	kfree(buffer->pages);
> >  free_cma:
> >  	cma_release(cma_heap->cma, cma_pages, pagecount);
> > +uncharge_cgroup:
> > +	dmem_cgroup_uncharge(buffer->pool, size);
> >  free_buffer:
> >  	kfree(buffer);
> > =20
> >=20
>=20

--=20
Eric Chanudet

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
