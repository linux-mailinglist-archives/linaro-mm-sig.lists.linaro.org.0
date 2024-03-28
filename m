Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E8F88F7CE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Mar 2024 07:23:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4406B43CBA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Mar 2024 06:23:35 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 23C4443CBA
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Mar 2024 06:23:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=UaMOCYL2;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of vkoul@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=vkoul@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B13C860AFF;
	Thu, 28 Mar 2024 06:23:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48FCCC433C7;
	Thu, 28 Mar 2024 06:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711607012;
	bh=XxzwleAMl7kfTQ9nHbAuAtK+mGXYz1Wmw7p/PQbLjFk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UaMOCYL2JBDXma+19hgTY26MKMIj3SGutMo27LVkiQTdoRJZCdyPZe9k2FfGyrbXB
	 JjuRTcQIbA70r4j5bNrEHLf2awD4kLSn0hA6tKtMZSmcCsgDdUS/LUom+HDg36W3mA
	 qGKOgcsv9S65vTROxRDbsGAo3z/AK9UxKHNkQibOremkn+PMOOVuiW2v7jddpMs8jZ
	 YL4cB65gz2SJ3/SfoAd6+OolbK4oXpDnVGmCIUrztpkbAX/HaNFncaa05m8/IRXEwL
	 nhtTGTgNj5wxbRBcjrfJM5B3yNhWDui6NEl+WMYVBrthGsYsX+GNQgEeMLGN4dvBg3
	 Ire/MFkuR/2wA==
Date: Thu, 28 Mar 2024 11:53:16 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <ZgUM1LFEWs3lwoAU@matsya>
References: <20240310124836.31863-1-paul@crapouillou.net>
 <20240310124836.31863-2-paul@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240310124836.31863-2-paul@crapouillou.net>
X-Rspamd-Queue-Id: 23C4443CBA
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
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
Message-ID-Hash: BGHUSZKZ5BV46QX3C2AQ3CMICZ44JNMD
X-Message-ID-Hash: BGHUSZKZ5BV46QX3C2AQ3CMICZ44JNMD
X-MailFrom: vkoul@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Cameron <jic23@kernel.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Nuno Sa <nuno.sa@analog.com>, Michael Hennerich <michael.hennerich@analog.com>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 1/6] dmaengine: Add API function dmaengine_prep_peripheral_dma_vec()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BGHUSZKZ5BV46QX3C2AQ3CMICZ44JNMD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 10-03-24, 13:48, Paul Cercueil wrote:
> This function can be used to initiate a scatter-gather DMA transfer,
> where the address and size of each segment is located in one entry of
> the dma_vec array.
> 
> The major difference with dmaengine_prep_slave_sg() is that it supports
> specifying the lengths of each DMA transfer; as trying to override the
> length of the transfer with dmaengine_prep_slave_sg() is a very tedious
> process. The introduction of a new API function is also justified by the
> fact that scatterlists are on their way out.
> 
> Note that dmaengine_prep_interleaved_dma() is not helpful either in that
> case, as it assumes that the address of each segment will be higher than
> the one of the previous segment, which we just cannot guarantee in case
> of a scatter-gather transfer.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> Signed-off-by: Nuno Sa <nuno.sa@analog.com>
> 
> ---
> v3: New patch
> 
> v5: Replace with function dmaengine_prep_slave_dma_vec(), and struct
>     'dma_vec'.
>     Note that at some point we will need to support cyclic transfers
>     using dmaengine_prep_slave_dma_vec(). Maybe with a new "flags"
>     parameter to the function?
> 
> v7:
>   - Renamed *device_prep_slave_dma_vec() -> device_prep_peripheral_dma_vec();
>   - Added a new flag parameter to the function as agreed between Paul
>     and Vinod. I renamed the first parameter to prep_flags as it's supposed to
>     be used (I think) with enum dma_ctrl_flags. I'm not really sure how that API
>     can grow but I was thinking in just having a bool cyclic parameter (as the
>     first intention of the flags is to support cyclic transfers) but ended up
>     "respecting" the previously agreed approach.
> ---
>  include/linux/dmaengine.h | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/include/linux/dmaengine.h b/include/linux/dmaengine.h
> index 752dbde4cec1..856df8cd9a4e 100644
> --- a/include/linux/dmaengine.h
> +++ b/include/linux/dmaengine.h
> @@ -160,6 +160,16 @@ struct dma_interleaved_template {
>  	struct data_chunk sgl[];
>  };
>  
> +/**
> + * struct dma_vec - DMA vector
> + * @addr: Bus address of the start of the vector
> + * @len: Length in bytes of the DMA vector
> + */
> +struct dma_vec {
> +	dma_addr_t addr;
> +	size_t len;
> +};
> +
>  /**
>   * enum dma_ctrl_flags - DMA flags to augment operation preparation,
>   *  control completion, and communicate status.
> @@ -910,6 +920,10 @@ struct dma_device {
>  	struct dma_async_tx_descriptor *(*device_prep_dma_interrupt)(
>  		struct dma_chan *chan, unsigned long flags);
>  
> +	struct dma_async_tx_descriptor *(*device_prep_peripheral_dma_vec)(
> +		struct dma_chan *chan, const struct dma_vec *vecs,
> +		size_t nents, enum dma_transfer_direction direction,
> +		unsigned long prep_flags, unsigned long flags);
>  	struct dma_async_tx_descriptor *(*device_prep_slave_sg)(
>  		struct dma_chan *chan, struct scatterlist *sgl,
>  		unsigned int sg_len, enum dma_transfer_direction direction,
> @@ -973,6 +987,19 @@ static inline struct dma_async_tx_descriptor *dmaengine_prep_slave_single(
>  						  dir, flags, NULL);
>  }
>  
> +static inline struct dma_async_tx_descriptor *dmaengine_prep_peripheral_dma_vec(
> +	struct dma_chan *chan, const struct dma_vec *vecs, size_t nents,
> +	enum dma_transfer_direction dir, unsigned long prep_flags,
> +	unsigned long flags)
> +{
> +	if (!chan || !chan->device || !chan->device->device_prep_peripheral_dma_vec)
> +		return NULL;
> +
> +	return chan->device->device_prep_peripheral_dma_vec(chan, vecs, nents,
> +							    dir, prep_flags,
> +							    flags);
> +}

API looks good to me, thanks
Few nits though:
- Can we add kernel-doc for this new API please
- Also update the documentation adding this new api
- Lastly, we seem to have two flags, I know you have added a comment but
  I dont seem to recall the discussion (looked at old threads for clue
  as well), can you please remind me why we need both? And in your case,
  what is the intended usage of these flags, i would prefer single
  clean one...

-- 
~Vinod
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
