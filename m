Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BED36362B0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 16:04:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 268B33EE89
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 15:04:38 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by lists.linaro.org (Postfix) with ESMTPS id F400F3ECED
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 15:04:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b="KbvhaD/O";
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.49 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f49.google.com with SMTP id h10so12282241qvq.7
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 07:04:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FBEH7FU3hds/tvKbXdMlXPtYdkYQK2zhDrcZFkrz0mE=;
        b=KbvhaD/OFUhW+1OPwGfqfp9mQ5zjYM5Yc3gcYSNfC0GNXLuvDL6Tt9tkh6TO6Q/M+e
         MPgnHS9/c+nXmkVvB0y+LvWp1Yg4X/GBbBaNettvziGu79P/qHdJWhmD1yDQsjIOPzfe
         HX1V+FBxFpvFta6LJiUWXtALCwxl1RaSpmdhNQUSaBXPCKJ7BUeKj8L5AfxcGhQYXt9r
         4Y0uneLWW86LvWjmM6Z8keD/8toP38iA5CPOlGq0eqX859PaMBK4R6S9XK+13DwqF0U2
         cIjGBN2XTpw58MVf2q4r64z5xLMIIFSO6I57I/RmQdleSVDnMQ1IAT+TJruJ+BHv3Cf5
         23uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FBEH7FU3hds/tvKbXdMlXPtYdkYQK2zhDrcZFkrz0mE=;
        b=oKu0D6xyRdGJdXW15+WHmq3iwclkUPN0ra7wcnCJiJfMP7oM/yzKYiI+75bRueXi7Q
         hGsMMZIuS24ZSDna0lIcId1SKFy1q7R7Bou1pwE2Bg2KlheSVdfupDDDAYYSW2FzWMFN
         /+QVGFNmoK9EPybKiXHW8aUhw24Zsr8rRLO8l2FzYANWkeAVOQHQJQlrNWHrCUj0ZYua
         16iqOU1MvEFCBk+cDC3YEbae6PdHMnB+qN1NeTsMVn1OWlAMIQvHoolTiT4t8nwQVcHu
         J4Th843faAplovDe+otBzdv/6wBYPu/zWR85XikdHj8YmQRfL3MaJ3xR4BdXSFHz4jzP
         ZShg==
X-Gm-Message-State: ANoB5pkJW1thgz3WKn9Rh0oJLnOg5L46P8SVjs8Cpn2l9d0pIMJwCBMU
	RX/8euUorgPacMb/bDxBNz+cGNdAKRj9ag==
X-Google-Smtp-Source: AA0mqf56pidAa3YTB06LY1QYSMl3063l/28XS7JhvQ9qi9gepPYorNcNhgDN/VcYdvMsrmMwORDsaQ==
X-Received: by 2002:ad4:5445:0:b0:4c6:62af:5e14 with SMTP id h5-20020ad45445000000b004c662af5e14mr10912011qvt.95.1669215868434;
        Wed, 23 Nov 2022 07:04:28 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-122-23.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.122.23])
        by smtp.gmail.com with ESMTPSA id ey10-20020a05622a4c0a00b003a5fb681ae7sm9891959qtb.3.2022.11.23.07.04.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 07:04:27 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1oxrIY-00AMYp-BS;
	Wed, 23 Nov 2022 11:04:26 -0400
Date: Wed, 23 Nov 2022 11:04:26 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <Y342emkzKHXLQvsN@ziepe.ca>
References: <3d8607b4-973d-945d-c184-260157ade7c3@amd.com>
 <CAKMK7uHVGgGHTiXYOfseXXda2Ug992nYvhPsL+4z18ssqeHXHQ@mail.gmail.com>
 <b05e6091-4e07-1e32-773d-f603ac9ac98b@gmail.com>
 <CAKMK7uFjmzewqv3r4hL9hvLADwV536n2n6xbAWaUvmAcStr5KQ@mail.gmail.com>
 <Y34WI9SZdiH/p1tA@ziepe.ca>
 <f8f844a5-0910-d19a-5aea-df7a1d83b1d3@gmail.com>
 <Y34XvmtHfb4ZwopN@ziepe.ca>
 <dc2a9d7f-192b-e9d8-b1d1-3b868cb1fd44@gmail.com>
 <Y34gBUl0m+j1JdFk@ziepe.ca>
 <CAKMK7uHWyOcZ77-+GY7hxFUA65uQYFe0fw2rww6Y-rLXvHFAYw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uHWyOcZ77-+GY7hxFUA65uQYFe0fw2rww6Y-rLXvHFAYw@mail.gmail.com>
X-Rspamd-Queue-Id: F400F3ECED
X-Spamd-Bar: -----------
X-Spamd-Result: default: False [-11.50 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[ziepe.ca:dkim];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[47.55.122.23:received,209.85.219.49:from];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_NA(0.00)[ziepe.ca];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:dkim,mail-qv1-f49.google.com:rdns,mail-qv1-f49.google.com:helo];
	FREEMAIL_CC(0.00)[gmail.com,amd.com,lists.freedesktop.org,suse.de,google.com,infradead.org,linaro.org,intel.com,vger.kernel.org,lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.49:from];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[];
	URIBL_BLOCKED(0.00)[ziepe.ca:dkim];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:+];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 3EN4DDXDS4AGWZ3P4HACH2COGOASOI22
X-Message-ID-Hash: 3EN4DDXDS4AGWZ3P4HACH2COGOASOI22
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, DRI Development <dri-devel@lists.freedesktop.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Thomas Zimmermann <tzimmermann@suse.de>, Suren Baghdasaryan <surenb@google.com>, Matthew Wilcox <willy@infradead.org>, John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3EN4DDXDS4AGWZ3P4HACH2COGOASOI22/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Nov 23, 2022 at 03:28:27PM +0100, Daniel Vetter wrote:

> > This patch is known to be broken in so many ways. It also has a major
> > security hole that it ignores the PTE flags making the page
> > RO. Ignoring the special bit is somehow not surprising :(
> >
> > This probably doesn't work, but is the general idea of what KVM needs
> > to do:
> 
> Oh dear, when I dug around in there I entirely missed that
> kvm_try_get_pfn exists, and it's very broken indeed. kvm really needs
> to grow a proper mmu notifier.
> 
> Another thing I'm wondering right now, the follow_pte();
> fixup_user_fault(); follow_pte(); approach does not make any
> guarantees of actually being right. If you're sufficiently unlucky you
> might race against an immediate pte invalidate between the fixup and
> the 2nd follow_pte(). But you can also not loop, because that would
> fail to catch permanent faults.

Yes, it is pretty broken.

kvm already has support for mmu notifiers and uses it for other
stuff. I can't remember what exactly this code path was for, IIRC
Paolo talked about having a big rework/fix for it when we last talked
about the missing write protect. I also vauagely recall he had some
explanation why this might be safe.

> I think the iommu fault drivers have a similar pattern.

Where? It shouldn't

The common code for SVA just calls handle_mm_fault() and restarts the
PRI. Since the page table is physically shared there is no issue with
a stale copy.

> What am I missing here? Or is that also just broken. gup works around
> this with the slow path that takes the mmap sem and walking the vma
> tree, follow_pte/fixup_user_fautl users dont.

follow_pte() is just fundamentally broken, things must not use it.

> Maybe mmu notifier based restarting would help with this too, if
> done properly.

That is called hmm_range_fault()

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
