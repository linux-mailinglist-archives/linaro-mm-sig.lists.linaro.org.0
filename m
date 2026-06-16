Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mp2mNXKfMWoTogUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 21:09:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F36694CD3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 21:09:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=NNiQ2iav;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 46E4F401BA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 19:09:37 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	by lists.linaro.org (Postfix) with ESMTPS id 8E45C401BA
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 19:09:26 +0000 (UTC)
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2c6a4eccab1so9675ad.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 12:09:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1781636966; x=1782241766; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=k6SDrg2Xo/OAI2rZzS8e85po51TqWl/TutJV9Vm/kvs=;
        b=NNiQ2iavNIfXhiF/9ufOiLaXcGnnOa+Qqe5jBUdnDqz1Pb/Nxoitz/8l8oTEANKrKO
         ldFFa9nZpSMyp/Nxb4fHFB0yQPuUeWRWaIpl1cf+Wz37fh+FDvDkq9tqMzMb1qv6N8hI
         ghAl8grEccwQRd3UYOF/YfXhxKtQpoPG4+8UNvtqBEUqUwflNYX5LO7SuRa7lvEFFe4a
         8ewxlZOeLC+xozyME9go+Kl0UJiZtFhdvFUTm0v/YOIMqbVs5p7HL8n2FSmwsUWfF8Z+
         ESYLLWWwWpRHb2YK2RpCl0wwsGLvH7KUPjNs64PmUIoaCPIpHzIqhKH9xHlW1qGvTY1m
         AawA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781636966; x=1782241766;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k6SDrg2Xo/OAI2rZzS8e85po51TqWl/TutJV9Vm/kvs=;
        b=oxs6OuIXrMkSY8/XJr57U/eA73KFsCJ35S2XwxA+VXcmdzTL1ecw9fF0sTFx2QlP/J
         OjkqeTLoQkNfs4rcNy7tvRH4iK3AkLRsvonR5Da0iEHULpGjWR0gbJh7gUG3ApyiUsXL
         jcIrsEulgFSUOVPxOQlAlxpR6Q4PbvkduTngKtzGoe9uvgAX7SHhWgbyf6xXYKRGZidj
         IVTr58jt+i9GIlItwaOiirP/GzCMFiLr2wQWM6GWCeCk5fdttS8Lu2DCH8KEpeRd2Tu+
         ZIbK6LEa51e7IRwtF4OUYsRlieEt613y8q+zsQAc/N+6bELUJlhOpNPXrDFtcxOH+NRl
         5aLA==
X-Forwarded-Encrypted: i=1; AFNElJ/09/DW0NPV/9U3ganw0kFaZanF/ZyvC0f95K0Jm7GOjg1nstkoZv1CBdLds5ftzJLW4pwbGHgKpVYfIvWS@lists.linaro.org
X-Gm-Message-State: AOJu0Yxufyd6JQ3BXE55oYzCVtIj7rz9ZAnw4f8X2ylWhGErDPnLqfC3
	eMZpzVBW+0YTCKXvsLmW362PyclqM8SoCPWlizsn77TVjCXR1tCA2sOW544GZddMXw==
X-Gm-Gg: AfdE7clRUq8l8tc2sew5FBhIRYxYry1hyGtD8EFxJWAfbvycBmPyQ2+HzBAcdRGVeKE
	WB2q18Hd59ezkPlfVKNum+pPBo3L/iDRpqTHsYaqANMlOgjfSKZTrg6uKszNucR1IOo92mKdWZw
	6riUqsYw+iARtWKbREShR/ZPSfnAlnXZALYQpIx/GtGdZk5lEWrGXzJrxy3KWPF80yTH8smuhjQ
	RnhVxpnjxNhh0aTOuUO2BgDhZf4uJDZzT9AZeb1oz4EKEKGOBoS7tN93suOxP+YRAWVKAkuQec0
	/C7394gFf/Rv6U/UAxdL5gRY5x5pmMjZAzKjaEr7avD+daNNHA0FNPbal8SCcRbKpgJt+EmzD/O
	8a1gtINwsB2ysZ3WoYo7GWZsAf06pvw3Gnk/iemLbzzJoOIvWny9qfxMOcJ2migZPpj4yDFmcU5
	9C3B5EMyGUMlp1l/NJUDfhCXGAXmP6WLvMxW90x3FYZ/Ho6NpdrHr5wOUiquTI
X-Received: by 2002:a17:903:19c5:b0:2c1:ee6e:4e4b with SMTP id d9443c01a7336-2c6bbb02f17mr305125ad.28.1781636965196;
        Tue, 16 Jun 2026 12:09:25 -0700 (PDT)
Received: from google.com (199.255.142.34.bc.googleusercontent.com. [34.142.255.199])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c42f7c5535sm141034955ad.18.2026.06.16.12.09.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 12:09:24 -0700 (PDT)
Date: Tue, 16 Jun 2026 19:09:16 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Matt Evans <matt@ozlabs.org>
Message-ID: <ajGfXNavEPOuU_4L@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-10-matt@ozlabs.org>
 <ajENiAQkzXjbxgRX@google.com>
 <c4a6e367-2f22-4cbf-afcb-674f82fdacd2@ozlabs.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c4a6e367-2f22-4cbf-afcb-674f82fdacd2@ozlabs.org>
X-Spamd-Bar: ---
Message-ID-Hash: GUIVLY2QZNR3PLCBDS5XXZFMTQNKJ25N
X-Message-ID-Hash: GUIVLY2QZNR3PLCBDS5XXZFMTQNKJ25N
X-MailFrom: praan@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 9/9] vfio/pci: Add mmap() attributes to DMABUF feature
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GUIVLY2QZNR3PLCBDS5XXZFMTQNKJ25N/>
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
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:matt@ozlabs.org,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 67F36694CD3

On Tue, Jun 16, 2026 at 12:37:29PM +0100, Matt Evans wrote:
> Hi Praan,
> 
> On 16/06/2026 09:47, Pranjal Shrivastava wrote:
> > On Wed, Jun 10, 2026 at 04:43:23PM +0100, Matt Evans wrote:
> >> A new VFIO feature, VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR, is added to
> >> set CPU-facing memory type attributes for a DMABUF exported from
> >> vfio-pci.  These are used for subsequent mmap()s of the buffer.
> >>
> >> There are two attributes supported:
> >>  - The default, VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_NC
> >>  - VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_WC, which results in WC
> >>    PTEs for the DMABUF's BAR region.
> >>
> >> Signed-off-by: Matt Evans <matt@ozlabs.org>
> >> ---
> >>  drivers/vfio/pci/vfio_pci_core.c   |  2 ++
> >>  drivers/vfio/pci/vfio_pci_dmabuf.c | 57 +++++++++++++++++++++++++++++-
> >>  drivers/vfio/pci/vfio_pci_priv.h   | 14 ++++++++
> >>  include/uapi/linux/vfio.h          | 27 ++++++++++++++
> >>  4 files changed, 99 insertions(+), 1 deletion(-)
> >>
> > 

[...]

> >> +
> >> +	/* Verify DMABUF: see comments in vfio_pci_dma_buf_revoke() */
> >> +	priv = dmabuf->priv;
> >> +	if (dmabuf->ops != &vfio_pci_dmabuf_ops ||
> >> +	    READ_ONCE(priv->vdev) != vdev) {
> >> +		ret = -ENODEV;
> >> +		goto out_put_buf;
> >> +	}
> >> +
> >> +	switch (db_attr.memattr) {
> >> +	case VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_NC:
> >> +	case VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_WC:
> >> +		WRITE_ONCE(priv->memattr, db_attr.memattr);
> >> +		ret = 0;
> >> +		break;
> >> +
> >> +	default:
> >> +		ret = -ENOENT;
> > 
> > Nit: Looks like the agreement [1] was on -EOPNOTSUPP / -EINVAL but we 
> > took -ENOENT here and in the doc string? Was that intentional?
> > 
> > I tend to agree with Alex's suggestion here, we'd prefer one of those 
> > two (-EINVAL / -EOPNOTSUPP) since it clearly communicates to the user
> > that "You sent a wrong arg" or "We don't support this"
> > 
> 
> Yes, it was intentional.  This was noted in the v3 changelog entry in
> the cover letter:
> 
>  - Removed GET on vfio_pci_core_feature_dma_buf_memattr(), removed
>    unnecessary taking of memory_lock, fixed error return values.  In
>    particular, removes ENOTSUPP, and uses ENOENT to indicate an
>    unknown attribute enum value was passed to SET.  In the discussion
>    here,
>    https://lore.kernel.org/all/20260602131417.41366391@shazbot.org/
>    we'd agreed on EOPNOTSUPP before I realised that's already used
>    elsewhere.  ENOENT uniquely indicates an unknown attribute.
> 

Ahh okay. I missed the changelogs in the cover letter.

> EINVAL/EOPNOTSUPP would indeed be semantically perfect, but after
> posting my reply there I remembered they are already overloaded with a
> load of different meanings.
> 
> I think uniqueness is important here so that memattr issues (for example
> any future arch-specific porting issues) show up as an
> immediately-understandable error value.
> 
> > -ENOENT means no such file or directory [2] to the user. Users may not
> > be kernel engineers who'd wanna peek into the code and they may simply
> > look at the uAPI files which doesn't give them an answer as to what
> > went wrong.
> 
> But surely when they look at the uAPI header they will then see
> "*  ENOENT: The given memattr is not supported." and understand what
> went wrong.

Fair enough. Since its documented it clearly in the uAPI header.

Thanks,
Praan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
