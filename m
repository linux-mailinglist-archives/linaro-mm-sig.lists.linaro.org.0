Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 09678C8863D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Nov 2025 08:18:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DC6E03F8EE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Nov 2025 07:18:32 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 6310E3F69B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 07:18:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=CEIH1fQ+;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C42AD60137;
	Wed, 26 Nov 2025 07:18:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F3AFC113D0;
	Wed, 26 Nov 2025 07:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764141495;
	bh=J54BQzE98MnLEmIufEMpAJUCEWke/kqnYm1g3RjsywA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CEIH1fQ+ckjTqqcxiqglnl5IKzNcGbjRaLe4CTHvzENXvhzB85inuGiTMqk/X69M8
	 aHOb5kqCN12pqzddIJGfE0O0ujFznYma5w7QqAMwEPAjgqNMu8UcRn/Ketobwd48q0
	 8uqN2OoJv+thDRULWMny0kS504gyhFki8qeXoP1aXRRiU9Dz6ro9XTKIXnYZ9WL463
	 D9JeIdZT2cMFWsi7DYdUUN2OLkN2tsz1Dm5+6h2sCwrP7U3+KmjrdqiDUzdW+Q3n0b
	 2eQWFuoNPrs1jWBpt/ipKqhBABnIZ/E30cx+3yGshUz6/bV7qme5G227l42d0prK5l
	 XHBESUpn/IPEw==
Date: Wed, 26 Nov 2025 09:18:10 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Alex Mastro <amastro@fb.com>
Message-ID: <20251126071810.GF12483@unreal>
References: <20251125-dma-buf-overflow-v1-1-b70ea1e6c4ba@fb.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251125-dma-buf-overflow-v1-1-b70ea1e6c4ba@fb.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[fb.com:email,tor.source.kernel.org:rdns,tor.source.kernel.org:helo,unreal:mid];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6310E3F69B
X-Spamd-Bar: ---
Message-ID-Hash: OOJ3IKDQVMTTU3LDJ2LZWEDWZ6GN4SYT
X-Message-ID-Hash: OOJ3IKDQVMTTU3LDJ2LZWEDWZ6GN4SYT
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Williamson <alex@shazbot.org>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Nicolin Chen <nicolinc@nvidia.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, kvm@vger.kernel.org, Ankit Agrawal <ankita@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: fix integer overflow in fill_sg_entry() for buffers >= 8GiB
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OOJ3IKDQVMTTU3LDJ2LZWEDWZ6GN4SYT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Nov 25, 2025 at 05:11:18PM -0800, Alex Mastro wrote:
> fill_sg_entry() splits large DMA buffers into multiple scatter-gather
> entries, each holding up to UINT_MAX bytes. When calculating the DMA
> address for entries beyond the second one, the expression (i * UINT_MAX)
> causes integer overflow due to 32-bit arithmetic.
> 
> This manifests when the input arg length >= 8 GiB results in looping for
> i >= 2.
> 
> Fix by casting i to dma_addr_t before multiplication.
> 
> Fixes: 3aa31a8bb11e ("dma-buf: provide phys_vec to scatter-gather mapping routine")
> Signed-off-by: Alex Mastro <amastro@fb.com>
> ---
> More color about how I discovered this in [1] for the commit at [2]:
> 
> [1] https://lore.kernel.org/all/aSZHO6otK0Heh+Qj@devgpu015.cco6.facebook.com
> [2] https://lore.kernel.org/all/20251120-dmabuf-vfio-v9-6-d7f71607f371@nvidia.com
> ---
>  drivers/dma-buf/dma-buf-mapping.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Thanks,
Reviewed-by: Leon Romanovsky <leon@kernel.org>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
