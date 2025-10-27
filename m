Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BF3C0FEED
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Oct 2025 19:34:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E54F3F778
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Oct 2025 18:34:27 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id AEE2E3F778
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Oct 2025 18:34:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=hcOw3B6l;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 13EB344244;
	Mon, 27 Oct 2025 18:34:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32138C4CEF1;
	Mon, 27 Oct 2025 18:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761590053;
	bh=Sjtta4buWzcQQnNBIyYVFESl5qf6B112yZ9sf+V7RlE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hcOw3B6lf9oxjJTjftncCDpwlUt2yrNGODV2N6B9UbzbWoYuWLIIfAJG8fGn55XDq
	 XxUqYjtDesWP4JGFiTebJN74VNQk47kNcrSgL7ZZyJ/Sn7cSlbbA+DWgHdWwl2FqvO
	 9g1wV05Ym5OBWOMFiBvPtcJR93d4W0mNeQICsbkJWSfiMqtdDVdiV4jyxaCikFVZaH
	 3AxJFgdThBjGR/8FqQQ0rtNTgOvWDxvwbxQ4cG3ovGFkgePgBdOOz7bE7QPfcSMVtv
	 P9fYGH8FzU3VGwM2da/CvNJk33SuLt54GCoggM9zF/1TuZbaXMwOZWTVwGGFeYClrD
	 V42LSpx3BFjug==
Date: Mon, 27 Oct 2025 20:34:09 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20251027183409.GO12554@unreal>
References: <0-v1-64bed2430cdb+31b-iommufd_dmabuf_jgg@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0-v1-64bed2430cdb+31b-iommufd_dmabuf_jgg@nvidia.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AEE2E3F778
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[172.234.252.31:from,100.75.92.58:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: R5XGCSBWY3UOSKBMK3LJJXVQWKCTRRUZ
X-Message-ID-Hash: R5XGCSBWY3UOSKBMK3LJJXVQWKCTRRUZ
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Joerg Roedel <joro@8bytes.org>, Kevin Tian <kevin.tian@intel.com>, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, linux-media@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Will Deacon <will@kernel.org>, Nicolin Chen <nicolinc@nvidia.com>, patches@lists.linux.dev, Simona Vetter <simona.vetter@ffwll.ch>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Xu Yilun <yilun.xu@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/8] Initial DMABUF support for iommufd
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R5XGCSBWY3UOSKBMK3LJJXVQWKCTRRUZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Oct 27, 2025 at 02:30:59PM -0300, Jason Gunthorpe wrote:
> This series is the start of adding full DMABUF support to
> iommufd. Currently it is limited to only work with VFIO's DMABUF exporter.
> It sits on top of Leon's series to add a DMABUF exporter to VFIO:
> 
>   https://lore.kernel.org/all/cover.1760368250.git.leon@kernel.org/

<...>

> This is on github: https://github.com/jgunthorpe/linux/commits/iommufd_dmabuf
> 
> The branch has various modifications to Leon's series I've suggested.

I'm working on v6 these days.

Thanks
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
