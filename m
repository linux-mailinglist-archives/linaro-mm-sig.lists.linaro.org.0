Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7346365A0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 17:23:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E3BAD3EE6D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 16:23:12 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by lists.linaro.org (Postfix) with ESMTPS id D38333ECED
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 16:23:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=MdK7M0Vz;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.208.42) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-ed1-f42.google.com with SMTP id x2so25570733edd.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 08:23:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iTqTgZZVPcHur4ir72Zm6jriTBFysIHApeXSgPETKzY=;
        b=MdK7M0VzmZomTsVbTF5VbNsJh1nEKpsEXsHKhmrxjl/ibRYPHUUU639yOwXeAFFKE/
         d5+Yx24UTr8EuPay2xBO2QkSphdbrLFPSkqmd351ooGBqm+1CnMAD8DdMkfb7NerISxP
         7mkvjLZxrCmbInMgkOvRsf1/xXov6LDHvpROg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iTqTgZZVPcHur4ir72Zm6jriTBFysIHApeXSgPETKzY=;
        b=luC7gg8lkwvbBvBvoVUa2pOsoJif0BZWOWowPoiJYkyCPDMe7/a6CzbPR5g94Jhnxs
         2y16t8XrIS3CWOet8Se6V5JA8naxTYicfhS++CYBFri5L2DnESpLtP8p1sPi1dBZk0Y5
         13qbIp2Jnlj5BvC2imfFYRIxu1fzi7+4k/DzQmnTZ43gkMaSPV7/6VuEKxRyu4fDJcOC
         P3FGnR2udnym3hRrKNQM7MP6L/BGiLxT8rJopUVGrYWTgvp5KGZgfccwCKSfoDetI0D4
         FQdRQed0ctbe9eG1H3sVwgizuSfrm/EJLQMo6kalD9HKAtabpgh0ElPRZN6emLYsPMxx
         dOvg==
X-Gm-Message-State: ANoB5pnZJEpfOQJr1Cbwn8fa9MxrudBLiR3iC9dqTTLbyN0w0pRFRehS
	64b6WBoIabTVXOON5O38F/HTYu7ps8N/SE9N0kCOKw==
X-Google-Smtp-Source: AA0mqf4uJK6xmmkcy0DbmopiWQIfYRWzSsGguvQ75ijiLZdjrbFVHaDuEpUfzy2ywAK59n9HUhAbmq2ai7zD1+42AAU=
X-Received: by 2002:a05:6402:d69:b0:46a:392b:2440 with SMTP id
 ec41-20020a0564020d6900b0046a392b2440mr2475553edb.341.1669220582842; Wed, 23
 Nov 2022 08:23:02 -0800 (PST)
MIME-Version: 1.0
References: <3d8607b4-973d-945d-c184-260157ade7c3@amd.com> <CAKMK7uHVGgGHTiXYOfseXXda2Ug992nYvhPsL+4z18ssqeHXHQ@mail.gmail.com>
 <b05e6091-4e07-1e32-773d-f603ac9ac98b@gmail.com> <CAKMK7uFjmzewqv3r4hL9hvLADwV536n2n6xbAWaUvmAcStr5KQ@mail.gmail.com>
 <Y34WI9SZdiH/p1tA@ziepe.ca> <f8f844a5-0910-d19a-5aea-df7a1d83b1d3@gmail.com>
 <Y34XvmtHfb4ZwopN@ziepe.ca> <dc2a9d7f-192b-e9d8-b1d1-3b868cb1fd44@gmail.com>
 <Y34gBUl0m+j1JdFk@ziepe.ca> <CAKMK7uHWyOcZ77-+GY7hxFUA65uQYFe0fw2rww6Y-rLXvHFAYw@mail.gmail.com>
 <Y342emkzKHXLQvsN@ziepe.ca>
In-Reply-To: <Y342emkzKHXLQvsN@ziepe.ca>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 23 Nov 2022 17:22:50 +0100
Message-ID: <CAKMK7uEXybD3iV7dDjcaP=joY-kE8aZZ5odCsjUBpatJe=Sd=Q@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
X-Rspamd-Queue-Id: D38333ECED
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FREEMAIL_CC(0.00)[gmail.com,amd.com,lists.freedesktop.org,suse.de,google.com,infradead.org,linaro.org,intel.com,vger.kernel.org,lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-ed1-f42.google.com:rdns,mail-ed1-f42.google.com:helo];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.42:from];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: PFXWT3Y24CT6KXTVGKD5AKRZ3T7QP4MX
X-Message-ID-Hash: PFXWT3Y24CT6KXTVGKD5AKRZ3T7QP4MX
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, DRI Development <dri-devel@lists.freedesktop.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Thomas Zimmermann <tzimmermann@suse.de>, Suren Baghdasaryan <surenb@google.com>, Matthew Wilcox <willy@infradead.org>, John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PFXWT3Y24CT6KXTVGKD5AKRZ3T7QP4MX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 23 Nov 2022 at 16:04, Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Wed, Nov 23, 2022 at 03:28:27PM +0100, Daniel Vetter wrote:
>
> > > This patch is known to be broken in so many ways. It also has a major
> > > security hole that it ignores the PTE flags making the page
> > > RO. Ignoring the special bit is somehow not surprising :(
> > >
> > > This probably doesn't work, but is the general idea of what KVM needs
> > > to do:
> >
> > Oh dear, when I dug around in there I entirely missed that
> > kvm_try_get_pfn exists, and it's very broken indeed. kvm really needs
> > to grow a proper mmu notifier.
> >
> > Another thing I'm wondering right now, the follow_pte();
> > fixup_user_fault(); follow_pte(); approach does not make any
> > guarantees of actually being right. If you're sufficiently unlucky you
> > might race against an immediate pte invalidate between the fixup and
> > the 2nd follow_pte(). But you can also not loop, because that would
> > fail to catch permanent faults.
>
> Yes, it is pretty broken.
>
> kvm already has support for mmu notifiers and uses it for other
> stuff. I can't remember what exactly this code path was for, IIRC
> Paolo talked about having a big rework/fix for it when we last talked
> about the missing write protect. I also vauagely recall he had some
> explanation why this might be safe.
>
> > I think the iommu fault drivers have a similar pattern.
>
> Where? It shouldn't
>
> The common code for SVA just calls handle_mm_fault() and restarts the
> PRI. Since the page table is physically shared there is no issue with
> a stale copy.
>
> > What am I missing here? Or is that also just broken. gup works around
> > this with the slow path that takes the mmap sem and walking the vma
> > tree, follow_pte/fixup_user_fautl users dont.
>
> follow_pte() is just fundamentally broken, things must not use it.
>
> > Maybe mmu notifier based restarting would help with this too, if
> > done properly.
>
> That is called hmm_range_fault()

Ah right I mixed that up on a quick grep, thanks for pointing me in
the right direction. Worries appeased.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
