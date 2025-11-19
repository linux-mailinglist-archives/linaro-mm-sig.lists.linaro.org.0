Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AFAC6F0F5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 14:54:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B4A153F826
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 13:54:29 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id F40193F788
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 13:54:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=lOc+pw0S;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4E82840251;
	Wed, 19 Nov 2025 13:54:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4089C2BCB6;
	Wed, 19 Nov 2025 13:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763560452;
	bh=khDyF27Ua+YvAG563h+Mn5TVNwmjUpzwzSeY1s3ZrlM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lOc+pw0SropUFqAbVYzMoWEHW1jJDTrt97jUDXz56yN0le/B+KOyXK6xnERbWqNdy
	 LBjMT4gf6zJ5xLQ64pQkqww1I8qSD+7y/IDRApuyDvzXjq9BFKkEOeCi8bxA/oo1gH
	 70+OJhKd6XWXCZEn57dkcHhMJy+/OipA/ho8GrlgsWfIHeiMPKdy6djUHim0G3aLYZ
	 Smu4HN5s73AeSqAjTtbTpkSpzB4YO7/XVcv9jfbhTGeKtpPOUqXybhXbJn04qeXgZf
	 DJ8SJ2zHpC/cN0o1khK2H92TSVtXxhG0/mnVCa20BOeZHJlnQ/YkrpnwOm6k6yFofi
	 vqwHi5UdKLC/g==
Date: Wed, 19 Nov 2025 15:54:07 +0200
From: Leon Romanovsky <leon@kernel.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
Message-ID: <20251119135407.GG18335@unreal>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-9-fd9aa5df478f@nvidia.com>
 <BN9PR11MB52767F78317AF3AB94A5B7D38CD6A@BN9PR11MB5276.namprd11.prod.outlook.com>
 <aRzUpmUkDy-qN5c1@kbusch-mbp>
 <BN9PR11MB52768D54FF42AB11C49202C98CD7A@BN9PR11MB5276.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN9PR11MB52768D54FF42AB11C49202C98CD7A@BN9PR11MB5276.namprd11.prod.outlook.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.49 / 15.00];
	BAYES_HAM(-2.99)[99.97%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F40193F788
X-Spamd-Bar: ---
Message-ID-Hash: YHX3BUHBWG6GM6MZWG7V7I77SV4FYD7P
X-Message-ID-Hash: YHX3BUHBWG6GM6MZWG7V7I77SV4FYD7P
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Keith Busch <kbusch@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>, "linux-mm@kvack.org"
  <linux-mm@kvack.org>, "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>, Alex Mastro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 09/11] vfio/pci: Enable peer-to-peer DMA transactions by default
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YHX3BUHBWG6GM6MZWG7V7I77SV4FYD7P/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Nov 19, 2025 at 12:02:02AM +0000, Tian, Kevin wrote:
> > From: Keith Busch <kbusch@kernel.org>
> > Sent: Wednesday, November 19, 2025 4:19 AM
> > 
> > On Tue, Nov 18, 2025 at 07:18:36AM +0000, Tian, Kevin wrote:
> > > > From: Leon Romanovsky <leon@kernel.org>
> > > > Sent: Tuesday, November 11, 2025 5:58 PM
> > > >
> > > > From: Leon Romanovsky <leonro@nvidia.com>
> > >
> > > not required with only your own s-o-b
> > 
> > That's automatically appended when the sender and signer don't match.
> > It's not uncommon for developers to send from a kernel.org email but
> > sign off with a corporate account, or the other way around.
> 
> Good to know.

Yes, in addition, I used to separate between code authorship and my
open-source activity. Code belongs to my employer and this is why corporate
address is used as an author, but all emails and communications are coming from
my kernel.org account.

Thanks
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
