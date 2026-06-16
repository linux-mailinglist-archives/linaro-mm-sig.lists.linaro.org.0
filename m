Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1FAsOgYEMWq1aQUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 10:06:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A776568D087
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 10:06:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b="H5w/6BYB";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6D66640A56
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 08:06:24 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	by lists.linaro.org (Postfix) with ESMTPS id 29D0940A23
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 08:05:52 +0000 (UTC)
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2c69fa0b1f8so12085ad.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 01:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1781597151; x=1782201951; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dOsiBDHauJNUL/mHLBlXDW8Xe2gvOcwU/fMCh1N6uL8=;
        b=H5w/6BYBwPkFjcOQvNHHFXksP9YSn+TetI6J2Gahbw5GJpj+3swj29DkyQQw9lOvsH
         p2pVxdizHjehmjCycYX5g4DcPE4sshy+JAxyUdzHmx+QhF9FcYgbR/ZHM06fSImjx5Z9
         R5BXZh3PcSPEL8ZwnJPApDsY/oClenu1LoSiuzx8s3BxUsPei835DZQr6SqOU6ImHI7w
         AlyKKNX5u5cCr51MCegl3DMNeo6DfFNFSex/sJ6zlz9jBkwusVm0VX3/YFugCZLVQJM8
         To1wA3pRUv5UpwKNOITlkc32bR2UAeXavnfM7OFYOZfn4qRwGd+Z37jMvP0SnCBJaXdj
         /36w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781597151; x=1782201951;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dOsiBDHauJNUL/mHLBlXDW8Xe2gvOcwU/fMCh1N6uL8=;
        b=PGp0bai1aV64vROXXGtilS+iIDP9myxyHSSyafB/mPLIKa/7SBMn8o76IT1J7Uc/ws
         +jFTcCzzR6x0I9UySlSs4y25aHnxUG0izfsNj+1cIkoi4IhH+ab7AYcLft60XsToQ9Et
         Ag0TS2yw8/Ohh6U6kqPYufvl27BJm9wCLC+xpCxov5xs54KsSqXIJs95BPuP61ym8tHP
         8UNdONeFvouaKESTDeNsBw2PYQjA9f62Yie9oJDJzYcoq0o8GXENeeenjzvaC5FZ0kR6
         thUX4wTSs/GbCT1bhVVq/YuOhd1DDj6IrLwcMvLWJ4fUVR5/KnyRkRyd50jB0aPdWHUV
         jF2A==
X-Forwarded-Encrypted: i=1; AFNElJ+2HoZl5LDDtzM7vETtn7394o8dw7jYCXjDXq78/BcvJ6ym0aklzgcb/dsl2ADow2Kmf7FiZWyR7CmpRUpI@lists.linaro.org
X-Gm-Message-State: AOJu0YxwcBv4rjVMntn4kwhcEyQoid/LaXGjHxnW8hwNG+2k4uLI9i1z
	hS3g9EGeIODYX4hsD8WLm9ZaVjL2oAlB95kAn+InjToSNzuEaUEGDyfWKPB9/sPlAw==
X-Gm-Gg: Acq92OFmjio9h1eGSt5N9ZinGES3yVwW8pDKmzZ/NixnyQJCSpv179Ue2bEB5onWoJJ
	KIxorW7UBLgNwwksiXgngZnJ+U3Fdc2pJDXb/mJb5+ivz9lBnek+pgG7EGU6IgAQwq8U3DdCePu
	FcQ5q7kuW8+gSFTjLiXuHZ9RWWWX9KgjUCNAl27A4LkXWS6bBbUNbdCcrosPJffKSqSxsD4R1pD
	lPgpb9zv0IMunDMkAmH/HS7TFKEjlJK7/Ixuz9GhxgZRAJqPa1sTP4N8mSXKv62pbF1y6kB/UDv
	1RQ0XdVmLBDQfTgE970Nsk4XqPJGQqWQ+uArzDYaHnPgCjcnOzHCS5jeLm5mySXUrqYfhkofBro
	7YUzNXfb0vZIFJJ/trtWQC5W/RtsTfYz3W1TaVCTUczdNwNUEeQEUY3+305nuo/EhxWgG+1pr23
	EAXseOzW0OqhpjsNJxogwJu83c518r325BC59vqg0GxIi7IFuKUUKto0S/+Ha5
X-Received: by 2002:a17:903:1b0e:b0:2bd:6dad:7cca with SMTP id d9443c01a7336-2c69a357a8cmr1809945ad.22.1781597150664;
        Tue, 16 Jun 2026 01:05:50 -0700 (PDT)
Received: from google.com (199.255.142.34.bc.googleusercontent.com. [34.142.255.199])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8434ac9c016sm12271540b3a.8.2026.06.16.01.05.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 01:05:50 -0700 (PDT)
Date: Tue, 16 Jun 2026 08:05:42 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Matt Evans <matt@ozlabs.org>
Message-ID: <ajED1v846hZkyq9z@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-9-matt@ozlabs.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610154327.37758-9-matt@ozlabs.org>
X-Spamd-Bar: ----
Message-ID-Hash: 2LO2GUBYNBW3Y2MXP3CHKUHITHB2KLEL
X-Message-ID-Hash: 2LO2GUBYNBW3Y2MXP3CHKUHITHB2KLEL
X-MailFrom: praan@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 8/9] vfio/pci: Permanently revoke a DMABUF on request
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2LO2GUBYNBW3Y2MXP3CHKUHITHB2KLEL/>
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
	DKIM_TRACE(0.00)[google.com:-];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:matt@ozlabs.org,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	SEM_URIBL_FRESH15_UNKNOWN_FAIL(0.00)[ozlabs.org:query timed out,lists.linaro.org:query timed out,linaro.org:query timed out];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RBL_SEM_FAIL(0.00)[44.210.186.118:query timed out];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	SEM_URIBL_UNKNOWN_FAIL(0.00)[linaro.org:query timed out,ozlabs.org:query timed out,lists.linaro.org:query timed out]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A776568D087

On Wed, Jun 10, 2026 at 04:43:22PM +0100, Matt Evans wrote:
> Expand the VFIO DMABUF revocation state to three states:
> Not revoked, temporarily revoked, and permanently revoked.
> 
> The first two are for existing transient revocation, e.g. across a
> function reset, and the DMABUF is put into the last in response to a
> new VFIO feature VFIO_DEVICE_FEATURE_DMA_BUF.
> 
> VFIO_DEVICE_FEATURE_DMA_BUF passes a DMABUF by fd and requests that
> the DMABUF is permanently revoked.  On success, it's guaranteed that
> the buffer can never be imported/attached/mmap()ed in future, that
> dynamic imports have been cleanly detached, and that all mappings have
> been made inaccessible/PTEs zapped.
> 
> This is useful for lifecycle management, to reclaim VFIO PCI BAR
> ranges previously delegated to a subordinate client process: The
> driver process can ensure that the loaned resources are revoked when
> the client is deemed "done", and exported ranges can be safely re-used
> elsewhere.
> 
> Refactor the revocation code out of vfio_pci_dma_buf_move() to a
> function common to move and the new feature request path.
> 
> Signed-off-by: Matt Evans <matt@ozlabs.org>
> ---
>  drivers/vfio/pci/vfio_pci_core.c   |   6 +-
>  drivers/vfio/pci/vfio_pci_dmabuf.c | 169 ++++++++++++++++++++++-------
>  drivers/vfio/pci/vfio_pci_priv.h   |  19 +++-
>  include/uapi/linux/vfio.h          |  20 ++++
>  4 files changed, 173 insertions(+), 41 deletions(-)
> 
> diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
> index 508a5eca910a..064906b25467 100644

[...]

>  
> +/* Set the DMABUF's revocation status (OK or temporarily/permanently revoked) */
> +static void vfio_pci_dma_buf_set_status(struct vfio_pci_dma_buf *priv,
> +					enum vfio_pci_dma_buf_status new_status)
> +{
> +	bool was_revoked;
> +
> +	lockdep_assert_held_write(&priv->vdev->memory_lock);
> +
> +	if (priv->status == VFIO_PCI_DMABUF_PERM_REVOKED ||
> +	    priv->status == new_status) {
> +		return;
> +	}
> +
> +	dma_resv_lock(priv->dmabuf->resv, NULL);
> +	was_revoked = (priv->status == VFIO_PCI_DMABUF_TEMP_REVOKED);
> +
> +	if (new_status != VFIO_PCI_DMABUF_OK) {
> +		priv->status = new_status; /* Temp or permanently revoked */
> +
> +		if (was_revoked) {
> +			/*
> +			 * TEMP_REVOKED is being upgraded to
> +			 * PERM_REVOKED.  The buffer is already gone,
> +			 * don't wait on it again.
> +			 */
> +			dma_resv_unlock(priv->dmabuf->resv);
> +			return;
> +		}
> +	}
> +
> +	dma_buf_invalidate_mappings(priv->dmabuf);

Nit: We seem to be calling this even if new_status == OK, while it works
as importers (like IOMMUFD and RDMA core) are immune to a double 
invalidate / revoke. I'm wondering if we could move this within the 
if (new_status != VFIO_PCI_DMABUF_OK) block? 

Since this is only needed to be called when we TEMP/PERM _REVOKE?

I'm just worried that this may overload the dma_buf_invalidate_mappings 
to be a state-change notification instead of a revoke / invalidate
notification.

> +	dma_resv_wait_timeout(priv->dmabuf->resv,
> +			      DMA_RESV_USAGE_BOOKKEEP, false,
> +			      MAX_SCHEDULE_TIMEOUT);
> +	dma_resv_unlock(priv->dmabuf->resv);
> +	if (new_status != VFIO_PCI_DMABUF_OK) {
> +		kref_put(&priv->kref, vfio_pci_dma_buf_done);
> +		wait_for_completion(&priv->comp);
> +		unmap_mapping_range(priv->dmabuf->file->f_mapping,
> +				    0, priv->size, 1);
> +		/*
> +		 * Re-arm the registered kref reference and the
> +		 * completion so the post-revoke state matches the
> +		 * post-creation state.	 An un-revoke followed by a
> +		 * new mapping needs the kref to be non-zero before
> +		 * kref_get(), and vfio_pci_dma_buf_cleanup()
> +		 * delegates its drain back through this revoke
> +		 * path on a possibly-already-revoked dma-buf.
> +		 */
> +		kref_init(&priv->kref);
> +		reinit_completion(&priv->comp);
> +	} else {
> +		dma_resv_lock(priv->dmabuf->resv, NULL);
> +		priv->status = VFIO_PCI_DMABUF_OK;
> +		dma_resv_unlock(priv->dmabuf->resv);
> +	}
> +}
> +

Otherwise, 
Reviewed-by: Pranjal Shrivastava <praan@google.com>

Thanks,
Praan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
