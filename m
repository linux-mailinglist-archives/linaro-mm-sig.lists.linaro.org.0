Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FE8A132A1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Jan 2025 06:34:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5630E4415A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Jan 2025 05:33:59 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
	by lists.linaro.org (Postfix) with ESMTPS id 9434C44146
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Jan 2025 05:33:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: by verein.lst.de (Postfix, from userid 2407)
	id 5BA3E68BEB; Thu, 16 Jan 2025 06:33:48 +0100 (CET)
Date: Thu, 16 Jan 2025 06:33:48 +0100
From: Christoph Hellwig <hch@lst.de>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20250116053348.GA24046@lst.de>
References: <Z37QaIDUgiygLh74@yilunxu-OptiPlex-7050> <58e97916-e6fd-41ef-84b4-bbf53ed0e8e4@amd.com> <Z38FCOPE7WPprYhx@yilunxu-OptiPlex-7050> <Z4F2X7Fu-5lprLrk@phenom.ffwll.local> <20250110203838.GL5556@nvidia.com> <Z4Z4NKqVG2Vbv98Q@phenom.ffwll.local> <20250114173103.GE5556@nvidia.com> <Z4d4AaLGrhRa5KLJ@phenom.ffwll.local> <20250115093234.GB6805@lst.de> <20250115133419.GN5556@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250115133419.GN5556@nvidia.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9434C44146
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.09 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.99)[99.96%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[213.95.11.211:from];
	ONCE_RECEIVED(0.20)[];
	R_SPF_ALLOW(-0.20)[+ip4:213.95.11.211];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:12337, ipnet:213.95.0.0/16, country:DE];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.800];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[lst.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: 5OMJPPHW2TEWL5YQUEO242NVECR2Q5NB
X-Message-ID-Hash: 5OMJPPHW2TEWL5YQUEO242NVECR2Q5NB
X-MailFrom: hch@lst.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@lst.de>, Xu Yilun <yilun.xu@linux.intel.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Leon Romanovsky <leonro@nvidia.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5OMJPPHW2TEWL5YQUEO242NVECR2Q5NB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Jan 15, 2025 at 09:34:19AM -0400, Jason Gunthorpe wrote:
> > Or do you mean some that don't have pages associated with them, and
> > thus have pfn_valid fail on them?  They still have a PFN, just not
> > one that is valid to use in most of the Linux MM.
> 
> He is talking about private interconnect hidden inside clusters of
> devices.
> 
> Ie the system may have many GPUs and those GPUs have their own private
> interconnect between them. It is not PCI, and packets don't transit
> through the CPU SOC at all, so the IOMMU is not involved.
> 
> DMA can happen on that private interconnect, but from a Linux
> perspective it is not DMA API DMA, and the addresses used to describe
> it are not part of the CPU address space. The initiating device will
> have a way to choose which path the DMA goes through when setting up
> the DMA.

So how is this in any way relevant to dma_buf which operates on
a dma_addr_t right now and thus by definition can't be used for
these?

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
