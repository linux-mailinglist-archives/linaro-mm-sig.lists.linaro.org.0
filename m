Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id q08AOJ0NMWqOawUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 10:47:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FE968D492
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 10:47:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=aNzd85mG;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6C82A40A54
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 08:47:24 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	by lists.linaro.org (Postfix) with ESMTPS id 40EF840A37
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 08:47:14 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2c6a4eccab1so6115ad.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 01:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1781599633; x=1782204433; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aaTfOOhj7DmWaDCSdXoWZe8eYeEqWjLH4eK4JZJxdgM=;
        b=aNzd85mGrV25FXCw9sgcQ+1UyVWLrz8jyQt4RgZycMX82EBf0yAUjoy3vthw8RU4nY
         FTJ4vULgyzl9HcOHnGV1IxzinZ4YgtS/qY1048aF69yvMVtb9ilGCSCYRCD4HTLX1WZO
         Qy9wloGwwZI6vA2wlUs0GXAn9Cvl8jAHtemboLEH6Uxy8paElcY63CX3RTId53SM5o3X
         XugI5EV//M/wgyyvhDd/q1GOqgh2mHEWYN8dhnKCxTshCX42SCMchBWf67/A7IpaO6iS
         d/K+im3xwbjiJhayxvmO1B8faDR3jvPKn2Gv4hDBsD5dSypxd9PoPBWsgzwx7YLIC2cs
         ob4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781599633; x=1782204433;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aaTfOOhj7DmWaDCSdXoWZe8eYeEqWjLH4eK4JZJxdgM=;
        b=kM1THp9FbdV9HJe6C9/bvKddcfbcxYNo7LrS7AVwFqYc4H+6hYkA3/sUGvJt3u8GqN
         DtKgQ/eAANKEYfmF1kHoUYhK56oQcQPJkkyalgs6zQA6d4ag3U0rauzDzm+D/MCs18TK
         30j1Fn9jllkEdgZAfL0TZCC7L8L2DKwcTDP4Yh5XWxFrzlqUUsY5wB/erFzIMCfcLwah
         NcKNqIAz3zOoZ957mwENz9cHWO794nqCfWluHcBWR73GSuXQEOVVPlul3pIdEQ79QLZK
         VK/3gZJDq7Lh5SujGDQeZwx5O7mWvV5ndLdhPd9nHIRekvv7q1ppsWNxhxl0NJTFDQei
         eyHg==
X-Forwarded-Encrypted: i=1; AFNElJ/3Sg+nm9DmhOOnxQtw+S/lpaZq3k8NeII3Z/4qIW5aR7F3YYYdMo6NoJJMwWHs387VwO/S/J5Vo5xRggP2@lists.linaro.org
X-Gm-Message-State: AOJu0YyI94051exTfK/MFd6HWLN0uxMbJJHoWIx6xOQ1j5o8jtZWQmFh
	oO1R2n2lWKDUplWuxkULu7zLCftgbiZ+Ak2B4XFCT6BWfPItqMRIwB4Jpn+6BMNY1g==
X-Gm-Gg: Acq92OGonJCnT1L+nFL6iBAFjlsxn7Yd5wlzTsb5G7KazwDLIZq4jB44ZgvrLKPePSA
	nqx8qrYuh3p/V8PQzQTnqpanP1nomyEXHjo6DkJCuCM8LVOuOMPnLi1QNbYKcz8oDgCTJQPfLRO
	41cq9PPpIhJoB8EKPD0X1mSXH9nATX0A5m/hTNNOdS7CtwpV3jrotp31K7SCi2s8MRc5+FPRtLG
	sh38SQsyETGgVSnR7XVpCIkTIUY5LV8sSJi94iEasrfMZn2sm26nYcaB4ph/C0Upx6Ey5aIPWEV
	gIkHGNndSt2wg4PjvkvLBiLcoH0hGCTo63OWlALTeRLqeXLCv29WDZltHTdcwD2qTE1Ws4UFo0i
	BL7rybpRsnBxzOxD8kh3bCWgy2vkYCZQCAb287xXBCvMhnJtzpijIJAMuZh6xbK1jnCjasAp3mB
	Rbbg2ThIdl0wEqH0vcPAWdi8YTx7lw2EDI7654i3xoiRiKYySp0j/vRVtvI79N
X-Received: by 2002:a17:903:3c4d:b0:2c1:ee6e:4e4c with SMTP id d9443c01a7336-2c69c30f5a8mr1709625ad.29.1781599632758;
        Tue, 16 Jun 2026 01:47:12 -0700 (PDT)
Received: from google.com (199.255.142.34.bc.googleusercontent.com. [34.142.255.199])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c42fbb50bfsm125397885ad.33.2026.06.16.01.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 01:47:12 -0700 (PDT)
Date: Tue, 16 Jun 2026 08:47:04 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Matt Evans <matt@ozlabs.org>
Message-ID: <ajENiAQkzXjbxgRX@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-10-matt@ozlabs.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610154327.37758-10-matt@ozlabs.org>
X-Spamd-Bar: ----
Message-ID-Hash: X5ZKNAYEMTC5MGAWWANXCJHXCDTZGUFY
X-Message-ID-Hash: X5ZKNAYEMTC5MGAWWANXCJHXCDTZGUFY
X-MailFrom: praan@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 9/9] vfio/pci: Add mmap() attributes to DMABUF feature
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X5ZKNAYEMTC5MGAWWANXCJHXCDTZGUFY/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ozlabs.org:email,bootlin.com:url,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 62FE968D492

On Wed, Jun 10, 2026 at 04:43:23PM +0100, Matt Evans wrote:
> A new VFIO feature, VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR, is added to
> set CPU-facing memory type attributes for a DMABUF exported from
> vfio-pci.  These are used for subsequent mmap()s of the buffer.
> 
> There are two attributes supported:
>  - The default, VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_NC
>  - VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_WC, which results in WC
>    PTEs for the DMABUF's BAR region.
> 
> Signed-off-by: Matt Evans <matt@ozlabs.org>
> ---
>  drivers/vfio/pci/vfio_pci_core.c   |  2 ++
>  drivers/vfio/pci/vfio_pci_dmabuf.c | 57 +++++++++++++++++++++++++++++-
>  drivers/vfio/pci/vfio_pci_priv.h   | 14 ++++++++
>  include/uapi/linux/vfio.h          | 27 ++++++++++++++
>  4 files changed, 99 insertions(+), 1 deletion(-)
> 

> +int vfio_pci_core_feature_dma_buf_memattr(
> +	struct vfio_pci_core_device *vdev, u32 flags,
> +	struct vfio_device_feature_dma_buf_memattr __user *arg,
> +	size_t argsz)
> +{
> +	struct vfio_device_feature_dma_buf_memattr db_attr;
> +	struct vfio_pci_dma_buf *priv;
> +	struct dma_buf *dmabuf;
> +	int ret;
> +
> +	if (!vdev->pci_ops || !vdev->pci_ops->get_dmabuf_phys)
> +		return -EOPNOTSUPP;
> +
> +	ret = vfio_check_feature(flags, argsz,
> +				 VFIO_DEVICE_FEATURE_SET,
> +				 sizeof(db_attr));
> +	if (ret != 1)
> +		return ret;
> +
> +	if (copy_from_user(&db_attr, arg, sizeof(db_attr)))
> +		return -EFAULT;
> +
> +	dmabuf = dma_buf_get(db_attr.dmabuf_fd);
> +	if (IS_ERR(dmabuf))
> +		return PTR_ERR(dmabuf);
> +
> +	/* Verify DMABUF: see comments in vfio_pci_dma_buf_revoke() */
> +	priv = dmabuf->priv;
> +	if (dmabuf->ops != &vfio_pci_dmabuf_ops ||
> +	    READ_ONCE(priv->vdev) != vdev) {
> +		ret = -ENODEV;
> +		goto out_put_buf;
> +	}
> +
> +	switch (db_attr.memattr) {
> +	case VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_NC:
> +	case VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_WC:
> +		WRITE_ONCE(priv->memattr, db_attr.memattr);
> +		ret = 0;
> +		break;
> +
> +	default:
> +		ret = -ENOENT;

Nit: Looks like the agreement [1] was on -EOPNOTSUPP / -EINVAL but we 
took -ENOENT here and in the doc string? Was that intentional?

I tend to agree with Alex's suggestion here, we'd prefer one of those 
two (-EINVAL / -EOPNOTSUPP) since it clearly communicates to the user
that "You sent a wrong arg" or "We don't support this"

-ENOENT means no such file or directory [2] to the user. Users may not
be kernel engineers who'd wanna peek into the code and they may simply
look at the uAPI files which doesn't give them an answer as to what went
wrong.

> +	}
> +
>  out_put_buf:
>  	dma_buf_put(dmabuf);
>  

Apart from that, 
Reviewed-by: Pranjal Shrivastava <praan@google.com>

Thanks,
Praan

[1] https://lore.kernel.org/all/20260602131417.41366391@shazbot.org/
[2] https://elixir.bootlin.com/linux/v7.1-rc6/source/include/uapi/asm-generic/errno-base.h#L6
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
