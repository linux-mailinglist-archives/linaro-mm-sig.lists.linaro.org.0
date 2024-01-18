Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC0C831BC4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jan 2024 15:50:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DAB2D40ECA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jan 2024 14:50:09 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by lists.linaro.org (Postfix) with ESMTPS id BFC713F19B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jan 2024 14:49:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=LuM4hce+;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.218.53) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a29b850ec66so380700566b.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jan 2024 06:49:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1705589389; x=1706194189; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=T0SV8U+IlkdLHr/XjT2iGav+KPgKzY+DGmeC0LEv1Zs=;
        b=LuM4hce+P09ibI2WqjDaQaB8tpnViagfFzxIEshq/b8GWriReIkrvHEAvaQYzQwopn
         tC0y5itSmpqEScPMOUul7wU9EjipPrDr4saTAQ5IeLTh1xS8u2xjycmPvVnxLVV+Z2lz
         ZkT4lFv1lHiChik/RLhLTJTWgAtqtIKF2o1tI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705589389; x=1706194189;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T0SV8U+IlkdLHr/XjT2iGav+KPgKzY+DGmeC0LEv1Zs=;
        b=KyfuzhzBkwBWFpNnNYtwKQUcX7nDPs18oufCjl+VSmCuxurw4k/fYJHn2FctaFamPw
         B8v2vuhlWbaiaMm/SDH/twoBKC5KDXS4+Xh7BDLtu7R0cRVf3BnFH2AJlGnxeGfYqOUF
         Sgv3BLBltaQVF6E+7uvyCQ1q2vXfuisaCFsLq181VYrfA86xAq9Qrwi7lvpXBKKfG/BE
         ZfyQxKzGmCkLPP3jPfFaT6NqdaZZnfn/mpFXj6Xe8Oh+g0M0UaPZRWuRebCdfTCZd39K
         OURGZ8/Pi7/MmXOYxbm0Uc6kAIX207xIGUz5f33Pf+zp16fGDQbpwIkfK3QvY3HTbKBd
         YAvw==
X-Gm-Message-State: AOJu0Yyq77W5lLTE/9h6VjeYjNDFvJHK0Xzuu3V3jzPqH8Xci6cAz7qN
	FnH+TOo/tfWM4FEXtc2EXpplWEyLN3T1AvV+QQz+SdxxaRSUmnH85pHbJbRfSGA=
X-Google-Smtp-Source: AGHT+IEVM70e6beCogh7O7jcU8xaluhv/ktlLII9rfJtR4gxAiS0g3VAw/ikru3AEG+C2Wt7+UZAPw==
X-Received: by 2002:a17:906:4088:b0:a2e:9ff8:218d with SMTP id u8-20020a170906408800b00a2e9ff8218dmr1190541ejj.3.1705589388609;
        Thu, 18 Jan 2024 06:49:48 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id sa19-20020a1709076d1300b00a2eb5c46618sm2437136ejc.19.2024.01.18.06.49.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jan 2024 06:49:47 -0800 (PST)
Date: Thu, 18 Jan 2024 15:49:45 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <Zak6iW8lktml7f2H@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	Sandeep Patil <sspatil@android.com>,
	Laura Abbott <labbott@redhat.com>, android-mm@google.com,
	minchan@google.com, John Stultz <john.stultz@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20240117181141.286383-1-tjmercier@google.com>
 <20a68f86-27f0-48f4-a066-7dcf0092858e@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20a68f86-27f0-48f4-a066-7dcf0092858e@amd.com>
X-Operating-System: Linux phenom 6.5.0-4-amd64 
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-7.40 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.53:from];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ffwll.ch];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BFC713F19B
X-Spamd-Bar: -------
Message-ID-Hash: 2CIYOVYUEEKCAJOBHSLVTIP65OK74ODE
X-Message-ID-Hash: 2CIYOVYUEEKCAJOBHSLVTIP65OK74ODE
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "T.J. Mercier" <tjmercier@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Sandeep Patil <sspatil@android.com>, Laura Abbott <labbott@redhat.com>, android-mm@google.com, minchan@google.com, daniel@ffwll.ch, John Stultz <john.stultz@linaro.org>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: Don't track CMA dma-buf pages under RssFile
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2CIYOVYUEEKCAJOBHSLVTIP65OK74ODE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 18, 2024 at 11:02:22AM +0100, Christian K=F6nig wrote:
> Am 17.01.24 um 19:11 schrieb T.J. Mercier:
> > DMA buffers allocated from the CMA dma-buf heap get counted under
> > RssFile for processes that map them and trigger page faults. In
> > addition to the incorrect accounting reported to userspace, reclaim
> > behavior was influenced by the MM_FILEPAGES counter until linux 6.8, but
> > this memory is not reclaimable. [1] Change the CMA dma-buf heap to set
> > VM_PFNMAP on the VMA so MM does not poke at the memory managed by this
> > dma-buf heap, and use vmf_insert_pfn to correct the RSS accounting.
> >=20
> > The system dma-buf heap does not suffer from this issue since
> > remap_pfn_range is used during the mmap of the buffer, which also sets
> > VM_PFNMAP on the VMA.
>=20
> Mhm, not an issue with this patch but Daniel wanted to add a check for
> VM_PFNMAP to dma_buf_mmap() which would have noted this earlier.
>=20
> I don't fully remember the discussion but for some reason that was never
> committed. We should probably try that again.

Iirc the issue is that dma_mmap is not guaranteed to give you a VM_SPECIAL
mapping, at least on absolutely all architectures. That's why I defacto
dropped that idea, but it would indeed be really great if we could
resurrect it.

Maybe for x86 only? Or x86+armv8, I'm honestly not sure anymore which
exact cases ended up with a VM_NORMAL mapping ... Would need a pile of
digging.

I think all the other patches I've landed.
-Sima

>=20
> > [1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/c=
ommit/mm/vmscan.c?id=3Dfb46e22a9e3863e08aef8815df9f17d0f4b9aede
> >=20
> > Fixes: b61614ec318a ("dma-buf: heaps: Add CMA heap to dmabuf heaps")
> > Signed-off-by: T.J. Mercier<tjmercier@google.com>
>=20
> Acked-by: Christian K=F6nig <christian.koenig@amd.com>
>=20
> > ---
> >   drivers/dma-buf/heaps/cma_heap.c | 7 +++----
> >   1 file changed, 3 insertions(+), 4 deletions(-)
> >=20
> > diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/c=
ma_heap.c
> > index ee899f8e6721..4a63567e93ba 100644
> > --- a/drivers/dma-buf/heaps/cma_heap.c
> > +++ b/drivers/dma-buf/heaps/cma_heap.c
> > @@ -168,10 +168,7 @@ static vm_fault_t cma_heap_vm_fault(struct vm_faul=
t *vmf)
> >   	if (vmf->pgoff > buffer->pagecount)
> >   		return VM_FAULT_SIGBUS;
> > -	vmf->page =3D buffer->pages[vmf->pgoff];
> > -	get_page(vmf->page);
> > -
> > -	return 0;
> > +	return vmf_insert_pfn(vma, vmf->address, page_to_pfn(buffer->pages[vm=
f->pgoff]));
> >   }
> >   static const struct vm_operations_struct dma_heap_vm_ops =3D {
> > @@ -185,6 +182,8 @@ static int cma_heap_mmap(struct dma_buf *dmabuf, st=
ruct vm_area_struct *vma)
> >   	if ((vma->vm_flags & (VM_SHARED | VM_MAYSHARE)) =3D=3D 0)
> >   		return -EINVAL;
> > +	vm_flags_set(vma, VM_IO | VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP);
> > +
> >   	vma->vm_ops =3D &dma_heap_vm_ops;
> >   	vma->vm_private_data =3D buffer;

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
