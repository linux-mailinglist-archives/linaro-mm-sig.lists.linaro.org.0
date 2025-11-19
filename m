Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A37C6EE72
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 14:31:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3181A3F7A5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 13:31:06 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id A5B623F7A5
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 13:30:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=CJmkRcmE;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 26D4560123;
	Wed, 19 Nov 2025 13:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B920DC19425;
	Wed, 19 Nov 2025 13:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763559005;
	bh=T77xD4ouQwJfrrfoYJul3nkxhRgI6f45RqfVLeuXla0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CJmkRcmExDwPt0NuCANFi896HuCFEIGU3LYAoLvhl8S3uU9mfBypEzVSr32GsqZy0
	 9/i6r19RZmZ62wtupphqnAO8hbyri/wPrlx+2egmQAVVAfXzAjAQg9//PYFGan5bni
	 pk0qcg+vRudcykukDUhBBIgqjiqJBtVsRDmSGRqW0pz5Gglk6LGSk41HQnN10/vOll
	 y837YDb/TkXoHX8I8N3jo+MHBgeNPV8Cz170FjUyldCJaY8TGh2bFXWSLULpw+FO6d
	 eb4+355odBMqKRZiIPwYiwF+iwiQXKJMUxv42Leegovr8lnDq2Mv1Ats+WCCrLVsSJ
	 k/AyOs5u/QaIA==
Date: Wed, 19 Nov 2025 15:30:00 +0200
From: Leon Romanovsky <leon@kernel.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
Message-ID: <20251119133000.GB18335@unreal>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-6-fd9aa5df478f@nvidia.com>
 <BN9PR11MB5276BC3C0BDA85F0259A35058CD7A@BN9PR11MB5276.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN9PR11MB5276BC3C0BDA85F0259A35058CD7A@BN9PR11MB5276.namprd11.prod.outlook.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.48 / 15.00];
	BAYES_HAM(-2.98)[99.93%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A5B623F7A5
X-Spamd-Bar: ---
Message-ID-Hash: T36JBSYUNV5GW2KBIGTCPFBBCOGGKSU4
X-Message-ID-Hash: T36JBSYUNV5GW2KBIGTCPFBBCOGGKSU4
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>, "linux-mm@kvack.org" <linux-mm@kvack.org>, "linux-doc
 @vger.kernel.org" <linux-doc@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>, Alex Mastro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 06/11] dma-buf: provide phys_vec to scatter-gather mapping routine
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T36JBSYUNV5GW2KBIGTCPFBBCOGGKSU4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Nov 19, 2025 at 05:54:55AM +0000, Tian, Kevin wrote:
> > From: Leon Romanovsky <leon@kernel.org>
> > Sent: Tuesday, November 11, 2025 5:58 PM
> > +
> > +	if (dma->state && dma_use_iova(dma->state)) {
> > +		WARN_ON_ONCE(mapped_len != size);
> 
> then "goto err_unmap_dma".

It never should happen, there is no need to provide error unwind to
something that you won't get.

> 
> Reviewed-by: Kevin Tian <kevin.tian@intel.com>

Thanks
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
