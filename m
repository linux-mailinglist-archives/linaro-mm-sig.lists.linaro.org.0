Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D4276634349
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 19:08:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D5B003ED1C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 18:08:46 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by lists.linaro.org (Postfix) with ESMTPS id 11D8A3EC65
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 18:08:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=HJQzg3HA;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.218.52) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-ej1-f52.google.com with SMTP id me22so21052359ejb.8
        for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 10:08:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yeE/fvHo7zplB3H0njfvx+KBD+UsXtgVtTcTsJSQKTs=;
        b=HJQzg3HAQLfej9Lynj1eAMPPLxHBUWytNt/6mGkTn4aeoz+YFCARsIB3utatEXxeDD
         OyHr1lPIXUf7zx9qQWafuBhFg7CdNJSUeoRB61i9yhQ22q5typ8pT/pxa5z5QY5lUTEh
         gk+HrYz68CeLLiJM2B8IZENBotgdF7bB+GjpA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yeE/fvHo7zplB3H0njfvx+KBD+UsXtgVtTcTsJSQKTs=;
        b=xUzf5LkHiT09xIkHcfFli1QODAP2iXRtUKr2wgDNDunn0oxbJ3hchOprCaZkBQjVeE
         LB2ZgpB+hBv098u3DtKWpxChjFP3PC8UEKkY5ymlDzdpE4T/y7qVc1RThDaSepEG4QUp
         JaMZ16gQbhIHzIaqJxdY3R4XK5cjN9Ejr3WiWSs18JsmlFsz4Tr/Owq42DA4CQmFxuDd
         1aQiK6wTlJayfwrn+jzy0OzoMudjDXEXVWpD676Aq7vpg7mTc8UFYC48Nb1B6dBt+j1w
         fPEe3VX9DkMUZm3VyLezkwgBLdWfIWKe4vkvr0BggAGoXR0SlebR6Bgru83T+KxGc6G8
         kO/g==
X-Gm-Message-State: ANoB5pnYNEZ4wTEdV4ymzI1igQM9y/rS42ZFuwdCznFrOgGAeGpYhEcD
	7HHRWhgr/lU9LpiR6xyL7E/tGhAbPENKN+PAabW7cQ==
X-Google-Smtp-Source: AA0mqf5YaIer5B7BWrJ7ocvdT+1R5W8bGrPu5RkAiIG9/MkRdfGUud/7t1Fi3LwOKtyXP+dS2/LSLhbZV2Y6VlJIN58=
X-Received: by 2002:a17:906:414c:b0:7a9:ecc1:2bd2 with SMTP id
 l12-20020a170906414c00b007a9ecc12bd2mr8382937ejk.545.1669140516986; Tue, 22
 Nov 2022 10:08:36 -0800 (PST)
MIME-Version: 1.0
References: <20221122170801.842766-1-daniel.vetter@ffwll.ch> <Y30PDdsvHIJo5YHR@ziepe.ca>
In-Reply-To: <Y30PDdsvHIJo5YHR@ziepe.ca>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 22 Nov 2022 19:08:25 +0100
Message-ID: <CAKMK7uEccwYTNwDYQazmZvTfBFQOikZt5A6BmegweyO-inKYbQ@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
X-Rspamd-Queue-Id: 11D8A3EC65
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.40 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.52:from];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.947];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:email,mail-ej1-f52.google.com:rdns,mail-ej1-f52.google.com:helo];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: B6B4YXOWCP4ZUZAL6T7GJH3A2FIJWSZZ
X-Message-ID-Hash: B6B4YXOWCP4ZUZAL6T7GJH3A2FIJWSZZ
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: DRI Development <dri-devel@lists.freedesktop.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, Suren Baghdasaryan <surenb@google.com>, Matthew Wilcox <willy@infradead.org>, John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B6B4YXOWCP4ZUZAL6T7GJH3A2FIJWSZZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 22 Nov 2022 at 19:04, Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Tue, Nov 22, 2022 at 06:08:00PM +0100, Daniel Vetter wrote:
> > tldr; DMA buffers aren't normal memory, expecting that you can use
> > them like that (like calling get_user_pages works, or that they're
> > accounting like any other normal memory) cannot be guaranteed.
> >
> > Since some userspace only runs on integrated devices, where all
> > buffers are actually all resident system memory, there's a huge
> > temptation to assume that a struct page is always present and useable
> > like for any more pagecache backed mmap. This has the potential to
> > result in a uapi nightmare.
> >
> > To stop this gap require that DMA buffer mmaps are VM_PFNMAP, which
> > blocks get_user_pages and all the other struct page based
> > infrastructure for everyone. In spirit this is the uapi counterpart to
> > the kernel-internal CONFIG_DMABUF_DEBUG.
> >
> > Motivated by a recent patch which wanted to swich the system dma-buf
> > heap to vm_insert_page instead of vm_insert_pfn.
> >
> > v2:
> >
> > Jason brought up that we also want to guarantee that all ptes have the
> > pte_special flag set, to catch fast get_user_pages (on architectures
> > that support this). Allowing VM_MIXEDMAP (like VM_SPECIAL does) would
> > still allow vm_insert_page, but limiting to VM_PFNMAP will catch that.
> >
> > From auditing the various functions to insert pfn pte entires
> > (vm_insert_pfn_prot, remap_pfn_range and all it's callers like
> > dma_mmap_wc) it looks like VM_PFNMAP is already required anyway, so
> > this should be the correct flag to check for.
>
> I didn't look at how this actually gets used, but it is a bit of a
> pain to insert a lifetime controlled object like a struct page as a
> special PTE/VM_PFNMAP
>
> How is the lifetime model implemented here? How do you know when
> userspace has finally unmapped the page?

The vma has a filp which is the refcounted dma_buf. With dma_buf you
never get an individual page it's always the entire object. And it's
up to the allocator how exactly it wants to use or not use the page's
refcount. So if gup goes in and elevates the refcount, you can break
stuff, which is why I'm doing this.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
