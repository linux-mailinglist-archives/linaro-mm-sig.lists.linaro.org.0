Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFy3Kx/Wd2mFlwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Jan 2026 22:01:19 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5A98D6B7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Jan 2026 22:01:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8DE38401DA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Jan 2026 21:01:17 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by lists.linaro.org (Postfix) with ESMTPS id 2232D3F6BD
	for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jan 2026 21:01:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=UZ2F+vCn;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.48 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-88888d80590so85282986d6.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jan 2026 13:01:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1769461271; x=1770066071; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Tu3uAyHuSXXXZq6VSWtVG72sHh/RWKg7/MHSYDvcONg=;
        b=UZ2F+vCntCl8oyTpCy6Vjav6aHEBxqxVH8k6QNGm0uusS3ZfwYXhdfzCKgnoaP3moP
         8U7788RnCfmOOk95uvuNTz0x6XieGgiwD+zY2MlUwL+gB85mKNWUG7NN1YF/qZarnLBz
         oct3gGljdCDDp2pFtyKC6PNGO88E/E+1NeVTNPm+LLY3jFlCpVhGOjFh/CQVnl7N9FjN
         MK0sGUjkeMkXzX4vNiSc8uAlzpFXjPAgZeQnEi1ju0Yy1+VPAkN9PZfU8cq/4SHY3Pz4
         HhLC4xRlixsBTzuopUryH8ZaE4g/8wYr2jySiWOhGmmxK5WWJ7Sm8yJ/YiQErp8geLQg
         Ym2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769461271; x=1770066071;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tu3uAyHuSXXXZq6VSWtVG72sHh/RWKg7/MHSYDvcONg=;
        b=Hve9AhA3JBKpEXzjzkBfJjIDANOfHGXAdWwxijm9gHDsFw5u1Asro8o+j58K+XHIsd
         5Is/gYZbwP5q8A0aTXwGAslD3jD2T6/cjaF6ba5sf5TBlvehm/tWA90+BjMpqq0mxlYt
         /bBwEwZvauqAAEjsFOKHIOuNdSd0iXcVIYw6g2AKrsW7UKCZcTrFBAuFFRUCBah+bQcn
         CuPALG4p7cWSCoKDtHXwWg7c395lgrTboqXKQz9XNl9QVtcJaGSPjPvFStgbTsL3D4C8
         S0tJwSucb3P6CUp8JpFtOLFDOjmUJIwoYJdDv6AfA87xC45qsH7mxQScZgY7qkR0GYCZ
         sbgg==
X-Forwarded-Encrypted: i=1; AJvYcCUmiHO4Is+vAkaiNp49HRnPhhuiV6D0VkFuZ85wDnXZgfxBmxphUPMGmLfXnR9ebd8ZSqxTkdytiDvXVF9B@lists.linaro.org
X-Gm-Message-State: AOJu0YwLYiIR3sYkSJdpLlUM2i/Ab2iWF2KwFsdGM9pk0Gt7K68QtrDE
	bb78YYQOnETFvVDgZacelOfbkjks/Y3S0p8FFALWpVPoccYWjWArvKnkY8wl9cFi4AM=
X-Gm-Gg: AZuq6aK10bmIhhbGIWRg1N6ZtboL4Ptpg0zVQgfmcdl2Zl3EaAej4UPMoMjD0p9wie3
	T3uR8TLaAafLZE7i3enI4Di1ugFG7rNyyWxzn/V2SHizOcl5/noB/Zg3H0acgVARXuru+hDnEA7
	VRjQ2Lwa/ek9PlWTRV09BixKKwdvkDC0mSbrskIWUdfFSnzIDAMaeX8arFBok/35K0Yw+sYdGzF
	WykN1mlk13I7cjnmgJrgQdyi3xkYp4spD3OkCNjSU02ciHoXjtbK3hLVBdeVpJeQdG51tvDDvm3
	0PwRe/OWyuJOdNLayqjuc+JRazp5Cti5XFlcfxB87+g8c3zW4BJW8Rv5EIOXmwx0sEwN7Z6+nEH
	ykmcRzQzAI2aMPdigd16mUc34wIF9P6jGW3vhJ/w4UXvSV9RLyQPzi6h0JS6lWl0MVFiyulI7U0
	Q0O/XMMFQHgZbqLrk7TxUOTHtrRdBb0MIFyvLtwCu5PZuAUuHkRTDIxvmuHOmwymenaqc=
X-Received: by 2002:a05:6214:1cc9:b0:894:7b34:dacd with SMTP id 6a1803df08f44-894b06f336dmr73487126d6.31.1769461270245;
        Mon, 26 Jan 2026 13:01:10 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-894918b1436sm104983856d6.35.2026.01.26.13.01.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 13:01:09 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vkThs-00000008z30-31vX;
	Mon, 26 Jan 2026 17:01:08 -0400
Date: Mon, 26 Jan 2026 17:01:08 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Pranjal Shrivastava <praan@google.com>
Message-ID: <20260126210108.GD1641016@ziepe.ca>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
 <20260124-dmabuf-revoke-v5-6-f98fca917e96@nvidia.com>
 <aXfQ1LFNDUrfeuHf@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aXfQ1LFNDUrfeuHf@google.com>
X-Spamd-Bar: ---
Message-ID-Hash: QTRLHHR352FSYO5IOTO6GPM5XHVDKPYR
X-Message-ID-Hash: QTRLHHR352FSYO5IOTO6GPM5XHVDKPYR
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.f
 reedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 6/8] dma-buf: Add dma_buf_attach_revocable()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QTRLHHR352FSYO5IOTO6GPM5XHVDKPYR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.f,lists.linaro.org,lists.freedesktop.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.892];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 1D5A98D6B7
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 08:38:44PM +0000, Pranjal Shrivastava wrote:
> I noticed that Patch 5 removes the invalidate_mappings stub from 
> umem_dmabuf.c, effectively making the callback NULL for an RDMA 
> importer. Consequently, dma_buf_attach_revocable() (introduced here)
> will return false for these importers.

Yes, that is the intention.

> Since the cover letter mentions that VFIO will use
> dma_buf_attach_revocable() to prevent unbounded waits, this appears to
> effectively block paths like the VFIO-export -> RDMA-import path..

It remains usable with the ODP path and people are using that right
now.

> Given that RDMA is a significant consumer of dma-bufs, are there plans
> to implement proper revocation support in the IB/RDMA core (umem_dmabuf)? 

This depends on each HW, they need a way to implement the revoke
semantic. I can't guess what is possible, but I would hope that most
HW could at least do a revoke on a real MR.

Eg a MR rereg operation to a kernel owned empty PD is an effective
"revoke", and MR rereg is at least defined by standards so HW should
implement it.
 
> It would be good to know if there's a plan for bringing such importers
> into compliance with the new revocation semantics so they can interop
> with VFIO OR are we completely ruling out users like RDMA / IB importing
> any DMABUFs exported by VFIO?

It will be driver dependent, there is no one shot update here.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
