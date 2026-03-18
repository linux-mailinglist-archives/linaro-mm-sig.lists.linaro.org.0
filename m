Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHQJAo5h5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:25:34 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFE84312B6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:25:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A9133F800
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:25:32 +0000 (UTC)
Received: from fhigh-a8-smtp.messagingengine.com (fhigh-a8-smtp.messagingengine.com [103.168.172.159])
	by lists.linaro.org (Postfix) with ESMTPS id 514C23F903
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Mar 2026 20:04:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=shazbot.org header.s=fm3 header.b=ADomunYZ;
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="f C6Zr9M";
	spf=pass (lists.linaro.org: domain of alex@shazbot.org designates 103.168.172.159 as permitted sender) smtp.mailfrom=alex@shazbot.org;
	dmarc=pass (policy=none) header.from=shazbot.org
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 1608C140002C;
	Wed, 18 Mar 2026 16:04:11 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-05.internal (MEProxy); Wed, 18 Mar 2026 16:04:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shazbot.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1773864251;
	 x=1773950651; bh=vcUo1ZMp4oFsagVvv3uz/l3ncy9TFqhSMUOAmV8B+wY=; b=
	ADomunYZ7kTL1VvnMbiUtPVoM8wAcN7vHVfDef9TOou5UNg7yb2rx+Wk8blN2M9T
	N9GceHk7LlF2UebAX9E+gIZL+O0aLJjtrxEe/Ca8DJUN0B6m2h1hnRugVHhIklJS
	nwtNV32JxzgOgidIHl8p5eq2tNA/yeFlVwl/9aT3JtymhXumRWKLw0NjDNE2yjZa
	sc9qlC6L5/wmraeoYM96aKKSzsNm4TQ6Djmp1HvKYDNUiQaNbIlUKaJJVGcOQXkn
	UL2H2NV7vGffiXN/r6rcpJoNeUzOBijcViFm77sYu3GfiahIN83a/JXggTVLPOZo
	A8hWK/NgDJ3yBjnvtryXhQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1773864251; x=
	1773950651; bh=vcUo1ZMp4oFsagVvv3uz/l3ncy9TFqhSMUOAmV8B+wY=; b=f
	C6Zr9MdLWduEGTK6FwNybsRMHhYcsa8HUNM62fWGhzNRz9uM28V0s9sGW7e7fJY5
	lofIpHWDENXLB9kOGMDCwM5NiouZmi5HFRHI0hu5P4sBK/x/KA+GKbhqigXs5eOB
	Tm4GxA3ub2UdQPNJvLw/Y+TkbRXwMbtpPHAkQHKVLAew2r9uimu8apcSHn1zXGfv
	XzPLh7gAAiISRgDqhTrc6Wn7nSjplszUP52DGHdrOIrlVasckniZECqYgFxU9LL2
	0gvYmVmBw4JDeLEC7csD9CA3pZ7TzRJoD8/PE7v4mqLhOuwDiHnodz2Uyj9xsBn5
	IspWp35wpvwXBqsFy+WXw==
X-ME-Sender: <xms:OgW7aUfeg6UvzkGKtIOGJTt27ztIeemNSvT37WJ_v4PQZvWuTlVUsg>
    <xme:OgW7aT4nuenjpKd4j3Y1VXZ6EEh6xv7sti1lwOLR4dg6J1Rvn2B6IV2etkwnQ49Lm
    TTEMNoqGFGpXB3_99xrCPvloaKO37T5JAnYu5Zf0U65CZSoDaGd>
X-ME-Received: <xmr:OgW7af__mo6rtsp0o3KczMBC_sXEMV_lestW9V8SU8ZcFgzOjExv7D5Wt80>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdeftdehtdegucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkjghfofggtgfgsehtjeertdertddvnecuhfhrohhmpeetlhgvgicu
    hghilhhlihgrmhhsohhnuceorghlvgigsehshhgriigsohhtrdhorhhgqeenucggtffrrg
    htthgvrhhnpedvkeefjeekvdduhfduhfetkedugfduieettedvueekvdehtedvkefgudeg
    veeuueenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grlhgvgiesshhhrgiisghothdrohhrghdpnhgspghrtghpthhtohepvddtpdhmohguvgep
    shhmthhpohhuthdprhgtphhtthhopehmrghtthgvvhesmhgvthgrrdgtohhmpdhrtghpth
    htoheplhgvohhnsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehjghhgsehnvhhiughi
    rgdrtghomhdprhgtphhtthhopegrmhgrshhtrhhosehfsgdrtghomhdprhgtphhtthhope
    hmnhhghigruggrmhesrghmrgiiohhnrdguvgdprhgtphhtthhopegumhgrthhlrggtkhes
    ghhoohhglhgvrdgtohhmpdhrtghpthhtohepsghjohhrnheskhgvrhhnvghlrdhorhhgpd
    hrtghpthhtohepshhumhhithdrshgvmhifrghlsehlihhnrghrohdrohhrghdprhgtphht
    thhopegthhhrihhsthhirghnrdhkohgvnhhighesrghmugdrtghomh
X-ME-Proxy: <xmx:OgW7aSI73CTO08RyUJKUTdubyyQgmlkEk4puDfo__A_1XVuYHSQT7A>
    <xmx:OgW7aahtTFjR_GzD4dyDLzRSUgvKLdKpVbShMcROrIaACCfEoL_IIA>
    <xmx:OgW7aT2uqYgJIpVJsK-XHQaQZFtJwanBnAqK0Yrn1pK02A-hgaItig>
    <xmx:OgW7aTav18azqWdsN31N3Kjj3f3_rjREyLfgvbmCBPuQsfcLQfgPKA>
    <xmx:OwW7aUc1vmlfyLnnVi2EgNk9kAPuTgcc7o3SgA1Hc4lYpdFoKmehYbdq>
Feedback-ID: i03f14258:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 18 Mar 2026 16:04:09 -0400 (EDT)
Date: Wed, 18 Mar 2026 14:04:08 -0600
From: Alex Williamson <alex@shazbot.org>
To: Matt Evans <mattev@meta.com>
Message-ID: <20260318140408.4677fff5@shazbot.org>
In-Reply-To: <20260312184613.3710705-5-mattev@meta.com>
References: <20260312184613.3710705-1-mattev@meta.com>
	<20260312184613.3710705-5-mattev@meta.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ----
X-MailFrom: alex@shazbot.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: L3IINZWDRWP76ITBY2C5TMLCDMZBAJ7T
X-Message-ID-Hash: L3IINZWDRWP76ITBY2C5TMLCDMZBAJ7T
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:25:21 +0000
CC: Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, alex@shazbot.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 PATCH 04/10] vfio/pci: Add a helper to create a DMABUF for a BAR-map VMA
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L3IINZWDRWP76ITBY2C5TMLCDMZBAJ7T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[789];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[shazbot.org : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.469];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,shazbot.org:mid]
X-Rspamd-Queue-Id: 8EFE84312B6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 12 Mar 2026 11:46:02 -0700
Matt Evans <mattev@meta.com> wrote:

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
> Signed-off-by: Matt Evans <mattev@meta.com>
> ---
>  drivers/vfio/pci/vfio_pci_dmabuf.c | 131 +++++++++++++++++++++--------
>  drivers/vfio/pci/vfio_pci_priv.h   |   4 +
>  2 files changed, 102 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
> index 63140528dbea..76db340ba592 100644
> --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
> +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
> @@ -82,6 +82,8 @@ static void vfio_pci_dma_buf_release(struct dma_buf *dmabuf)
>  		up_write(&priv->vdev->memory_lock);
>  		vfio_device_put_registration(&priv->vdev->vdev);
>  	}
> +	if (priv->vfile)
> +		fput(priv->vfile);
>  	kfree(priv->phys_vec);
>  	kfree(priv);
>  }
> @@ -182,6 +184,41 @@ int vfio_pci_dma_buf_find_pfn(struct vfio_pci_dma_buf *vpdmabuf,
>  	return -EFAULT;
>  }
>  
> +static int vfio_pci_dmabuf_export(struct vfio_pci_core_device *vdev,
> +				  struct vfio_pci_dma_buf *priv, uint32_t flags,
> +				  size_t size, bool status_ok)
> +{
> +	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
> +
> +	if (!vfio_device_try_get_registration(&vdev->vdev))
> +		return -ENODEV;
> +
> +	exp_info.ops = &vfio_pci_dmabuf_ops;
> +	exp_info.size = size;
> +	exp_info.flags = flags;
> +	exp_info.priv = priv;
> +
> +	priv->dmabuf = dma_buf_export(&exp_info);
> +	if (IS_ERR(priv->dmabuf)) {
> +		vfio_device_put_registration(&vdev->vdev);
> +		return PTR_ERR(priv->dmabuf);
> +	}
> +
> +	kref_init(&priv->kref);
> +	init_completion(&priv->comp);
> +
> +	/* dma_buf_put() now frees priv */
> +	INIT_LIST_HEAD(&priv->dmabufs_elm);
> +	down_write(&vdev->memory_lock);
> +	dma_resv_lock(priv->dmabuf->resv, NULL);
> +	priv->revoked = !status_ok;

Testing __vfio_pci_memory_enabled() outside of memory_lock() is
invalid, so passing it as a parameter outside of the semaphore is
invalid.  @status_ok is stale here.

> +	list_add_tail(&priv->dmabufs_elm, &vdev->dmabufs);
> +	dma_resv_unlock(priv->dmabuf->resv);
> +	up_write(&vdev->memory_lock);
> +
> +	return 0;
> +}
> +
>  /*
>   * This is a temporary "private interconnect" between VFIO DMABUF and iommufd.
>   * It allows the two co-operating drivers to exchange the physical address of
> @@ -300,7 +337,6 @@ int vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
>  {
>  	struct vfio_device_feature_dma_buf get_dma_buf = {};
>  	struct vfio_region_dma_range *dma_ranges;
> -	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
>  	struct vfio_pci_dma_buf *priv;
>  	size_t length;
>  	int ret;
> @@ -369,46 +405,20 @@ int vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
>  	kfree(dma_ranges);
>  	dma_ranges = NULL;
>  
> -	if (!vfio_device_try_get_registration(&vdev->vdev)) {
> -		ret = -ENODEV;
> +	ret = vfio_pci_dmabuf_export(vdev, priv, get_dma_buf.open_flags,
> +				     priv->size,
> +				     __vfio_pci_memory_enabled(vdev));
> +	if (ret)
>  		goto err_free_phys;
> -	}
> -
> -	exp_info.ops = &vfio_pci_dmabuf_ops;
> -	exp_info.size = priv->size;
> -	exp_info.flags = get_dma_buf.open_flags;
> -	exp_info.priv = priv;
> -
> -	priv->dmabuf = dma_buf_export(&exp_info);
> -	if (IS_ERR(priv->dmabuf)) {
> -		ret = PTR_ERR(priv->dmabuf);
> -		goto err_dev_put;
> -	}
> -
> -	kref_init(&priv->kref);
> -	init_completion(&priv->comp);
> -
> -	/* dma_buf_put() now frees priv */
> -	INIT_LIST_HEAD(&priv->dmabufs_elm);
> -	down_write(&vdev->memory_lock);
> -	dma_resv_lock(priv->dmabuf->resv, NULL);
> -	priv->revoked = !__vfio_pci_memory_enabled(vdev);

Tested under memory_lock.  It was correct previously.

> -	list_add_tail(&priv->dmabufs_elm, &vdev->dmabufs);
> -	dma_resv_unlock(priv->dmabuf->resv);
> -	up_write(&vdev->memory_lock);
> -
>  	/*
>  	 * dma_buf_fd() consumes the reference, when the file closes the dmabuf
>  	 * will be released.
>  	 */
>  	ret = dma_buf_fd(priv->dmabuf, get_dma_buf.open_flags);
> -	if (ret < 0)
> -		goto err_dma_buf;
> -	return ret;
> +	if (ret >= 0)
> +		return ret;
>  
> -err_dma_buf:
>  	dma_buf_put(priv->dmabuf);
> -err_dev_put:
>  	vfio_device_put_registration(&vdev->vdev);
>  err_free_phys:
>  	kfree(priv->phys_vec);
> @@ -419,6 +429,61 @@ int vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
>  	return ret;
>  }
>  
> +int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
> +				   struct vm_area_struct *vma,
> +				   u64 phys_start,
> +				   u64 pgoff,
> +				   u64 req_len)
> +{
> +	struct vfio_pci_dma_buf *priv;
> +	const unsigned int nr_ranges = 1;
> +	int ret;
> +
> +	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	priv->phys_vec = kcalloc(nr_ranges, sizeof(*priv->phys_vec),
> +				 GFP_KERNEL);
> +	if (!priv->phys_vec) {
> +		ret = -ENOMEM;
> +		goto err_free_priv;
> +	}
> +
> +	priv->vdev = vdev;
> +	priv->nr_ranges = nr_ranges;
> +	priv->size = req_len;
> +	priv->phys_vec[0].paddr = phys_start + (pgoff << PAGE_SHIFT);
> +	priv->phys_vec[0].len = req_len;
> +
> +	/*
> +	 * Creates a DMABUF, adds it to vdev->dmabufs list for
> +	 * tracking (meaning cleanup or revocation will zap them), and
> +	 * registers with vfio_device:
> +	 */
> +	ret = vfio_pci_dmabuf_export(vdev, priv, O_CLOEXEC, priv->size, true);
> +	if (ret)
> +		goto err_free_phys;
> +
> +	/*
> +	 * The VMA gets the DMABUF file so that other users can locate
> +	 * the DMABUF via a VA.  Ownership of the original VFIO device
> +	 * file being mmap()ed transfers to priv, and is put when the
> +	 * DMABUF is released.
> +	 */
> +	priv->vfile = vma->vm_file;
> +	vma->vm_file = priv->dmabuf->file;

AIUI, this affects what the user sees in /proc/<pid>/maps, right?
Previously a memory range could be clearly associated with a specific
vfio device, now, only for vfio-pci devices, I think the range is
associated to a nondescript dmabuf.  If so, is that an acceptable, user
visible, debugging friendly change (ex. lsof)?  Thanks,

Alex

> +	vma->vm_private_data = priv;
> +
> +	return 0;
> +
> +err_free_phys:
> +	kfree(priv->phys_vec);
> +err_free_priv:
> +	kfree(priv);
> +	return ret;
> +}
> +
>  void vfio_pci_dma_buf_move(struct vfio_pci_core_device *vdev, bool revoked)
>  {
>  	struct vfio_pci_dma_buf *priv;
> diff --git a/drivers/vfio/pci/vfio_pci_priv.h b/drivers/vfio/pci/vfio_pci_priv.h
> index 5cc8c85a2153..5fd3a6e00a0e 100644
> --- a/drivers/vfio/pci/vfio_pci_priv.h
> +++ b/drivers/vfio/pci/vfio_pci_priv.h
> @@ -30,6 +30,7 @@ struct vfio_pci_dma_buf {
>  	size_t size;
>  	struct phys_vec *phys_vec;
>  	struct p2pdma_provider *provider;
> +	struct file *vfile;
>  	u32 nr_ranges;
>  	struct kref kref;
>  	struct completion comp;
> @@ -128,6 +129,9 @@ int vfio_pci_dma_buf_find_pfn(struct vfio_pci_dma_buf *vpdmabuf,
>  			      unsigned long address,
>  			      unsigned int order,
>  			      unsigned long *out_pfn);
> +int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
> +				   struct vm_area_struct *vma,
> +				   u64 phys_start, u64 pgoff, u64 req_len);
>  
>  #ifdef CONFIG_VFIO_PCI_DMABUF
>  int vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
