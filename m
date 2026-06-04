Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nC/2JOJIIWoVCgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Jun 2026 11:44:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2245163EA1E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Jun 2026 11:44:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=niblaG2N;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 02AE3404DB
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2026 09:44:01 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 26B5F3F7E5
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2026 09:43:51 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A716E601DF;
	Thu,  4 Jun 2026 09:43:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DA221F00893;
	Thu,  4 Jun 2026 09:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780566230;
	bh=Jr5p7L025l5AeOyYY0OiYrQNKQ4cBVm4lneQmDi1MpU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=niblaG2NeNcheETDbWROWRN2EC8gUaeqU+V2iVk/GSdhP8Z5E3h/Gqpa5xH9cOpQ1
	 v6hrbB7Jus7K1nshEC5tnaXEu/x8R0Ps4MUAXWUUwT0v92mDO1wuGIP+A09ewkQc3R
	 fewRlDncxRlqrzoTxEvDeXuP3fJVL9FX+trLyhY92vve5JphyKdwYusPG+7U/3wQ9z
	 2vJgIhyrAkFhIBA1MXydcQxfKlKZZc4vg+gsKTiHeslcVTAbWNka86r8xtj34X4OJd
	 JPg5dlYSt4RSFaXGFT+erozr6bJfWrCgR4+GV5uKZqspaOb3D1WgDUAG9cSmTV8MK3
	 Q5HIolmsKCCkw==
Date: Thu, 4 Jun 2026 12:43:44 +0300
From: Leon Romanovsky <leon@kernel.org>
To: David Hu <xuehaohu@google.com>
Message-ID: <20260604094344.GB245424@unreal>
References: <20260601200012.3872274-1-xuehaohu@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260601200012.3872274-1-xuehaohu@google.com>
X-Spamd-Bar: ---
Message-ID-Hash: D43HUG7WOLB46C77M2V2EOU4YQB5FCDC
X-Message-ID-Hash: D43HUG7WOLB46C77M2V2EOU4YQB5FCDC
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jason Gunthorpe <jgg@ziepe.ca>, Nicolin Chen <nicolinc@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, jmoroni@google.com, praan@google.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5] dma-buf: Fix silent overflow for phys vec to sgt
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D43HUG7WOLB46C77M2V2EOU4YQB5FCDC/>
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
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS(0.00)[m:xuehaohu@google.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:jgg@ziepe.ca,m:nicolinc@nvidia.com,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:alex@shazbot.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:iommu@lists.linux.dev,m:jmoroni@google.com,m:praan@google.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linux.dev:email,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2245163EA1E

On Mon, Jun 01, 2026 at 08:00:12PM +0000, David Hu wrote:
> In case MMIO size is bigger than 4G and peer2peer DMA goes
> through host bridge, we trigger a code path that assigns the
> total linked IOVA (which is greater than 4G) to mapped_len.
> 
> Previously, `mapped_len` was declared as 32-bit `unsigned int`.
> When accumulating `size_t` lengths, this leads to a silent wrap-around.
> This truncation causes truncated lengths to be passed to functions
> like `fill_sg_entry()`.
> 
> Fix this by changing `mapped_len` to `size_t` (64-bit). While
> at it, fix similar potential overflow issues in `calc_sg_nents`
> by using `size_t` for `nents` and checking against `UINT_MAX`
> and using `unsigned int` for the loop iterator in `fill_sg_entry`
> to match.
> 
> Fixes: 3aa31a8bb11e ("dma-buf: provide phys_vec to scatter-gather mapping routine")
> Cc: stable@vger.kernel.org
> Cc: iommu@lists.linux.dev
> Reviewed-by: Pranjal Shrivastava <praan@google.com>
> Signed-off-by: David Hu <xuehaohu@google.com>
> ---
> Changes in v5:
>  - Removed WARN_ON_ONCE from calc_sg_nents() to avoid log noise (Jason).
>  - Added explicit check for `!nents` in dma_buf_phys_vec_to_sgt() to
>    cleanly return -EINVAL on overflow (Jason).
> 
> Changes in v4:
>  - Added WARN_ON_ONCE() to the nents overflow check to prevent silent
>    failures (Claude Bot).
> 
> Changes in v3:
>  - Removed leftover sentence fragment from the commit message.
>  - Kept `nents = 0` initialization (previously stated as removed in the
>    v2 changelog) as it is strictly required for the `+=` accumulation
>    loop in `calc_sg_nents()`.
> 
> Changes in v2:
>  - Fixed 'IVOA' -> 'IOVA' typo and expanded commit message (Claude Bot).
>  - Added Reverse Xmas tree formatting (Pranjal).
>  - Folded in extra bounds checking for calc_sg_nents() (Pranjal).
>  - Folded in type consistency fix for fill_sg_entry() (Pranjal).
> 
>  drivers/dma-buf/dma-buf-mapping.c | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/dma-buf/dma-buf-mapping.c b/drivers/dma-buf/dma-buf-mapping.c
> index 794acff2546a..607b7998463d 100644
> --- a/drivers/dma-buf/dma-buf-mapping.c
> +++ b/drivers/dma-buf/dma-buf-mapping.c
> @@ -10,7 +10,7 @@ static struct scatterlist *fill_sg_entry(struct scatterlist *sgl, size_t length,
>  					 dma_addr_t addr)
>  {
>  	unsigned int len, nents;
> -	int i;
> +	unsigned int i;
>  
>  	nents = DIV_ROUND_UP(length, UINT_MAX);
>  	for (i = 0; i < nents; i++) {
> @@ -36,7 +36,7 @@ static unsigned int calc_sg_nents(struct dma_iova_state *state,
>  				  struct phys_vec *phys_vec, size_t nr_ranges,
>  				  size_t size)
>  {
> -	unsigned int nents = 0;
> +	size_t nents = 0;
>  	size_t i;
>  
>  	if (!state || !dma_use_iova(state)) {
> @@ -51,6 +51,9 @@ static unsigned int calc_sg_nents(struct dma_iova_state *state,
>  		nents = DIV_ROUND_UP(size, UINT_MAX);
>  	}
>  
> +	if (nents > UINT_MAX)

I would suggest to use check_add_overflow() while calculating nents
instead of this check.

> +		return 0;
> +
>  	return nents;
>  }
>  
> @@ -95,9 +98,10 @@ struct sg_table *dma_buf_phys_vec_to_sgt(struct dma_buf_attachment *attach,
>  					 size_t nr_ranges, size_t size,
>  					 enum dma_data_direction dir)
>  {
> -	unsigned int nents, mapped_len = 0;
>  	struct dma_buf_dma *dma;
>  	struct scatterlist *sgl;
> +	size_t mapped_len = 0;
> +	unsigned int nents;
>  	dma_addr_t addr;
>  	size_t i;
>  	int ret;
> @@ -133,6 +137,11 @@ struct sg_table *dma_buf_phys_vec_to_sgt(struct dma_buf_attachment *attach,
>  	}
>  
>  	nents = calc_sg_nents(dma->state, phys_vec, nr_ranges, size);
> +	if (!nents) {
> +		ret = -EINVAL;
> +		goto err_free_state;
> +	}

Technically, this hunk is not necessary, since sg_alloc_table() will
return -EINVAL when nents == 0. At least, that is the behavior I relied on.

Thanks

> +
>  	ret = sg_alloc_table(&dma->sgt, nents, GFP_KERNEL | __GFP_ZERO);
>  	if (ret)
>  		goto err_free_state;
> -- 
> 2.54.0.929.g9b7fa37559-goog
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
