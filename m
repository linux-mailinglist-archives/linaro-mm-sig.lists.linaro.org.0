Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9291394B866
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Aug 2024 09:59:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5816C40F16
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Aug 2024 07:59:42 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 958613F07D
	for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Aug 2024 07:59:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=gT9XD+Dt;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3BA09614FC;
	Thu,  8 Aug 2024 07:59:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 619B1C32782;
	Thu,  8 Aug 2024 07:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723103959;
	bh=gWg/r/1SvXDtl8mHhSTr6bVgnFi9se9px6nxtby4afo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=gT9XD+DtkP2sOGMCsCMBMBcBc2edggYdxMyfaVr2HosFjVU+PB2Z7x/+FLZ90NvwW
	 ZMa1th8LDVyiZiR7PyoYOdB7F3swfuRUlwbCjKo/hW8e8YGlwaE87mV7bwAdleV8Qr
	 0+yYXVZzA12yJAmlgqMsMg2mmR1UBVI3bMlFLox8ruXSCymBXcYTh1w1h40Tz9Moz9
	 Pu5H2OmErH1JmiHa3PL9bLSKd6c4goEzlEsYtBtIqVhaQ8L6258Sv+gfNKo/SEFudW
	 g4SdnfX7HA4EHUG5JIjknF/SD7oNj365o30yZ6PONVw86hVIZZl7f+kHnDMfFyGgCO
	 hJVMJtMo1jDOw==
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>
In-Reply-To: <cover.1722512548.git.leon@kernel.org>
References: <cover.1722512548.git.leon@kernel.org>
Message-Id: <172310395487.1779734.12051360068889087637.b4-ty@kernel.org>
Date: Thu, 08 Aug 2024 10:59:14 +0300
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-37811
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 958613F07D
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.98 / 15.00];
	BAYES_HAM(-2.98)[99.92%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[18];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: I4BDBO4JJ5WHOLC6NZOEFV2JN6B4UFLG
X-Message-ID-Hash: I4BDBO4JJ5WHOLC6NZOEFV2JN6B4UFLG
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rdma@vger.kernel.org, Michael Margolin <mrgolin@amazon.com>, Mustafa Ismail <mustafa.ismail@intel.com>, netdev@vger.kernel.org, Saeed Mahameed <saeedm@nvidia.com>, Selvin Xavier <selvin.xavier@broadcom.com>, Sumit Semwal <sumit.semwal@linaro.org>, Tariq Toukan <tariqt@nvidia.com>, Tatyana Nikolova <tatyana.e.nikolova@intel.com>, Yishai Hadas <yishaih@nvidia.com>, Leon Romanovsky <leon@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH rdma-next 0/8] Introducing Multi-Path DMA Support for mlx5 RDMA Driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/I4BDBO4JJ5WHOLC6NZOEFV2JN6B4UFLG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


On Thu, 01 Aug 2024 15:05:09 +0300, Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> From Yishai,
> 
> Overview
> --------
> This patch series aims to enable multi-path DMA support, allowing an
> mlx5 RDMA device to issue DMA commands through multiple paths. This
> feature is critical for improving performance and reaching line rate
> in certain environments where issuing PCI transactions over one path
> may be significantly faster than over another. These differences can
> arise from various PCI generations in the system or the specific system
> topology.
> 
> [...]

Applied, thanks!

[2/8] RDMA/mlx5: Introduce the 'data direct' driver
      https://git.kernel.org/rdma/rdma/c/281658bd04e7b9
[3/8] RDMA/mlx5: Add the initialization flow to utilize the 'data direct' device
      https://git.kernel.org/rdma/rdma/c/302b01afc28b1e
[4/8] RDMA/umem: Add support for creating pinned DMABUF umem with a given dma device
      https://git.kernel.org/rdma/rdma/c/b047ecbd7672d2
[5/8] RDMA/umem: Introduce an option to revoke DMABUF umem
      https://git.kernel.org/rdma/rdma/c/bc9be75e01373c
[6/8] RDMA: Pass uverbs_attr_bundle as part of '.reg_user_mr_dmabuf' API
      https://git.kernel.org/rdma/rdma/c/83f44068da564d
[7/8] RDMA/mlx5: Add support for DMABUF MR registrations with Data-direct
      https://git.kernel.org/rdma/rdma/c/19ae08911f8be1
[8/8] RDMA/mlx5: Introduce GET_DATA_DIRECT_SYSFS_PATH ioctl
      https://git.kernel.org/rdma/rdma/c/d222b19c595f63

Best regards,
-- 
Leon Romanovsky <leon@kernel.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
