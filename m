Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /b9IJ1fPK2rhFQQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 11:20:23 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 23885678331
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 11:20:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=hV4AWv9R;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2C46D40A4C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 09:20:22 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	by lists.linaro.org (Postfix) with ESMTPS id 91525409A4
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 09:20:10 +0000 (UTC)
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2c0b1a48855so85425ad.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 02:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1781256010; x=1781860810; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zvPmlCR2+M8z2It1PyWjRPyBRhJXBH/RxmRhWYVyMeM=;
        b=hV4AWv9Rw2XwK2Ja+EpCR1Gm9DS0Lh61vIBQ9VFBsTaqQxjKkCgggt4A1bgjZ4Uqx9
         e0pjO3Snlpb66FvrxMHA0g5MA3fJUtTMJHyaoK7ioihDSRwT4HFQhcxnOAKz7k0OW534
         O32EIIrB5dZUWob7AZnGiEEeNLHbBzsMlTastFSX1lxswkz/hZ2+THYgR+sfbYPjjXqm
         7HWueQ7T/DlFGdnu7/HBC7NZbGNvxnQfpNhvdIDQ9kt2qd36FF+maLJqLN8I+89jR4WI
         MTZGmnI5Mr8/AQ8KljW4RNrSQ9KULKl2XZUJi8YfEgWq5LRuvHervt4tBJSl8EnlM7de
         j3sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781256010; x=1781860810;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zvPmlCR2+M8z2It1PyWjRPyBRhJXBH/RxmRhWYVyMeM=;
        b=j9fBD6NB1FJVCKg+CFIZvZlz3sYoFwWrtb5vkE2FX7JYlH5RumCW8gXY5dOQGHFSRg
         RBRjNpvJlewa6/nI14B7l1auS3aFf37CXzomhvMaY1RYh7rnc2RGDPebY/vENv4MYtXO
         8KK80vZ5Vx10b4Z9K8LPGNNQ98Q2mDAU/9MB2lylniXgBR31HzCk3Tca23pREox8XAhO
         WeqzheFX0S22tNaMFmzLQxkTrFzZaKCYBq/5JuDia6nJxga3VUhw5VsbMiGo+//zVuE6
         rqW5y6tjH+zuMfjO2iEqtV7kuPBXYFAbYqbUM2QaXjGJnEB00gpltIhQp6wNY/dg0gz6
         Z55w==
X-Forwarded-Encrypted: i=1; AFNElJ+f2jJeRrMYB5k+kL1Pot/rjcSkfja6O3Br7v5gd+WmHZiqC0r69ZAen1M8UxwmE1o4tiyj8EkkzXVwJrmT@lists.linaro.org
X-Gm-Message-State: AOJu0YwWNTpvAjd38fo1FrctYfSDYWYK2grGhzGLMjU1WlJpG3sSv/Mt
	nRBYafUvaCEkcaqRIiL4dj+l1XAaUpSEBvt8cJxwBB5FxrjDBWwTM8QsUzQUfVBtgQ==
X-Gm-Gg: Acq92OEv/T+3KpzZLu1MI3v/Zi9moziNXJc0+PRvBP8mDX2vIVpB/Zz/2yV3a40dmLQ
	+7gnfVzHFQm4rtc08Gk1vKIHEambL44/08iXoGdQTJopVe7OrIEpai+qt1bYRPmMM0D9qCNey3R
	DBVpMqupznYH0HHyzFITZms/kX9FGxROnb9c8XtodVLVdKvIKRuatbEZ0lQfm8iGrVi2lA0XDqn
	B0DiBgZ647C33432e/rR9cJBcofuV7obiqRBQP8ivf9XGDmdY6cXRqxErVbdGMzuU9zP/kcvfgl
	wlQL69+tq4l/N3qd73uLdUxqdiCiWRCLNBi9ybdFvHPCFuw+PS2pRJRUqlR1RcfMakSWcINLswt
	mZT2wprSz9ijdQRaNze3F/nJIEio/5CqLj5RTUmZnN6SxYz39uC1HeSrOtUM+KwJ4sBXP9tFCtr
	F+R3HJxa8GrzpjXpkAgmNTluqDAZb9bqSZfXMz4Ow2OiQxnu525fPYHwxqsEbljKzDm9uO8YE=
X-Received: by 2002:a17:902:e811:b0:2bf:139c:dcf3 with SMTP id d9443c01a7336-2c405c8817fmr1345405ad.19.1781256009183;
        Fri, 12 Jun 2026 02:20:09 -0700 (PDT)
Received: from google.com (199.255.142.34.bc.googleusercontent.com. [34.142.255.199])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8434afd17f5sm1476657b3a.39.2026.06.12.02.20.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 02:20:08 -0700 (PDT)
Date: Fri, 12 Jun 2026 09:20:01 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Matt Evans <matt@ozlabs.org>
Message-ID: <aivPQcSlolwptnB6@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-4-matt@ozlabs.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610154327.37758-4-matt@ozlabs.org>
X-Spamd-Bar: ----
Message-ID-Hash: QQSC3CVBMWPEQ7MCRJLM4P77O6T7Y336
X-Message-ID-Hash: QQSC3CVBMWPEQ7MCRJLM4P77O6T7Y336
X-MailFrom: praan@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 3/9] vfio/pci: Add a helper to create a DMABUF for a BAR-map VMA
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QQSC3CVBMWPEQ7MCRJLM4P77O6T7Y336/>
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
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:matt@ozlabs.org,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ozlabs.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 23885678331

On Wed, Jun 10, 2026 at 04:43:17PM +0100, Matt Evans wrote:
> This helper, vfio_pci_core_mmap_prep_dmabuf(), creates a single-range
> DMABUF for the purpose of mapping a PCI BAR.  This is used in a future
> commit by VFIO's ordinary mmap() path.
> 
> This function transfers ownership of the VFIO device fd to the
> DMABUF, which fput()s when it's released.
> 
> Refactor the existing vfio_pci_core_feature_dma_buf() to split out
> export code common to the two paths, VFIO_DEVICE_FEATURE_DMA_BUF and
> this new VFIO_BAR mmap().
> 
> Signed-off-by: Matt Evans <matt@ozlabs.org>
> ---
>  drivers/vfio/pci/vfio_pci_dmabuf.c | 142 +++++++++++++++++++++++------
>  drivers/vfio/pci/vfio_pci_priv.h   |   5 +
>  2 files changed, 117 insertions(+), 30 deletions(-)
>

[...]

> +
> +	/*
> +	 * Ownership of the DMABUF file transfers to the VMA so that
> +	 * other users can locate the DMABUF via a VA.  Ownership of
> +	 * the original VFIO device file being mmap()ed transfers to
> +	 * priv, and is put when the DMABUF is released.  This
> +	 * intentionally does not use get_file()/vma_set_file()
> +	 * because the references are already held, and ownership
> +	 * moves.
> +	 */
> +	priv->vfile = vma->vm_file;
> +	vma->vm_file = priv->dmabuf->file;
> +	vma->vm_private_data = priv;

I appreciate this comment. Thanks for being clear!

Reviewed-by: Pranjal Shrivastava <praan@google.com>

Thanks,
Praan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
