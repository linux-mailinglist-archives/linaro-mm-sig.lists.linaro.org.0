Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IBZKx8T4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:49:35 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D78412018
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:49:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9CE1944901
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:49:34 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 7A508402F5
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 16:14:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=CfrqWhtw;
	spf=pass (lists.linaro.org: domain of echanude@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=echanude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771863273;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sRIkg/BYhLPQ8g8f8DScTuB2QESp5uVFZC6HG+ckSTg=;
	b=CfrqWhtwHwsqlGb9RMyc0jTFj7btcUkY9xetR/GkwXIjksa1bO+iqXWtG3c6nI0mY5P9WM
	RqOICxu5YxO/KcOcoj8E9GYP81tSwbFHhwatpp5idYZcbfxa5OhYTUWiD7XACeuax8UvMH
	HwlY8QQQMw7siRpebRbLesqVEM8NxX0=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-209-pM03Oa_8Mfaf2yMkJR2NEA-1; Mon, 23 Feb 2026 11:14:31 -0500
X-MC-Unique: pM03Oa_8Mfaf2yMkJR2NEA-1
X-Mimecast-MFC-AGG-ID: pM03Oa_8Mfaf2yMkJR2NEA_1771863271
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50340e2b4dfso221474391cf.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 08:14:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771863271; x=1772468071;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sRIkg/BYhLPQ8g8f8DScTuB2QESp5uVFZC6HG+ckSTg=;
        b=k8TY7fFYBvdjF5US5QbeFbOL13sdRuAvEMo/z7eeHm6Xmf/lBnXKPY3zC5dyRKRv+W
         s7hg4RiIU8vnPvuUwZ0I0rDUAQn5cjoLvkwzYqe4HePUcK+5nUe7QoYI/YMcl4iqbQ4o
         azIwPql03W06DghdlkejPcJaez0ckbkpwyjLLT6iCr0z/+fVBMlHzb/7xoJhTMzvZ/vg
         04xPtcCAEecSDBGe0K2ad21m6cJypiPRHIv17C+CORoT0BifbD+VHHHHagtKsCbEs9Tg
         80UBkKSbOtHzJzM3xTgwp4nfU25W5uK+QyEdRVJRpT++01ZrCJgDw3oxiUg6+XzmbY3Q
         HU7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVcBftjOOLskcbT/J4+wnTp4ZfQ37gs0IHPAoqLZU4en8CauokFfN8FunE9RCffEcSQfIPY8vJP0oSFB5pI@lists.linaro.org
X-Gm-Message-State: AOJu0Yw0YOnfpILQls7pUM+g4u0EXcRcsDhMXnXjA4FrEwCs3XntUpbZ
	TKDKGvWs38grYk2BNSbZXD69t0E9w7I+lNoThiCrGVvGStPjumYprzPqhXdRVvsNPrcxRg06FYy
	9WGGoriqUvUDiY7eiK90vPrUSmYGJarDw0Mxv8XlZbMHUiOoCyTIYmInGhs9IPtER4ydr
X-Gm-Gg: AZuq6aJQY1w+4PCD+ui+SitZrjNvxLb0L/kyTOWpXnPmUDJUxx8dT1Vm4hYCyIuVyQe
	45AL8PAkcMpVB9PCplTCjzw3iMShZ3YL03vryAxGJjAuH8YZaGr1jJmI5UfyIgOVL52NmriiB0p
	RzhoJ4fPWuovS5Dck0lra03Zqq5zQaR+4IvWBlJabJcocRQJ/iTQdAEmu8nhsS8q/ihNxt0O7PY
	pZMpEmAt5kcimh+B+ZWXPwNFYzqzG1g6mZpR8LObDO/qCN1dVFQkUGpTnhob28EbHlugk/Um2GV
	d9pZ53rZ7+iirQkS9h5Yz8+LbsZhrv3RXjBFRfhC6bv8UU/C63vkN487SfSeEhijTmwmcsMufXX
	znveKrNyscKJizIumgwaWPaw6gZXv52vADVhLuKId2i2RwyYlP5fEJUXgb/AZarg=
X-Received: by 2002:a05:622a:1b9e:b0:501:17a9:5ff5 with SMTP id d75a77b69052e-5070bbd86aemr127614751cf.21.1771863270804;
        Mon, 23 Feb 2026 08:14:30 -0800 (PST)
X-Received: by 2002:a05:622a:1b9e:b0:501:17a9:5ff5 with SMTP id d75a77b69052e-5070bbd86aemr127614251cf.21.1771863270296;
        Mon, 23 Feb 2026 08:14:30 -0800 (PST)
Received: from localhost (pool-100-17-19-56.bstnma.fios.verizon.net. [100.17.19.56])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-5070d6a1ddasm71793581cf.21.2026.02.23.08.14.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 08:14:29 -0800 (PST)
Date: Mon, 23 Feb 2026 11:14:29 -0500
From: Eric Chanudet <echanude@redhat.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <aZxxGNRHvURLXU3E@x1nano>
References: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
 <20260218-dmabuf-heap-cma-dmem-v2-3-b249886fb7b2@redhat.com>
 <435330fd-ecdd-43c7-8527-f285c03c6421@amd.com>
 <aZdAOMBRdRw59fa0@fedora>
 <0ff02d77-13e8-4b2c-b714-38037595d535@amd.com>
MIME-Version: 1.0
In-Reply-To: <0ff02d77-13e8-4b2c-b714-38037595d535@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Epm3BfQkhhyVBqSO1VyWjY1ynKh8fj-nWBbSit8_uCU_1771863271
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spamd-Bar: ---
X-MailFrom: echanude@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: D67GUWYRVKEZ4MJVYQGDMM35HTRXFBHA
X-Message-ID-Hash: D67GUWYRVKEZ4MJVYQGDMM35HTRXFBHA
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:38 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Maxime Ripard <mripard@redhat.com>, Albert Esteve <aesteve@redhat.com>, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/3] dma-buf: heaps: cma: charge each cma heap's dmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D67GUWYRVKEZ4MJVYQGDMM35HTRXFBHA/>
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
	DATE_IN_PAST(1.00)[1248];
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
	NEURAL_HAM(-0.00)[-0.968];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 85D78412018
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Feb 20, 2026 at 09:16:15AM +0100, Christian K=F6nig wrote:
> On 2/19/26 18:10, Eric Chanudet wrote:
> > On Thu, Feb 19, 2026 at 08:17:28AM +0100, Christian K=F6nig wrote:
> >>
> >>
> >> On 2/18/26 18:14, Eric Chanudet wrote:
> >>> The cma dma-buf heaps let userspace allocate buffers in CMA regions
> >>> without enforcing limits. Since each cma region registers in dmem,
> >>> charge against it when allocating a buffer in a cma heap.
> >>>
> >>> Signed-off-by: Eric Chanudet <echanude@redhat.com>
> >>> ---
> >>>  drivers/dma-buf/heaps/cma_heap.c | 15 ++++++++++++++-
> >>>  1 file changed, 14 insertions(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps=
/cma_heap.c
> >>> index 49cc45fb42dd7200c3c14384bcfdbe85323454b1..bbd4f9495808da19256d9=
7bd6a4dca3e1b0a30a0 100644
> >>> --- a/drivers/dma-buf/heaps/cma_heap.c
> >>> +++ b/drivers/dma-buf/heaps/cma_heap.c
> >>> @@ -27,6 +27,7 @@
> >>>  #include <linux/scatterlist.h>
> >>>  #include <linux/slab.h>
> >>>  #include <linux/vmalloc.h>
> >>> +#include <linux/cgroup_dmem.h>
> >>> =20
> >>>  #define DEFAULT_CMA_NAME "default_cma_region"
> >>> =20
> >>> @@ -58,6 +59,7 @@ struct cma_heap_buffer {
> >>>  	pgoff_t pagecount;
> >>>  	int vmap_cnt;
> >>>  	void *vaddr;
> >>> +	struct dmem_cgroup_pool_state *pool;
> >>>  };
> >>> =20
> >>>  struct dma_heap_attachment {
> >>> @@ -276,6 +278,7 @@ static void cma_heap_dma_buf_release(struct dma_b=
uf *dmabuf)
> >>>  	kfree(buffer->pages);
> >>>  	/* release memory */
> >>>  	cma_release(cma_heap->cma, buffer->cma_pages, buffer->pagecount);
> >>> +	dmem_cgroup_uncharge(buffer->pool, buffer->len);
> >>>  	kfree(buffer);
> >>>  }
> >>> =20
> >>> @@ -319,9 +322,17 @@ static struct dma_buf *cma_heap_allocate(struct =
dma_heap *heap,
> >>>  	if (align > CONFIG_CMA_ALIGNMENT)
> >>>  		align =3D CONFIG_CMA_ALIGNMENT;
> >>> =20
> >>> +	if (mem_accounting) {
> >>
> >> Since mem_accounting is a module parameter it is possible to make it c=
hangeable during runtime.
> >>
> >> IIRC it currently is read only, but maybe add a one line comment that =
the cma heap now depends on that.
> >>
> >=20
> > Agreed, while read-only it is easily missed without at least a comment.
> > Alternatively, should that value be captured in the init callback to
> > guaranty it is set once and make this requirement clearer?
>=20
> It probably makes more sense to make nails with heads and make it runtime=
 configurable.
>=20
> I'm not sure how exactly dmem_cgroup_try_charge()/dmem_cgroup_uncharge() =
works, could be that it works correctly out of the box and you just need to=
 initialize buffer->pool to NULL when mem_accounting is not enabled.
>=20

dmem_cgroup_uncharge() is called unconditionally and checks for NULL
while buffer is kzalloc(), so buffer->pool is NULL from
cma_heap_allocate() if mem_accounting is not set.

Some buffers will be accounted for and some won't depending on when it's
toggled and when buffers are requested, which didn't seem to serve much
use and is why it's set read-only.

> Regards,
> Christian.
>=20
> >=20
> > Thanks,
> >=20
> >> Apart from that the series looks totally sane to me.
> >>
> >> Regards,
> >> Christian.
> >>
> >>> +		ret =3D dmem_cgroup_try_charge(
> >>> +			cma_get_dmem_cgroup_region(cma_heap->cma), size,
> >>> +			&buffer->pool, NULL);
> >>> +		if (ret)
> >>> +			goto free_buffer;
> >>> +	}
> >>> +
> >>>  	cma_pages =3D cma_alloc(cma_heap->cma, pagecount, align, false);
> >>>  	if (!cma_pages)
> >>> -		goto free_buffer;
> >>> +		goto uncharge_cgroup;
> >>> =20
> >>>  	/* Clear the cma pages */
> >>>  	if (PageHighMem(cma_pages)) {
> >>> @@ -376,6 +387,8 @@ static struct dma_buf *cma_heap_allocate(struct d=
ma_heap *heap,
> >>>  	kfree(buffer->pages);
> >>>  free_cma:
> >>>  	cma_release(cma_heap->cma, cma_pages, pagecount);
> >>> +uncharge_cgroup:
> >>> +	dmem_cgroup_uncharge(buffer->pool, size);
> >>>  free_buffer:
> >>>  	kfree(buffer);
> >>> =20
> >>>
> >>
> >=20
>=20

--=20
Eric Chanudet

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
