Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IP/SIfMP4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:36:03 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 476A0411BEB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:36:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 16C474410D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:36:02 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	by lists.linaro.org (Postfix) with ESMTPS id 617333F758
	for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jan 2026 20:54:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=cx3BsTMz;
	spf=pass (lists.linaro.org: domain of praan@google.com designates 209.85.214.179 as permitted sender) smtp.mailfrom=praan@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2a0d06cfa93so3235ad.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jan 2026 12:54:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1769460846; x=1770065646; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Hzbl67LvVO3G9O2kTwPWCnjF6/j6A2BV5AiFShhPhBU=;
        b=cx3BsTMzQT1W5U2Kd6mqdugzPzE7oXnuVn4x2c+EDCok+SEkESypI6owHKiR20QGAl
         D6PgcaTpT94u7EQKw1adBD/ZBoXePRqtF5L0jZUwlw1MpIkGD9BsMv2CbUdjg9KS8+4A
         a9kXk5G4bt2fM/qz7CgIQYTMGeLWu2kG6wn4yfEq75Y12HLqGUrHZ9x2nTgVW+wY5x/X
         00s/w6Sg3YPG/nRxjFxRw5mMd6WlP/XeSxg8UK5JOqgRoETPW0UDGj0rPriLhZdsSUrg
         iuMJiFJ+EDwJ2s4ucZlP5j8DBodIrlTzYwVNqEkuB2ZiHfhglTqhZpFrpaERzl0k621s
         MUyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769460846; x=1770065646;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hzbl67LvVO3G9O2kTwPWCnjF6/j6A2BV5AiFShhPhBU=;
        b=wMyeriTz6U63OnULPHlIG7kw29aA+i/tBAvqGBNaFWEz1LNjWvbTrhkwil5A9+eWnB
         VnFiDVblPfAMnIR8dNZeQroDh6/RxtrlalHOe5rFBgmqKxECu1qm7YcFxnaShBD/jPrs
         x/EWQMOjatUrXquhkQjTlHRz4lf5iC0Ba0mqjy1FWYqVt9dmdFf75jWLzBve9jFdj52d
         rN5snvOZ9RYRWPKOoEGowIh0QblKiG7rnx3M9T8eQFo/zd6m3cLVutGFeMDa2NWvMr+T
         /j8YxArAbgMwxQCN2Yp5oAt4Xp60vu/YfwosOHa+X1C/nZJgpGTV7Sw1nshCsFyCiFKu
         ntiA==
X-Forwarded-Encrypted: i=1; AJvYcCX3BX0E9vO9TSG8FwDCBN3N3S9NRg9k9HYHeyqdAFr1qYYL/0yp8AMKIm/ExkERlngWbThz5EhBAVdY+gRA@lists.linaro.org
X-Gm-Message-State: AOJu0YxJGLQAgRQXgqYTNR5oqN5xbA3zZQS7IjOVXRjZ7QqE7QhANlsl
	yTGH3PZGNaOQvBJcBXTdpC2HT1T0v7ZTD8luRMsUAz0zXDDuAuDaWhRDUcxY9ofyaQ==
X-Gm-Gg: AZuq6aJMiPYSUJOW/ND7l6RPseP61bgg7HgKyH+Pjnq1gIEGTbyrwIpsceSsvOZVbFM
	v9ATYRvgpLSTi2XzFmce5Y3Viv6N57vVgRSRZYzGfx2pdTxtFnXe3KZJyhkW757UdHqlbu1lKBU
	m2kr4u0meGRklUoCuhzuKzdaPP+uiRiNkiqLHMmiiKWGpVWDGa88r+uFJeS9GkhfD3fzUigi5iJ
	TVugOdGP909aF3tJMNs3MOQGreP125hRcOW8FfwEndAJQE0zX6ex6RdVTURAtW/3x/YIdPvFG2P
	CIfbmxZJFIfxhoy2ScQf0R5LF7BSVBVA/hEJ9Gd0F+IxgueT9MzzEXXYZRmkHBjJ4J3c1bQARDt
	Mz6lawXZuphqsoJYGHZEFHmBCQM8Hw2B5ooXX+JNXEGIwa4/HGJAiyKRmQ1SqzSKAaTG1OL5Max
	2YbwKTfOEHTk3LHkQqOQyI0lzBsCiuQOXtm4jXCpthubAamUZr
X-Received: by 2002:a17:903:1cc:b0:295:5405:46be with SMTP id d9443c01a7336-2a8447fe3b6mr3809735ad.1.1769460846094;
        Mon, 26 Jan 2026 12:54:06 -0800 (PST)
Received: from google.com (222.245.187.35.bc.googleusercontent.com. [35.187.245.222])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802fda160sm94991165ad.88.2026.01.26.12.53.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 12:54:05 -0800 (PST)
Date: Mon, 26 Jan 2026 20:53:57 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <aXfUZcSEr9N18o6w@google.com>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
 <20260124-dmabuf-revoke-v5-4-f98fca917e96@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260124-dmabuf-revoke-v5-4-f98fca917e96@nvidia.com>
X-Spamd-Bar: ----
X-MailFrom: praan@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LB5VFW62ON4XCH2WWSE22DAKR4GH2NJN
X-Message-ID-Hash: LB5VFW62ON4XCH2WWSE22DAKR4GH2NJN
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:35:52 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-med
 ia@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 4/8] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LB5VFW62ON4XCH2WWSE22DAKR4GH2NJN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), No valid DKIM,reject];
	DATE_IN_PAST(1.00)[1915];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[35];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.939];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 476A0411BEB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Jan 24, 2026 at 09:14:16PM +0200, Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> dma-buf invalidation is handled asynchronously by the hardware, so VFIO
> must wait until all affected objects have been fully invalidated.
> 
> In addition, the dma-buf exporter is expecting that all importers unmap any
> buffers they previously mapped.
> 
> Fixes: 5d74781ebc86 ("vfio/pci: Add dma-buf export support for MMIO regions")
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> ---
>  drivers/vfio/pci/vfio_pci_dmabuf.c | 71 ++++++++++++++++++++++++++++++++++++--
>  1 file changed, 68 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
> index d8ceafabef48..485515629fe4 100644
> --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
> +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
> @@ -17,6 +17,8 @@ struct vfio_pci_dma_buf {
>  	struct dma_buf_phys_vec *phys_vec;
>  	struct p2pdma_provider *provider;
>  	u32 nr_ranges;
> +	struct kref kref;
> +	struct completion comp;
>  	u8 revoked : 1;
>  };
>  
> @@ -44,27 +46,46 @@ static int vfio_pci_dma_buf_attach(struct dma_buf *dmabuf,
>  	return 0;
>  }
>  
> +static void vfio_pci_dma_buf_done(struct kref *kref)
> +{
> +	struct vfio_pci_dma_buf *priv =
> +		container_of(kref, struct vfio_pci_dma_buf, kref);
> +
> +	complete(&priv->comp);
> +}
> +
>  static struct sg_table *
>  vfio_pci_dma_buf_map(struct dma_buf_attachment *attachment,
>  		     enum dma_data_direction dir)
>  {
>  	struct vfio_pci_dma_buf *priv = attachment->dmabuf->priv;
> +	struct sg_table *ret;
>  
>  	dma_resv_assert_held(priv->dmabuf->resv);
>  
>  	if (priv->revoked)
>  		return ERR_PTR(-ENODEV);
>  
> -	return dma_buf_phys_vec_to_sgt(attachment, priv->provider,
> -				       priv->phys_vec, priv->nr_ranges,
> -				       priv->size, dir);
> +	ret = dma_buf_phys_vec_to_sgt(attachment, priv->provider,
> +				      priv->phys_vec, priv->nr_ranges,
> +				      priv->size, dir);
> +	if (IS_ERR(ret))
> +		return ret;
> +
> +	kref_get(&priv->kref);
> +	return ret;
>  }
>  
>  static void vfio_pci_dma_buf_unmap(struct dma_buf_attachment *attachment,
>  				   struct sg_table *sgt,
>  				   enum dma_data_direction dir)
>  {
> +	struct vfio_pci_dma_buf *priv = attachment->dmabuf->priv;
> +
> +	dma_resv_assert_held(priv->dmabuf->resv);
> +
>  	dma_buf_free_sgt(attachment, sgt, dir);
> +	kref_put(&priv->kref, vfio_pci_dma_buf_done);
>  }
>  
>  static void vfio_pci_dma_buf_release(struct dma_buf *dmabuf)
> @@ -287,6 +308,9 @@ int vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
>  		goto err_dev_put;
>  	}
>  
> +	kref_init(&priv->kref);
> +	init_completion(&priv->comp);
> +
>  	/* dma_buf_put() now frees priv */
>  	INIT_LIST_HEAD(&priv->dmabufs_elm);
>  	down_write(&vdev->memory_lock);
> @@ -326,6 +350,8 @@ void vfio_pci_dma_buf_move(struct vfio_pci_core_device *vdev, bool revoked)
>  	lockdep_assert_held_write(&vdev->memory_lock);
>  
>  	list_for_each_entry_safe(priv, tmp, &vdev->dmabufs, dmabufs_elm) {
> +		unsigned long wait;
> +
>  		if (!get_file_active(&priv->dmabuf->file))
>  			continue;
>  
> @@ -333,7 +359,37 @@ void vfio_pci_dma_buf_move(struct vfio_pci_core_device *vdev, bool revoked)
>  			dma_resv_lock(priv->dmabuf->resv, NULL);
>  			priv->revoked = revoked;
>  			dma_buf_invalidate_mappings(priv->dmabuf);
> +			dma_resv_wait_timeout(priv->dmabuf->resv,
> +					      DMA_RESV_USAGE_BOOKKEEP, false,
> +					      MAX_SCHEDULE_TIMEOUT);
>  			dma_resv_unlock(priv->dmabuf->resv);
> +			if (revoked) {
> +				kref_put(&priv->kref, vfio_pci_dma_buf_done);
> +				/* Let's wait till all DMA unmap are completed. */
> +				wait = wait_for_completion_timeout(
> +					&priv->comp, secs_to_jiffies(1));

Is the 1-second constant sufficient for all hardware, or should the 
invalidate_mappings() contract require the callback to block until 
speculative reads are strictly fenced? I'm wondering about a case where
a device's firmware has a high response latency, perhaps due to internal
management tasks like error recovery or thermal and it exceeds the 1s 
timeout. 

If the device is in the middle of a large DMA burst and the firmware is
slow to flush the internal pipelines to a fully "quiesced"
read-and-discard state, reclaiming the memory at exactly 1.001 seconds
risks triggering platform-level faults..

Since the wen explicitly permit these speculative reads until unmap is
complete, relying on a hardcoded timeout in the exporter seems to 
introduce a hardware-dependent race condition that could compromise
system stability via IOMMU errors or AER faults. 

Should the importer instead be required to guarantee that all 
speculative access has ceased before the invalidation call returns?

Thanks
Praan

> +				/*
> +				 * If you see this WARN_ON, it means that
> +				 * importer didn't call unmap in response to
> +				 * dma_buf_invalidate_mappings() which is not
> +				 * allowed.
> +				 */
> +				WARN(!wait,
> +				     "Timed out waiting for DMABUF unmap, importer has a broken invalidate_mapping()");
> +			} else {
> +				/*
> +				 * Kref is initialize again, because when revoke
> +				 * was performed the reference counter was decreased
> +				 * to zero to trigger completion.
> +				 */
> +				kref_init(&priv->kref);
> +				/*
> +				 * There is no need to wait as no mapping was
> +				 * performed when the previous status was
> +				 * priv->revoked == true.
> +				 */
> +				reinit_completion(&priv->comp);
> +			}
>  		}
>  		fput(priv->dmabuf->file);
>  	}
> @@ -346,6 +402,8 @@ void vfio_pci_dma_buf_cleanup(struct vfio_pci_core_device *vdev)
>  
>  	down_write(&vdev->memory_lock);
>  	list_for_each_entry_safe(priv, tmp, &vdev->dmabufs, dmabufs_elm) {
> +		unsigned long wait;
> +
>  		if (!get_file_active(&priv->dmabuf->file))
>  			continue;
>  
> @@ -354,7 +412,14 @@ void vfio_pci_dma_buf_cleanup(struct vfio_pci_core_device *vdev)
>  		priv->vdev = NULL;
>  		priv->revoked = true;
>  		dma_buf_invalidate_mappings(priv->dmabuf);
> +		dma_resv_wait_timeout(priv->dmabuf->resv,
> +				      DMA_RESV_USAGE_BOOKKEEP, false,
> +				      MAX_SCHEDULE_TIMEOUT);
>  		dma_resv_unlock(priv->dmabuf->resv);
> +		kref_put(&priv->kref, vfio_pci_dma_buf_done);
> +		wait = wait_for_completion_timeout(&priv->comp,
> +						   secs_to_jiffies(1));
> +		WARN_ON(!wait);
>  		vfio_device_put_registration(&vdev->vdev);
>  		fput(priv->dmabuf->file);
>  	}
> 
> -- 
> 2.52.0
> 
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
