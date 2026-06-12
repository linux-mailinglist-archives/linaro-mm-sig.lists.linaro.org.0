Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Rev/FxkjLGo8MAQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 17:17:45 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D245C67A787
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 17:17:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=hKAJzunt;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DD61540A75
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 15:17:43 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	by lists.linaro.org (Postfix) with ESMTPS id 827C63F97D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 15:17:31 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2bf2911f93cso89405ad.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 08:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1781277450; x=1781882250; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TlOQuFqEcpnxb6HFkKMVShmOdVTUgHEmVlFieGLUVKw=;
        b=hKAJzunteRUbCNyKPgOVSK7PH4raWPi2SoVe5xJoHw90avLAJu5HvPIdoRFUZbe4X+
         1NVRo4Rjmx6ZCupz26BFp1QTIDfAeLVZO+vceguPHfD0BhSaq7YADMvi/2aR76FRYhev
         0V7G88Gz342H4NEMYfS0jeGoG2HkwobV/SfRtt0IAd9UYVSMjwcBCVv2LT7L5wGNs53W
         a4kW05CjbKyZinjEYRz0T1nxUfjA1FmNqRqNzfTy19Wam+lfyt2OHSaX1QjyZ06BjfSs
         ljgy6dxlvYyJQfcYAe5/iSYd9tPU94s3/o30g4kdPd5ewfIwMOTpOw2V7rRwfXXgPjPI
         ZN2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781277450; x=1781882250;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TlOQuFqEcpnxb6HFkKMVShmOdVTUgHEmVlFieGLUVKw=;
        b=KZfmYStwzjQioF7054yIHm2qLWwfaQfx7VfCd8dMD42OkgRApoC9NkOE1k+NiBplZS
         A2eUaNWqxRAbGYDX+URS2tamKTJjUk8nasRaexQmrpfgzXLJzL871Cf3Ptag/71d19Sd
         NGZcbdF8v/d5DyEpXoWhsViqH8lI64EP5ho18rbZCs7Iakf3gAcQBolhgxfo7UfCwr3M
         PlEGoC9NK4frbcQgBNsFwXpZUYmTpvlhZp0ynd9NDULbStdd22BFm0jdQMf9fRqUrv4t
         46E9CKgjJvodFawgVEfowkh1jmHMX7zatHwkfOKyCiJT6K/CtA2q2mdSQzkFdVxyrSPp
         jIEg==
X-Forwarded-Encrypted: i=1; AFNElJ/IOUGuxuJiSyWthL96A28HSZnf3+gDy/tRKlqDnOjLuV1J8NOrsJeFccxnsZlA5PerlVMrhD8Ys5QIVKiG@lists.linaro.org
X-Gm-Message-State: AOJu0Yx9iXOCwt1hUnlqhEILFQO+IISssWYTl0wy/okRHnR60cm1d1pW
	M9Z0L1vELdzGFuDiys7XAVcLG7wClgKx01Ln0804Ua6PTV0ZFTQbhefpEXtEBBWQIg==
X-Gm-Gg: Acq92OH2ql1mI77w0gK/p8wxwm+rd8UkIdyoGMeg5tny8NhP/JY6qlYQGHBLDOxbmM6
	yjxlF/YzNUfv597U8YlMRRmQLUmJTnJPyjxxX70DX6LGWhVkOzkP2O2l2PKcBKGrdsPxD8MFzCq
	KZn9Fc8Hu/luVHJzqruq37HyD1BsZpAQIS50natij0VsEoeQER5vQowNP3hrY6Nud0mUIGiE1b7
	B2VCP49oM3Kmf5KLezKJlb9wdFIw8cN9Y6h0z4hmXG6j+V5XzLpoh+CqFDQ3MCX6jakqbly/ncj
	yaT/z7byeIwZ/GVDZCgmz+44WJoKcnD1IXWExQJJkzTmz7GqBMZdTOTohDNtePapevoHKMiXrU4
	flHX/Ubq3XDwL/t87KrB1YlEBuogBkbgzhXGvl7K91I6/4Acn+DvlKjTOTVi6+SG79an35v7zGz
	XWP5x/QDM0/WPlJZ123DRwuO+e2wrXwzVzz8Q7giSX2lBlEUl5eNkg3vP8vhisI2CZEFHjZkc=
X-Received: by 2002:a17:902:e805:b0:2b2:70ba:305c with SMTP id d9443c01a7336-2c3e1160718mr2635095ad.8.1781277450033;
        Fri, 12 Jun 2026 08:17:30 -0700 (PDT)
Received: from google.com (199.255.142.34.bc.googleusercontent.com. [34.142.255.199])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c4328a4c14sm22623545ad.43.2026.06.12.08.17.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 08:17:29 -0700 (PDT)
Date: Fri, 12 Jun 2026 15:17:21 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Matt Evans <matt@ozlabs.org>
Message-ID: <aiwjAbFVhPkkj-6U@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <DM6PR11MB3690A65EA9D8A9B77AF93E198C182@DM6PR11MB3690.namprd11.prod.outlook.com>
 <9812ae0f-8f22-4d62-a706-4c7232a5656b@ozlabs.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9812ae0f-8f22-4d62-a706-4c7232a5656b@ozlabs.org>
X-Spamd-Bar: ---
Message-ID-Hash: VTAM57PCY3FHWQSNVU3M5G4II7V43S4F
X-Message-ID-Hash: VTAM57PCY3FHWQSNVU3M5G4II7V43S4F
X-MailFrom: praan@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: "Tian, Kevin" <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 0/9] vfio/pci: Add mmap() for DMABUFs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VTAM57PCY3FHWQSNVU3M5G4II7V43S4F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:matt@ozlabs.org,m:kevin.tian@intel.com,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ozlabs.org:email];
	FROM_NEQ_ENVFROM(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ARC_NA(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D245C67A787

On Fri, Jun 12, 2026 at 04:11:50PM +0100, Matt Evans wrote:
> Hi Kevin,
> 
> On 12/06/2026 09:27, Tian, Kevin wrote:
> >> From: Matt Evans <matt@ozlabs.org>
> >> Sent: Wednesday, June 10, 2026 11:43 PM
> >>
> > [...]
> >>
> >>  vfio/pci: Support mmap() of a VFIO DMABUF
> >>
> >>    Adds mmap() for a DMABUF fd exported from vfio-pci.
> >>
> >>    It was a goal to keep the VFIO device fd lifetime behaviour
> >>    unchanged with respect to the DMABUFs.  An application can close
> >>    all device fds, and this will revoke/clean up all DMABUFs; no
> >>    mappings or other access can be performed now.  When enabling
> >>    mmap() of the DMABUFs, this means access through the VMA is also
> >>    revoked.  This complicates the fault handler because whilst the
> >>    DMABUF exists, it has no guarantee that the corresponding VFIO
> >>    device is still alive.  Adds synchronisation ensuring the vdev is
> >>    available before vdev->memory_lock is touched; this holds the
> >>    device registration so that even if the buffer has been cleaned up,
> >>    vdev hasn't been freed and so the lock can be safely taken.
> >>
> >>    This commit makes VFIO_PCI_CORE depend on PCI_P2PDMA_CORE
> >> (commit
> >>    1) to bring in (only) the P2PDMA provider code.
> > 
> > the last sentence is stale as the dependency is now added in patch4.
> 
> Right, will fix.
> 
> >>
> >> End
> >> ===
> >>
> >> This is based on VFIO next (e.g. at b9285405c5f6).
> >>
> > 
> > Sashiko failed to apply this series. Is there dependent work in vfio-next?
> > 
> > otherwise getting a Sashiko review is helpful here.
> 
> It _did_ depend on (at least the context of) some fixes in vfio-next.
> Looks like it'll rebase on master now those are merged.  I should've
> re-checked this for v3, oops. :|
> 
> (FWIW, I had Robot Claude Opus 4.8 to review several times up to v3.
> But I agree, Sashiko would be interesting too.  Can it be manually
> triggered with branch guidance?)

I guess relevant steps to run locally are here:
https://github.com/sashiko-dev/sashiko/blob/main/README.md

Additionally, we can try providing a base-commit (which points to a
public commit). 

Thanks,
Praan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
