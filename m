Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3A3C69F66
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Nov 2025 15:29:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 607D53F834
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Nov 2025 14:29:07 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by lists.linaro.org (Postfix) with ESMTPS id AFA623F690
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Nov 2025 14:28:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=F6gkpy26;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.47 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-88249766055so69600786d6.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Nov 2025 06:28:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1763476131; x=1764080931; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=35WpspOv1fAWFINmOzi0AcgEQL1oV2/QEYSJcrH4aSg=;
        b=F6gkpy261Y1wTg0RTz6srWffiuxkYpdjYkE8xJzLpOgcvDqWgpM3XxfpDfgjT4MS3y
         iTaVsLPSgoy2LEta+sbu8wOnF9CgKAY4hOQ6TNwPTAsbqwXeUusKeVwg/hDsquSPB1+W
         43+T7S8unPzDkR2WMe14Ui4eW1RjT2Ujf7O4rUXTf+hQ8eaU2sYUs7szWyFOttTW6VuE
         nXMPrUzz+TFZ//irCtC4DTTDm/i7yxYjBVhx/tPo3K4DwqXamyI0a+/KuJM/bYjE/uyV
         wlOoY7c/9WAUluZO0Qj5SAgTwuwG1N+Yn/A1B5WdUICskterVdjNVsqaHJ/dvK3c5PnT
         8Bmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763476131; x=1764080931;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=35WpspOv1fAWFINmOzi0AcgEQL1oV2/QEYSJcrH4aSg=;
        b=GN02yqSAHRtwnqZq4oNDtM2gCIge2OE9bzmVW0veYPeL0+zcES/aAU0ckEDVweF47i
         5PppcTzC4VG/3fKp3+CQRtvfVDMAjAXrHaA+olN+F2hMoBIVbQ/EaOgQSPlqD1i0Lh7C
         3nshMbG2JzGW7GQMYkjHuVmEmfo4tApr714qqaY1LvTwAQj/4rt4/JL6R51ER7Jwb6iW
         h2g+5+zqtaLS080wk2KG6N0OAvC9aTXFsWz6IxlWk2bnOVppvNQ5Y0ZVtgoo2yE/HCab
         ew42wp6nEoQfQDZL9hWJU5bO6Xgzt5tEr6vqcWwFDWVKBNopOVCoi09vfN86FzCU5KTn
         A1OQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9AvxWac04KEmIkLsXVQDUrdJ+Wav6Hg8iIUqnNTcNPErZvCx/qm6F7AAPBX8h05gjbzx8j2BbF9lqk2fC@lists.linaro.org
X-Gm-Message-State: AOJu0YyMlznbam49QDqWJixYK8vAFoWnSxkPyjB8Gs68T9h5vVU9tSV/
	A9txKHt99P6ahih+08eMnv5jQOAlHON4Vsm/IvzywQdynqzEHkiECJhsiby6oMxmuj8=
X-Gm-Gg: ASbGncv1CsbP3bFfGcBQdsO46O2icuQZVGQV8SiRxp0TA40STGAsqisrNBFeYdi+far
	MZVHHb1WeC0myz9ENEGaBhQk07cPM0/KL5UMMURl0pXH5P+2a7/Z9jxvz1ZA9r0qUKZDczsdR2o
	H1/TnzzzitKZK2PuhwBt7o5pICQb7RJv05gnPkLHP3ckzF32W4afsBFgi4ZX+HR0IGl2oinRsSj
	waTYs7cyc6Fdd87x51Ej80dkThIm/ZrydFwAfEThqo+e/mr8t/1jMKy3frUFlg84+q25VhJ2tpT
	citVkAI/eHJaC3RHfPlixXXCYdisCnGO6r6rqZkUTfr0Lgj3vD1kPAxUd1E+xNrsJEOWRCKe5Zo
	yy2LvGJYHcMpqpeFjTG2FBDYxr4L+SjlyjDNIPbxWK0MgkHlunfL9Y2ZTGElawqXplI/bOX+KAu
	JwJdyWY5VDgtYXe/V/78CwCleJjYNXaC7FZDfOTPy903xAAVteD62u2K8UWfCQxKNf/Xg=
X-Google-Smtp-Source: AGHT+IF+NrfSbYwvwiNh+CC3YngHFJHpwzxC37jBlKkv0sHaTL3i1cld4gWS47y25QRA75BxBaWSvQ==
X-Received: by 2002:a05:6214:62a:b0:81b:bf92:8df9 with SMTP id 6a1803df08f44-8829269e086mr234228876d6.43.1763476131063;
        Tue, 18 Nov 2025 06:28:51 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8828652efa4sm114860276d6.39.2025.11.18.06.28.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 06:28:50 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vLMhN-00000000NEc-3Dxs;
	Tue, 18 Nov 2025 10:28:49 -0400
Date: Tue, 18 Nov 2025 10:28:49 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: "Tian, Kevin" <kevin.tian@intel.com>
Message-ID: <20251118142849.GG17968@ziepe.ca>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-10-fd9aa5df478f@nvidia.com>
 <BN9PR11MB527610F3240E677BE9720C2B8CD6A@BN9PR11MB5276.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN9PR11MB527610F3240E677BE9720C2B8CD6A@BN9PR11MB5276.namprd11.prod.outlook.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.47:from];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	DMARC_NA(0.00)[ziepe.ca];
	TO_DN_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[mail-qv1-f47.google.com:rdns,mail-qv1-f47.google.com:helo,ziepe.ca:dkim,ziepe.ca:mid,ziepe.ca:from_smtp,ziepe.ca:from_mime];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AFA623F690
X-Spamd-Bar: ---
Message-ID-Hash: TVO6YVWGN6PMAVZFLKQDCB2YI6FUNWET
X-Message-ID-Hash: TVO6YVWGN6PMAVZFLKQDCB2YI6FUNWET
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>, "linux-mm@kvack.org" <linux-mm@kvack.org>, "linux-doc@
 vger.kernel.org" <linux-doc@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 10/11] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TVO6YVWGN6PMAVZFLKQDCB2YI6FUNWET/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Nov 18, 2025 at 07:33:23AM +0000, Tian, Kevin wrote:
> > From: Leon Romanovsky <leon@kernel.org>
> > Sent: Tuesday, November 11, 2025 5:58 PM
> > 
> > -		if (!new_mem)
> > +		if (!new_mem) {
> >  			vfio_pci_zap_and_down_write_memory_lock(vdev);
> > -		else
> > +			vfio_pci_dma_buf_move(vdev, true);
> > +		} else {
> >  			down_write(&vdev->memory_lock);
> > +		}
> 
> shouldn't we notify move before zapping the bars? otherwise there is
> still a small window in between where the exporter already has the
> mapping cleared while the importer still keeps it...

zapping the VMA and moving/revoking the DMABUF are independent
operations that can happen in any order. They effect different kinds
of users. The VMA zap prevents CPU access from userspace, the DMABUF
move prevents DMA access from devices.

The order has to be like the above because vfio_pci_dma_buf_move()
must be called under the memory lock and
vfio_pci_zap_and_down_write_memory_lock() gets the memory lock..

> > +static void vfio_pci_dma_buf_release(struct dma_buf *dmabuf)
> > +{
> > +	struct vfio_pci_dma_buf *priv = dmabuf->priv;
> > +
> > +	/*
> > +	 * Either this or vfio_pci_dma_buf_cleanup() will remove from the list.
> > +	 * The refcount prevents both.
> 
> which refcount? I thought it's vdev->memory_lock preventing the race...

Refcount on the dmabuf

> > +int vfio_pci_core_fill_phys_vec(struct dma_buf_phys_vec *phys_vec,
> > +				struct vfio_region_dma_range *dma_ranges,
> > +				size_t nr_ranges, phys_addr_t start,
> > +				phys_addr_t len)
> > +{
> > +	phys_addr_t max_addr;
> > +	unsigned int i;
> > +
> > +	max_addr = start + len;
> > +	for (i = 0; i < nr_ranges; i++) {
> > +		phys_addr_t end;
> > +
> > +		if (!dma_ranges[i].length)
> > +			return -EINVAL;
> 
> Looks redundant as there is already a check in validate_dmabuf_input().

Agree

> > +int vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32
> > flags,
> > +				  struct vfio_device_feature_dma_buf __user
> > *arg,
> > +				  size_t argsz)
> > +{
> > +	struct vfio_device_feature_dma_buf get_dma_buf = {};
> > +	struct vfio_region_dma_range *dma_ranges;
> > +	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
> > +	struct vfio_pci_dma_buf *priv;
> > +	size_t length;
> > +	int ret;
> > +
> > +	if (!vdev->pci_ops || !vdev->pci_ops->get_dmabuf_phys)
> > +		return -EOPNOTSUPP;
> > +
> > +	ret = vfio_check_feature(flags, argsz, VFIO_DEVICE_FEATURE_GET,
> > +				 sizeof(get_dma_buf));
> > +	if (ret != 1)
> > +		return ret;
> > +
> > +	if (copy_from_user(&get_dma_buf, arg, sizeof(get_dma_buf)))
> > +		return -EFAULT;
> > +
> > +	if (!get_dma_buf.nr_ranges || get_dma_buf.flags)
> > +		return -EINVAL;
> 
> unknown flag bits get -EOPNOTSUPP.

Agree

> > +
> > +void vfio_pci_dma_buf_cleanup(struct vfio_pci_core_device *vdev)
> > +{
> > +	struct vfio_pci_dma_buf *priv;
> > +	struct vfio_pci_dma_buf *tmp;
> > +
> > +	down_write(&vdev->memory_lock);
> > +	list_for_each_entry_safe(priv, tmp, &vdev->dmabufs, dmabufs_elm)
> > {
> > +		if (!get_file_active(&priv->dmabuf->file))
> > +			continue;
> > +
> > +		dma_resv_lock(priv->dmabuf->resv, NULL);
> > +		list_del_init(&priv->dmabufs_elm);
> > +		priv->vdev = NULL;
> > +		priv->revoked = true;
> > +		dma_buf_move_notify(priv->dmabuf);
> > +		dma_resv_unlock(priv->dmabuf->resv);
> > +		vfio_device_put_registration(&vdev->vdev);
> > +		fput(priv->dmabuf->file);
> 
> dma_buf_put(priv->dmabuf), consistent with other places.

Someone else said this, I don't agree, the above got the get via

get_file_active() instead of a dma_buf version..

So we should pair with get_file_active() vs fput().

Christian rejected the idea of adding a dmabuf wrapper for
get_file_active(), oh well.

> > +struct vfio_device_feature_dma_buf {
> > +	__u32	region_index;
> > +	__u32	open_flags;
> > +	__u32   flags;
> 
> Usually the 'flags' field is put in the start (following argsz if existing).

Yeah, but doesn't really matter.

Thanks,
Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
