Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB59A11DF8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jan 2025 10:32:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA73344A44
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jan 2025 09:32:45 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
	by lists.linaro.org (Postfix) with ESMTPS id 7E5FB44797
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Jan 2025 09:32:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: by verein.lst.de (Postfix, from userid 2407)
	id ACB1968B05; Wed, 15 Jan 2025 10:32:34 +0100 (CET)
Date: Wed, 15 Jan 2025 10:32:34 +0100
From: Christoph Hellwig <hch@lst.de>
To: Jason Gunthorpe <jgg@nvidia.com>, Xu Yilun <yilun.xu@linux.intel.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Christoph Hellwig <hch@lst.de>, Leon Romanovsky <leonro@nvidia.com>,
	kvm@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
	sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com,
	alex.williamson@redhat.com, vivek.kasireddy@intel.com,
	dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com,
	linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org,
	lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org,
	baolu.lu@linux.intel.com, zhenzhong.duan@intel.com,
	tao1.su@intel.com
Message-ID: <20250115093234.GB6805@lst.de>
References: <20250108162227.GT5556@nvidia.com> <Z37HpvHAfB0g9OQ-@phenom.ffwll.local> <Z37QaIDUgiygLh74@yilunxu-OptiPlex-7050> <58e97916-e6fd-41ef-84b4-bbf53ed0e8e4@amd.com> <Z38FCOPE7WPprYhx@yilunxu-OptiPlex-7050> <Z4F2X7Fu-5lprLrk@phenom.ffwll.local> <20250110203838.GL5556@nvidia.com> <Z4Z4NKqVG2Vbv98Q@phenom.ffwll.local> <20250114173103.GE5556@nvidia.com> <Z4d4AaLGrhRa5KLJ@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z4d4AaLGrhRa5KLJ@phenom.ffwll.local>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7E5FB44797
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.09 / 15.00];
	BAYES_HAM(-2.99)[99.97%];
	ONCE_RECEIVED(0.20)[];
	R_SPF_ALLOW(-0.20)[+ip4:213.95.11.211];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:12337, ipnet:213.95.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_SPAM(0.00)[0.741];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_NA(0.00)[];
	DMARC_NA(0.00)[lst.de];
	RBL_SENDERSCORE_REPUT_8(0.00)[213.95.11.211:from]
Message-ID-Hash: AQW2CDZEDAWKQFQZ3IM2C7AKYO65IMOV
X-Message-ID-Hash: AQW2CDZEDAWKQFQZ3IM2C7AKYO65IMOV
X-MailFrom: hch@lst.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AQW2CDZEDAWKQFQZ3IM2C7AKYO65IMOV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Jan 15, 2025 at 09:55:29AM +0100, Simona Vetter wrote:
> I think for 90% of exporters pfn would fit, but there's some really funny
> ones where you cannot get a cpu pfn by design. So we need to keep the
> pfn-less interfaces around. But ideally for the pfn-capable exporters we'd
> have helpers/common code that just implements all the other interfaces.

There is no way to have dma address without a PFN in Linux right now.
How would you generate them?  That implies you have an IOMMU that can
generate IOVAs for something that doesn't have a physical address at
all.

Or do you mean some that don't have pages associated with them, and
thus have pfn_valid fail on them?  They still have a PFN, just not
one that is valid to use in most of the Linux MM.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
