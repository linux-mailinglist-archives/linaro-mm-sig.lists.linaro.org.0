Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4EF6343FD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 19:50:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A9FA3EC65
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 18:50:20 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by lists.linaro.org (Postfix) with ESMTPS id 73EDD3EC65
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 18:50:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=BDKJqRwo;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.180 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f180.google.com with SMTP id p18so10926042qkg.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 10:50:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NXG1nPyOVdexTTSSHoJBfbyEZKaED5k+nXTjV66jYlA=;
        b=BDKJqRwo4OpkzPMgGsGn6/oh4D+U/HeCaA2DllSJn3ReQ4t31BWyR7f0ms9f8fld6v
         jQqymz74ZvgQN80Rwjy5PO4IHmFTaJJX3Bdpef8ppGHjOE3mXaFMGJQVTAZrtnBO5avc
         5ayHc75mW5Ojm6qUvICrGg7delXXPpPXVc6cCfDq55gcjzIVRVXthDK7ZiGGkJF94ipS
         dLXQ370MaBHQOExNnLYl9NVVIBs8+m0WoZjWcuCzhhjbnd+/+MmCT8N6mLVyEfprAAcV
         M8wKyQSCpWPr/ymGAhNl0UKo8cso9A9KFKjwmcqvA/SplyGCnMObio6ikX/I+ODHb8XN
         f+aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NXG1nPyOVdexTTSSHoJBfbyEZKaED5k+nXTjV66jYlA=;
        b=hilzV+Rj5uvwty3kEFpoXZUAURWFOHN6jua+5VoQBCgC+BogHg7pv1P6zYS3X38E89
         GJjsoNQlTFwOPLdDGe/sPkGurxft2sna36WWOLLAq0VRrL0EgCIOSi2yhaw/KIh3fo++
         /RUCzDK8adfFOeAunbLCs4WE6STaLqvvc56lT8QrIhzS0FZgPD8WLV60EVVFTCFqpDcl
         fob0KcCKFxygKUiftI3gUROTAsB2fXGw1X5k/y6kG2pfk/GV3Jn8LwsSZWN5oiYeaBOB
         VD8cyU0TGZaZbOFV9+b8HLS4KF2f8wVTfu7zhC25CRsd3RuzvBV2Etutr6B0+gbVO+6a
         lYNw==
X-Gm-Message-State: ANoB5pmf6acRXpNSL1jhf/D+AN0z1Ju5tR1zXJOuN1vRfMUWJCS8toAc
	SJ93a85sUIrI2Tys5TZc5JW1iQ==
X-Google-Smtp-Source: AA0mqf7SuJjtuH4cfDjAlmMlnLfTbMZ2UGyyEWh/kbYJFqmPhs6zwT1OxSYGDX0PX5rIcuKCiVFu0g==
X-Received: by 2002:a37:bd82:0:b0:6fb:a2e2:f504 with SMTP id n124-20020a37bd82000000b006fba2e2f504mr11517083qkf.632.1669143011113;
        Tue, 22 Nov 2022 10:50:11 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-122-23.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.122.23])
        by smtp.gmail.com with ESMTPSA id h18-20020a05620a401200b006fa2b1c3c1esm10724419qko.58.2022.11.22.10.50.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 10:50:10 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1oxYLR-009x2J-Oc;
	Tue, 22 Nov 2022 14:50:09 -0400
Date: Tue, 22 Nov 2022 14:50:09 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <Y30Z4VxT7Wdoc1Lc@ziepe.ca>
References: <20221122170801.842766-1-daniel.vetter@ffwll.ch>
 <Y30PDdsvHIJo5YHR@ziepe.ca>
 <CAKMK7uEccwYTNwDYQazmZvTfBFQOikZt5A6BmegweyO-inKYbQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uEccwYTNwDYQazmZvTfBFQOikZt5A6BmegweyO-inKYbQ@mail.gmail.com>
X-Rspamd-Queue-Id: 73EDD3EC65
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-qk1-f180.google.com:rdns,mail-qk1-f180.google.com:helo];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:+];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.180:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: RGXU2Q6AGV7EAVEMKXCA2MCLJU5W52BI
X-Message-ID-Hash: RGXU2Q6AGV7EAVEMKXCA2MCLJU5W52BI
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: DRI Development <dri-devel@lists.freedesktop.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, Suren Baghdasaryan <surenb@google.com>, Matthew Wilcox <willy@infradead.org>, John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RGXU2Q6AGV7EAVEMKXCA2MCLJU5W52BI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Nov 22, 2022 at 07:08:25PM +0100, Daniel Vetter wrote:
> On Tue, 22 Nov 2022 at 19:04, Jason Gunthorpe <jgg@ziepe.ca> wrote:
> >
> > On Tue, Nov 22, 2022 at 06:08:00PM +0100, Daniel Vetter wrote:
> > > tldr; DMA buffers aren't normal memory, expecting that you can use
> > > them like that (like calling get_user_pages works, or that they're
> > > accounting like any other normal memory) cannot be guaranteed.
> > >
> > > Since some userspace only runs on integrated devices, where all
> > > buffers are actually all resident system memory, there's a huge
> > > temptation to assume that a struct page is always present and useable
> > > like for any more pagecache backed mmap. This has the potential to
> > > result in a uapi nightmare.
> > >
> > > To stop this gap require that DMA buffer mmaps are VM_PFNMAP, which
> > > blocks get_user_pages and all the other struct page based
> > > infrastructure for everyone. In spirit this is the uapi counterpart to
> > > the kernel-internal CONFIG_DMABUF_DEBUG.
> > >
> > > Motivated by a recent patch which wanted to swich the system dma-buf
> > > heap to vm_insert_page instead of vm_insert_pfn.
> > >
> > > v2:
> > >
> > > Jason brought up that we also want to guarantee that all ptes have the
> > > pte_special flag set, to catch fast get_user_pages (on architectures
> > > that support this). Allowing VM_MIXEDMAP (like VM_SPECIAL does) would
> > > still allow vm_insert_page, but limiting to VM_PFNMAP will catch that.
> > >
> > > From auditing the various functions to insert pfn pte entires
> > > (vm_insert_pfn_prot, remap_pfn_range and all it's callers like
> > > dma_mmap_wc) it looks like VM_PFNMAP is already required anyway, so
> > > this should be the correct flag to check for.
> >
> > I didn't look at how this actually gets used, but it is a bit of a
> > pain to insert a lifetime controlled object like a struct page as a
> > special PTE/VM_PFNMAP
> >
> > How is the lifetime model implemented here? How do you know when
> > userspace has finally unmapped the page?
> 
> The vma has a filp which is the refcounted dma_buf. With dma_buf you
> never get an individual page it's always the entire object. And it's
> up to the allocator how exactly it wants to use or not use the page's
> refcount. So if gup goes in and elevates the refcount, you can break
> stuff, which is why I'm doing this.

But how does move work?

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
