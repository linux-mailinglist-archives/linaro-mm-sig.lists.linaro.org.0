Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wrIMI39hLGrPQAQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 21:43:59 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2241267C21E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 21:43:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=CD0voIzZ;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 338AC40A70
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 19:43:58 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	by lists.linaro.org (Postfix) with ESMTPS id 986EB3F8E8
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 19:43:46 +0000 (UTC)
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2bf2d865383so245ad.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 12:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1781293426; x=1781898226; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kmA9t8+wOUfRjPLThtQlARMdWkr4H2MHT+OyHJTFhU8=;
        b=CD0voIzZ7ncqXgCEG5oSpGuAbHDRuljevP5mQC47xYXd5ZaSbwN4/XpvSDWXaQ4jbe
         IP4+CLojFd742+Axj8AKeDce/loDTucjf8KkgaKpyjZNCtJM6XjHAE2fOrVdjAQrKLWW
         +wmew39xRLVY4tSEegWINT7vNDR0aG4yIydJV7aeox08P+paoMC70kvcdeLFasslqRqo
         LdjaOOZ2qyV+rt171pk7ICypU01hVWvRqZSqkoq+SgGCewgJ+NuUXUirV1WJeD2H2Ufv
         hDBvBxKhmXGJ3pErdAHfANRlWpG8OeuzrSDrTCizDKBdfhkNk6zCmXT4R1hp0nhDaiFz
         oa2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781293426; x=1781898226;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kmA9t8+wOUfRjPLThtQlARMdWkr4H2MHT+OyHJTFhU8=;
        b=IJ4jkuFq+iGGUJ6nislLTlBYzXaUhb1l4K8kI4KWPzJNo5ShC6Ul8ojgsOAS9TKrS6
         vo08AsB3TJBxQjkA9DBGcJkwfbiV2P/ccFYqcUriAvvTxdMws+hcLXhXRCFyc1311nBz
         CwdfsifZJyVyBQi5YcQdWCUHs/sFDDzQextLDTpSHa41NWs2ROgsJVw9GRBS7FXfEUdb
         4rLhLCfqb916ly5vZHxIc9xnsU1M8CNX/WIp6A4rvOVNWq0XozDjnVyD8ZQCF94n1fB+
         n2wuxBt0pUXUo1ruz93M9ACE6tL9P3o/KoMElJ2WuQrF6v8Cv2PY91qoH/TLgelXD2R8
         yHRw==
X-Forwarded-Encrypted: i=1; AFNElJ+Ft2PMx2qN0ExwlJtpwJlswOMaVU0VIWXtk25asElyvXwx4yEeaSvuylnaTEWreNQHNeUyaBJXP62wMqrL@lists.linaro.org
X-Gm-Message-State: AOJu0YxYiNc//oD/jJ7KidroGjLS+dLICGkt3ew5vjPBOAnCzm60a97k
	U3uQr3MUhJkMRfRktfikubGgCOA+prX9sH4z6SEenZrr+EMD2vFNiDp36Gm9bgxEIg==
X-Gm-Gg: Acq92OH/78XtZshwB1NLnH5c6kGA/IlNkV2MFuQVbie965j0vhQp76cazKNJRYuoasG
	tWWdBPrrbY5VwhN3bjw7Aymuu3SLVwApxBAULI4xS/ULstDiTbd/RQc0hyFfiwQFtzcATNzfKi7
	lQLlN9WpLablDwfQl3Yjvofc/oiIn5Ssd4H1lfZ/KDK7kixGI0gxgxVcI3xk2qXg4MFgFvsQQeQ
	89fI0MxiSn71g4YQVs3lQxXp31vvqI/+VM3veaX1sG65D4PvMu/quTw7cCE+vhZWNbh66hFjVzG
	Omwqdhhs5b4fZRvQ8hnzdWfLvMe52euER4ios5ZwssagXVkXVHQ6Cg3IGdSofQbbXCNG7lXnNbt
	vo74RjL1UmNyCIXhRirH/x0Ty5IRfshQeoNAhNRwvI0CFlKd8crDlC83ft2dQbr/oQtiUaD8++u
	5sBi+p/h+inxIQMHbuERX93ywPrpfCJB5yP6Yx1H5CVpjqTKBXFu1eu0okZEBp
X-Received: by 2002:a17:903:37c8:b0:2b7:b03d:9dce with SMTP id d9443c01a7336-2c6650d52a7mr471235ad.18.1781293425288;
        Fri, 12 Jun 2026 12:43:45 -0700 (PDT)
Received: from google.com (199.255.142.34.bc.googleusercontent.com. [34.142.255.199])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c86651aef27sm2802598a12.30.2026.06.12.12.43.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 12:43:44 -0700 (PDT)
Date: Fri, 12 Jun 2026 19:43:36 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Matt Evans <matt@ozlabs.org>
Message-ID: <aixhaJoPQrNjhLwD@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-5-matt@ozlabs.org>
 <aiviYEi17tewEQg0@google.com>
 <42cf4ad9-f094-4f94-88e6-6d2cb6eb6437@ozlabs.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <42cf4ad9-f094-4f94-88e6-6d2cb6eb6437@ozlabs.org>
X-Spamd-Bar: ---
Message-ID-Hash: GN2UAAIV7BKX7WL6NWMWZ4GRQH25TPNJ
X-Message-ID-Hash: GN2UAAIV7BKX7WL6NWMWZ4GRQH25TPNJ
X-MailFrom: praan@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 4/9] vfio/pci: Convert BAR mmap() to use a DMABUF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GN2UAAIV7BKX7WL6NWMWZ4GRQH25TPNJ/>
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:matt@ozlabs.org,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,ozlabs.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2241267C21E

On Fri, Jun 12, 2026 at 04:22:12PM +0100, Matt Evans wrote:
> Hi Pranjal,
> 
> On 12/06/2026 11:41, Pranjal Shrivastava wrote:
> > On Wed, Jun 10, 2026 at 04:43:18PM +0100, Matt Evans wrote:
> >> Convert the VFIO device fd fops->mmap to create a DMABUF representing
> >> the BAR mapping, and make the VMA fault handler look up PFNs from the
> >> corresponding DMABUF.  This supports future code mmap()ing BAR
> >> DMABUFs, and iommufd work to support Type1 P2P.
> >>
> >> First, vfio_pci_core_mmap() uses the new
> >> vfio_pci_core_mmap_prep_dmabuf() helper to export a DMABUF
> >> representing a single BAR range.  Then, the vfio_pci_mmap_huge_fault()
> >> callback is updated to understand revoked buffers, and uses the new
> >> vfio_pci_dma_buf_find_pfn() helper to determine the PFN for a given
> >> fault address.
> >>
> >> Now that the VFIO DMABUFs can be mmap()ed, vfio_pci_dma_buf_move()
> >> zaps PTEs (used on the revocation and cleanup paths).
> >>
> >> CONFIG_VFIO_PCI_CORE now unconditionally depends on
> >> CONFIG_DMA_SHARED_BUFFER and CONFIG_PCI_P2PDMA_CORE.  The
> >> CONFIG_VFIO_PCI_DMABUF feature conditionally includes support for
> >> VFIO_DEVICE_FEATURE_DMA_BUF, depending on the availability of
> >> CONFIG_PCI_P2PDMA.
> >>
> >> Signed-off-by: Matt Evans <matt@ozlabs.org>
> >> ---
> >>  drivers/vfio/pci/Kconfig           |  5 +-
> >>  drivers/vfio/pci/Makefile          |  3 +-
> >>  drivers/vfio/pci/vfio_pci_core.c   | 75 +++++++++++++++++++-----------
> >>  drivers/vfio/pci/vfio_pci_dmabuf.c | 12 +++++
> >>  drivers/vfio/pci/vfio_pci_priv.h   | 11 +----
> >>  5 files changed, 67 insertions(+), 39 deletions(-)

Hi Matt,

[...]  
> >>  int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
> >>  				   struct vm_area_struct *vma,
> >> @@ -532,6 +538,10 @@ void vfio_pci_dma_buf_move(struct vfio_pci_core_device *vdev, bool revoked)
> >>  	struct vfio_pci_dma_buf *tmp;
> >>  
> >>  	lockdep_assert_held_write(&vdev->memory_lock);
> >> +	/*
> >> +	 * Holding memory_lock ensures a racing VMA fault observes
> >> +	 * priv->revoked properly.
> >> +	 */
> > 
> > Nit: This comment should appear before the lockdep_assert_held_write()
> > Also, it is slightly verbose.. (not against it though).
> 
> Right, I'll move it.  Agree it's wordy but if anyone changes that I want
> them to "think faulthandler".
> 

That's fair I guess.

> >>  	list_for_each_entry_safe(priv, tmp, &vdev->dmabufs, dmabufs_elm) {
> >>  		if (!get_file_active(&priv->dmabuf->file))
> >> @@ -549,6 +559,8 @@ void vfio_pci_dma_buf_move(struct vfio_pci_core_device *vdev, bool revoked)
> >>  			if (revoked) {
> >>  				kref_put(&priv->kref, vfio_pci_dma_buf_done);
> >>  				wait_for_completion(&priv->comp);
> >> +				unmap_mapping_range(priv->dmabuf->file->f_mapping,
> >> +						    0, priv->size, 1);
> > 
> > Have we run this series with lockdep enabled?
> > I guess it'd be nice to check with lockdep once..
> 
> I've (generally) always run testing of this series with lockdep.  (No
> issues (anymore).)

That sounds good! Thanks for confirming! :)

Praan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
