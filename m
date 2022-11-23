Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5236362E3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 16:09:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69A8D3ED34
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 15:09:10 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by lists.linaro.org (Postfix) with ESMTPS id 28FF53ED34
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 15:09:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=UZ90yvpY;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.48 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f48.google.com with SMTP id h10so12291625qvq.7
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 07:09:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yl5EWh2LPGXKg4ZX+0uMGR+SP4+5g4wansDQ2racGIw=;
        b=UZ90yvpYHpAD2wJFcceeqxHp5n/1J/IMdboyjPLp9xSvgX7lhd9bIH3J7mYPJrCrgH
         tIUHI5mfCyqHqL/FPnEKA2O3D4UL7ejl7s4SZWtCiLkQMQ0C9Vp59OLuPUd9l9rtsP/H
         5KMfSJskvLx0jvavXd2BcujWMJkK2mF1Y/bBE2Auf5ZuOkr+OEzP+TYvNGzpLDMh1E/b
         /tk+XGOAsg1BHi8GoUKfhHIo0iTmbkce9zo9I7xuGjeffWnbCQMDz+hFZmGT49zCWuvX
         8So0XmT6Euoi53OroYVLDNKa4yZxbJs5xlXojPLsNHKLC7aadu52zmFmfAidIVRVxdfh
         /nVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yl5EWh2LPGXKg4ZX+0uMGR+SP4+5g4wansDQ2racGIw=;
        b=dIfheMyxuo7i26PmI92fChETayojHSccZOGMr6vGHBxze582Lv/Upw3m7GMK3cpWgQ
         69qMbEGGJYb9GCN568Oi7GlhQT1sTsex/aXchOovbVWKxzdQNIR6sHijzJaphfCrk4QC
         HHpk0P7ZBAL71VDsmMI6l1PnVwAF/hghXUFCPXP5Ti11iJGONx930m24CWJ3kulcpMPz
         oN34YG5fEIo/2pvCtQU38JYUswm6QIiSRsO0eIVBZjYAc6eKQPHivPa0d0CWkYZ8hH5Y
         M6IcqjQf1JxgH66yR6BC6YIM8+Ze2S1Fy095U5Ijaku/tZFzYIul1d8Q6wlkI5pjHSeu
         Ktgw==
X-Gm-Message-State: ANoB5plEVNghT2WoZjnN693T+FxustaCJxodgrGg6TJpA/uMYTYnYtf3
	WSdVA2p43WoRufm3ch4zmi8CAw==
X-Google-Smtp-Source: AA0mqf7e8Ogh/ZJOSZP+2cSLpyEbwDySY9r7p8UtFKlyBZNWj/XPJyjVbU2TWKfbCouXJyhbUXJI9w==
X-Received: by 2002:a0c:b405:0:b0:4bb:666c:384d with SMTP id u5-20020a0cb405000000b004bb666c384dmr27071486qve.91.1669216140695;
        Wed, 23 Nov 2022 07:09:00 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-122-23.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.122.23])
        by smtp.gmail.com with ESMTPSA id ca9-20020a05622a1f0900b00398a7c860c2sm10023130qtb.4.2022.11.23.07.08.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 07:08:59 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1oxrMw-00AMdR-Vh;
	Wed, 23 Nov 2022 11:08:58 -0400
Date: Wed, 23 Nov 2022 11:08:58 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <Y343ijGoqyf73d+I@ziepe.ca>
References: <3d8607b4-973d-945d-c184-260157ade7c3@amd.com>
 <CAKMK7uHVGgGHTiXYOfseXXda2Ug992nYvhPsL+4z18ssqeHXHQ@mail.gmail.com>
 <b05e6091-4e07-1e32-773d-f603ac9ac98b@gmail.com>
 <CAKMK7uFjmzewqv3r4hL9hvLADwV536n2n6xbAWaUvmAcStr5KQ@mail.gmail.com>
 <Y34WI9SZdiH/p1tA@ziepe.ca>
 <f8f844a5-0910-d19a-5aea-df7a1d83b1d3@gmail.com>
 <Y34XvmtHfb4ZwopN@ziepe.ca>
 <dc2a9d7f-192b-e9d8-b1d1-3b868cb1fd44@gmail.com>
 <Y34gBUl0m+j1JdFk@ziepe.ca>
 <CAKMK7uEzaUjroODbWe4DtxHQ+gmr7_DVK+fUJjAgMsgP61uGSQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uEzaUjroODbWe4DtxHQ+gmr7_DVK+fUJjAgMsgP61uGSQ@mail.gmail.com>
X-Rspamd-Queue-Id: 28FF53ED34
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_NA(0.00)[ziepe.ca];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:dkim];
	RCPT_COUNT_TWELVE(0.00)[13];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.48:from];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,amd.com,lists.freedesktop.org,suse.de,google.com,infradead.org,linaro.org,intel.com,vger.kernel.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:+];
	URIBL_BLOCKED(0.00)[ziepe.ca:dkim];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: AI5HDTENN32O5V7KKWY2HRDY4XRFASB2
X-Message-ID-Hash: AI5HDTENN32O5V7KKWY2HRDY4XRFASB2
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, DRI Development <dri-devel@lists.freedesktop.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Thomas Zimmermann <tzimmermann@suse.de>, Suren Baghdasaryan <surenb@google.com>, Matthew Wilcox <willy@infradead.org>, John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AI5HDTENN32O5V7KKWY2HRDY4XRFASB2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Nov 23, 2022 at 03:34:54PM +0100, Daniel Vetter wrote:
> > diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
> > index 1376a47fedeedb..4161241fc3228c 100644
> > --- a/virt/kvm/kvm_main.c
> > +++ b/virt/kvm/kvm_main.c
> > @@ -2598,6 +2598,19 @@ static int hva_to_pfn_remapped(struct vm_area_struct *vma,
> >                         return r;
> >         }
> >
> > +       /*
> > +        * Special PTEs are never convertible into a struct page, even if the
> > +        * driver that owns them might have put a PFN with a struct page into
> > +        * the PFNMAP. If the arch doesn't support special then we cannot
> > +        * safely process these pages.
> > +        */
> > +#ifdef CONFIG_ARCH_HAS_PTE_SPECIAL
> > +       if (pte_special(*ptep))
> > +               return -EINVAL;
> 
> On second thought this wont work, because it completely defeats the
> point of why this code here exists. remap_pfn_range() (which is what
> the various dma_mmap functions and the ioremap functions are built on
> top of too) sets VM_PFNMAP too, so this check would even catch the
> static mappings.

The problem with the way this code is designed is how it allows
returning the pfn without taking any reference based on things like
!pfn_valid or page_reserved. This allows it to then conditionally put
back the reference based on the same reasoning. It is impossible to
thread pte special into that since it is a PTE flag, not a property of
the PFN.

I don't entirely understand why it needs the page reference at all,
even if it is available - so I can't guess why it is OK to ignore the
page reference in other cases, or why it is OK to be racy..

Eg hmm_range_fault() does not obtain page references and implements a
very similar algorithm to kvm.

> Plus these static mappings aren't all that static either, e.g. pci
> access also can revoke bar mappings nowadays.

And there are already mmu notifiers to handle that, AFAIK.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
