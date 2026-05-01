Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Lg8By779GnFGwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 01 May 2026 21:12:46 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD9D4AF11A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 01 May 2026 21:12:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 204D8406EC
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 May 2026 19:12:44 +0000 (UTC)
Received: from fout-b8-smtp.messagingengine.com (fout-b8-smtp.messagingengine.com [202.12.124.151])
	by lists.linaro.org (Postfix) with ESMTPS id 6DEC63F774
	for <linaro-mm-sig@lists.linaro.org>; Fri,  1 May 2026 19:12:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=shazbot.org header.s=fm2 header.b=GcoIXONH;
	dkim=pass header.d=messagingengine.com header.s=fm3 header.b="Z HRcW/x";
	dmarc=pass (policy=none) header.from=shazbot.org;
	spf=pass (lists.linaro.org: domain of alex@shazbot.org designates 202.12.124.151 as permitted sender) smtp.mailfrom=alex@shazbot.org
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfout.stl.internal (Postfix) with ESMTP id 215021D00085;
	Fri,  1 May 2026 15:12:40 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-04.internal (MEProxy); Fri, 01 May 2026 15:12:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shazbot.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1777662759;
	 x=1777749159; bh=CyuI0WlfUye1AEo6nueVt3RVxpAH+P71icEP9FTaGcI=; b=
	GcoIXONH1GU8XpqtDPjm0MvuAIgxz9OFgccqq+0Uk2Bnkjg2HEkT2oYz4M3Nvupl
	k2PmcnbKn1PXpHKw8uVvMCQ+UiK5Jdvj9JLlZXHY4Di0Pu5zrT1JQVIXSNJm6OZO
	le9CeWVgkA5rRhAGcdXtF1t6VuGgiByF4215QKMerZq0875S329014pqxgT5nEkA
	FJpdU64+9DT2VKObLBizKH79RxMV9w8cENzfM7UAFDR3GmbUFvjlUnhJh64adbRw
	P7Y3t/uOMlpgnypkh3xqhpx7BaJuGufGMB5HAPQB/25p3bcVLl5X6MM9xmXFrYuq
	PAZUc5RgSjS6rCbym3S+fA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1777662759; x=
	1777749159; bh=CyuI0WlfUye1AEo6nueVt3RVxpAH+P71icEP9FTaGcI=; b=Z
	HRcW/xXtmeAkZLFh4ba+qw+fmB3SDu0pteliYvUO3whVaF+JFCGAnqC0th8AdeyD
	a4JXLREi2op4J2ruLhwaxiEbwSFsKvRpY4LzV8dh8JgzeLWNSQkApJa7ucUTKiNg
	moBCQMms/YgQz2Z/zIp/VZExyBtGln9093uOJBD5aZcy+DHiQtfjSJ4hhwxaa3xB
	w10Bo+NmCGOz+V0D1b8YF+Ybbcl4xra8LUT8+JGt2J293ksDmC+g2RfVMi6aWgwD
	AjpN7gRDwVO/QLhWh5GBDJIRFLCplBTFIXquS7udYYxNHcNXkPjIVYlLPTQkVfcN
	gHp665Il9S/9Xiozb0agQ==
X-ME-Sender: <xms:J_v0aXrTOYr3CssCoqGLcDyCK9F0jRzdhjAhcYObQGitQ_pEll_oig>
    <xme:J_v0aS9Y6Cwj02Q8v_2jbrKM63AO5ozzlkwRnkmJGcoR-ZOc1ft8F1963hFHhTXdj
    1Cq93Z7wbxyUHMFVL8CxYuxg3e5vqL_WXSZJr7bIArvnVJ824D6Ig>
X-ME-Received: <xmr:J_v0aY3KqoZfvp8BiBB6Bo41K8W0vdfGJim5mqYYIS2X_u1jhvmEgNLN2Yc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdeluddtudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpeffhffvvefukfgjfhfogggtgfesthejredtredtvdenucfhrhhomheptehlvgigucgh
    ihhllhhirghmshhonhcuoegrlhgvgiesshhhrgiisghothdrohhrgheqnecuggftrfgrth
    htvghrnhepkeehjeeitefffeeuieetjedtjeffvdelledvuedvffdvfeetgefhveekuedv
    fedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpe
    dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrlhgvgiesshhhrgiisghothdrohhrghdp
    nhgspghrtghpthhtohepvddupdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehmrg
    htthgvvhesmhgvthgrrdgtohhmpdhrtghpthhtoheplhgvohhnsehkvghrnhgvlhdrohhr
    ghdprhgtphhtthhopehjghhgsehnvhhiughirgdrtghomhdprhgtphhtthhopegrmhgrsh
    htrhhosehfsgdrtghomhdprhgtphhtthhopegthhhrihhsthhirghnrdhkohgvnhhighes
    rghmugdrtghomhdprhgtphhtthhopehmnhhghigruggrmhesrghmrgiiohhnrdguvgdprh
    gtphhtthhopegumhgrthhlrggtkhesghhoohhglhgvrdgtohhmpdhrtghpthhtohepsghj
    ohhrnheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepshhumhhithdrshgvmhifrghlse
    hlihhnrghrohdrohhrgh
X-ME-Proxy: <xmx:J_v0admTanMNzoud-7lvTq3FrjB5BbRldFAGzV4udTFJQ-ycjSg7WQ>
    <xmx:J_v0ad2GZ6WPaEfSxJFx1M7kn-cKd8gnx61awOBwiFTPaj-Tma8XDQ>
    <xmx:J_v0aUjBZ4Ua9Z-oCX-yep9-mN3xurlrIygQVuGhWXeoTx5ajA5xVw>
    <xmx:J_v0aTU_8ndqtxKbdTx6a8HrZRDFmrleiY12wuT1UZy_ii1NIOJhMQ>
    <xmx:J_v0afx21FZdjyPsHBHFYQreUVAsfVYdOZPFmM60fQM2RPoihqNNGOHs>
Feedback-ID: i03f14258:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 1 May 2026 15:12:37 -0400 (EDT)
Date: Fri, 1 May 2026 13:12:36 -0600
From: Alex Williamson <alex@shazbot.org>
To: Matt Evans <mattev@meta.com>
Message-ID: <20260501131236.278ac431@shazbot.org>
In-Reply-To: <20260416131815.2729131-2-mattev@meta.com>
References: <20260416131815.2729131-1-mattev@meta.com>
	<20260416131815.2729131-2-mattev@meta.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: NRTPM62JOTXP74QD75ZAZT45DS4QTSZF
X-Message-ID-Hash: NRTPM62JOTXP74QD75ZAZT45DS4QTSZF
X-MailFrom: alex@shazbot.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, alex@shazbot.org, Carlos =?UTF-8?B?TMOzcGV6?= <clopez@suse.de>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/9] vfio/pci: Fix vfio_pci_dma_buf_cleanup() double-put
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NRTPM62JOTXP74QD75ZAZT45DS4QTSZF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 4CD9D4AF11A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[shazbot.org:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[shazbot.org : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	DKIM_TRACE(0.00)[shazbot.org:-,messagingengine.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,meta.com:email]

On Thu, 16 Apr 2026 06:17:44 -0700
Matt Evans <mattev@meta.com> wrote:

> vfio_pci_dma_buf_cleanup() assumed all VFIO device DMABUFs need to be
> revoked.  However, if vfio_pci_dma_buf_move() revokes DMABUFs before
> the fd/device closes, then vfio_pci_dma_buf_cleanup() would do a
> second/underflowing kref_put() then wait_for_completion() on a
> completion that never fires.  Fixed by predicating on revocation
> status.
> 
> This could happen if PCI_COMMAND_MEMORY is cleared before closing the
> device fd (but the scenario is more likely to hit when future commits
> add more methods to revoke DMABUFs).
> 
> Fixes: 1a8a5227f2299 ("vfio: Wait for dma-buf invalidation to complete")
> Signed-off-by: Matt Evans <mattev@meta.com>
> ---
> 
> (Just a fix, but later "vfio/pci: Convert BAR mmap() to use a DMABUF"
> and "vfio/pci: Permanently revoke a DMABUF on request" depend on this
> context, so including in this series.)

We really need a fix for this split out from this series, It's already
been shown[1] that this is trivially reachable.  Carlos proposed[2] a
similar solution to the one below.  I was concurrently working on the
issued and suggested an alternative[3].  Let's pick a solution for
7.1-rc.  Thanks,

Alex

[1]https://lore.kernel.org/all/GVXPR02MB12019AA6014F27EF5D773E89BFB372@GVXPR02MB12019.eurprd02.prod.outlook.com/
[2]https://lore.kernel.org/all/20260429182736.409323-2-clopez@suse.de/
[3]https://lore.kernel.org/all/20260429142242.70f746b4@nvidia.com/

 
> drivers/vfio/pci/vfio_pci_dmabuf.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
> index 281ba7d69567..04478b7415a0 100644
> --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
> +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
> @@ -395,20 +395,25 @@ void vfio_pci_dma_buf_cleanup(struct vfio_pci_core_device *vdev)
>  
>  	down_write(&vdev->memory_lock);
>  	list_for_each_entry_safe(priv, tmp, &vdev->dmabufs, dmabufs_elm) {
> +		bool was_revoked;
> +
>  		if (!get_file_active(&priv->dmabuf->file))
>  			continue;
>  
>  		dma_resv_lock(priv->dmabuf->resv, NULL);
>  		list_del_init(&priv->dmabufs_elm);
>  		priv->vdev = NULL;
> +		was_revoked = priv->revoked;
>  		priv->revoked = true;
>  		dma_buf_invalidate_mappings(priv->dmabuf);
>  		dma_resv_wait_timeout(priv->dmabuf->resv,
>  				      DMA_RESV_USAGE_BOOKKEEP, false,
>  				      MAX_SCHEDULE_TIMEOUT);
>  		dma_resv_unlock(priv->dmabuf->resv);
> -		kref_put(&priv->kref, vfio_pci_dma_buf_done);
> -		wait_for_completion(&priv->comp);
> +		if (!was_revoked) {
> +			kref_put(&priv->kref, vfio_pci_dma_buf_done);
> +			wait_for_completion(&priv->comp);
> +		}
>  		vfio_device_put_registration(&vdev->vdev);
>  		fput(priv->dmabuf->file);
>  	}

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
