Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EF7B14A48
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Jul 2025 10:40:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 04C5C4560A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Jul 2025 08:40:13 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 7D53F44311
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Jul 2025 08:40:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=M5F0RFaA;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id F0ABD601EC;
	Tue, 29 Jul 2025 08:39:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8928C4CEEF;
	Tue, 29 Jul 2025 08:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753778399;
	bh=OwIYfsDVT+NrTf9pe9SqTHnHnwWkQ93t/xB2WubT90E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M5F0RFaAnIV1InpC5Z2ni72wX3Gt2VxXzbhksr3xOJ1TeTRCWQ0u8eCBRDawTegSU
	 9WeyNAVLruaM4v0e5fxxVTwWe3R75xM9uuxh2YRgjFTScwkMi8pG+5t6Mg20IKrxGB
	 NGcLT9dJY0mpUgWIP5dXln1PJIrr26Ba2JLQhTz2o4sB6ZuU1tih414TMIIriKtVb8
	 oEvkOHh7OxqhOGrJbvZiu70ODXucDPABU9psK1pm3OKH5psLmA6+IVsT7RRXq5S+Ju
	 8oo9d4NqyKlt/4eREWPutcfL1Jy1y7Tg38lMaB21tJigLyzQrhrUCKCq9BrO4s6YFz
	 3z5QK7qlk7Drw==
Date: Tue, 29 Jul 2025 11:39:54 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Alex Williamson <alex.williamson@redhat.com>
Message-ID: <20250729083954.GE402218@unreal>
References: <cover.1753274085.git.leonro@nvidia.com>
 <19f71a0f4d1a5db8c712cb4d094ccf2f10dc22c5.1753274085.git.leonro@nvidia.com>
 <20250728145553.53e94d49.alex.williamson@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250728145553.53e94d49.alex.williamson@redhat.com>
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7D53F44311
X-Spamd-Bar: ---
Message-ID-Hash: HUCQV2TZWIYROZUXU3RG2CKFV6NKNIZ7
X-Message-ID-Hash: HUCQV2TZWIYROZUXU3RG2CKFV6NKNIZ7
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Vivek Kasireddy <vivek.kasireddy@intel.com>, Christoph Hellwig <hch@lst.de>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 09/10] vfio/pci: Share the core device pointer while invoking feature functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HUCQV2TZWIYROZUXU3RG2CKFV6NKNIZ7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jul 28, 2025 at 02:55:53PM -0600, Alex Williamson wrote:
> On Wed, 23 Jul 2025 16:00:10 +0300
> Leon Romanovsky <leon@kernel.org> wrote:
> 
> > From: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > 
> > There is no need to share the main device pointer (struct vfio_device *)
> > with all the feature functions as they only need the core device
> > pointer. Therefore, extract the core device pointer once in the
> > caller (vfio_pci_core_ioctl_feature) and share it instead.
> > 
> > Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > ---
> >  drivers/vfio/pci/vfio_pci_core.c | 30 +++++++++++++-----------------
> >  1 file changed, 13 insertions(+), 17 deletions(-)

<...>

> >  static int vfio_pci_core_pm_entry_with_wakeup(
> > -	struct vfio_device *device, u32 flags,
> > +	struct vfio_pci_core_device *vdev, u32 flags,
> >  	struct vfio_device_low_power_entry_with_wakeup __user *arg,
> >  	size_t argsz)
> 
> I'm tempted to fix the line wrapping here, but I think this patch
> stands on its own.  Even if it's rather trivial, it makes sense to
> consolidate and standardize on the vfio_pci_core_device getting passed
> around within vfio_pci_core.c.  Any reason not to split this off?

No problem, I will send it separately after merge window ends.

Thanks

> Thanks,
> 
> Alex
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
