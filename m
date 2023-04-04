Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A01716D5655
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Apr 2023 04:00:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A09913F6B9
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Apr 2023 02:00:10 +0000 (UTC)
Received: from r3-17.sinamail.sina.com.cn (r3-17.sinamail.sina.com.cn [202.108.3.17])
	by lists.linaro.org (Postfix) with ESMTPS id 6A5FF3F983
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Apr 2023 01:59:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of hdanton@sina.com designates 202.108.3.17 as permitted sender) smtp.mailfrom=hdanton@sina.com;
	dmarc=none
X-SMAIL-HELO: localhost.localdomain
Received: from unknown (HELO localhost.localdomain)([114.249.59.75])
	by sina.com (172.16.97.27) with ESMTP
	id 642B848200007180; Tue, 4 Apr 2023 09:59:32 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 60670649283310
From: Hillf Danton <hdanton@sina.com>
To: Paul Cercueil <paul@crapouillou.net>
Date: Tue,  4 Apr 2023 09:59:44 +0800
Message-Id: <20230404015944.502-1-hdanton@sina.com>
In-Reply-To: <20230403154800.215924-2-paul@crapouillou.net>
References: <20230403154800.215924-1-paul@crapouillou.net>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6A5FF3F983
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_HI(-0.50)[202.108.3.17:from];
	R_SPF_ALLOW(-0.20)[+ip4:202.108.3.0/24];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_NA(0.00)[sina.com];
	FREEMAIL_CC(0.00)[kernel.org,metafoo.de,analog.com,gmail.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	R_DKIM_NA(0.00)[];
	FREEMAIL_ENVFROM(0.00)[sina.com];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:4808, ipnet:202.108.0.0/18, country:CN];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_FROM(0.00)[sina.com];
	NEURAL_SPAM(0.00)[0.123];
	MIME_TRACE(0.00)[0:+]
Message-ID-Hash: PM3N45UW6E7MQ2F6HLX77CBPK64HKFTU
X-Message-ID-Hash: PM3N45UW6E7MQ2F6HLX77CBPK64HKFTU
X-MailFrom: hdanton@sina.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Vinod Koul <vkoul@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>, =?UTF-8?q?Nuno=20S=C3=A1?= <noname.nuno@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 01/11] dmaengine: Add API function dmaengine_prep_slave_dma_array()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PM3N45UW6E7MQ2F6HLX77CBPK64HKFTU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 3 Apr 2023 17:47:50 +0200 Paul Cercueil <paul@crapouillou.net>
> This function can be used to initiate a scatter-gather DMA transfer
> where the DMA addresses and lengths are located inside arrays.
> 
> The major difference with dmaengine_prep_slave_sg() is that it supports
> specifying the lengths of each DMA transfer; as trying to override the
> length of the transfer with dmaengine_prep_slave_sg() is a very tedious
> process. The introduction of a new API function is also justified by the
> fact that scatterlists are on their way out.

Given sg's wayout and conceptually iovec and kvec (in include/linux/uio.h),
what you add should have been dma_vec to ease people making use of it.

	struct dma_vec {
		dma_addr_t	addr;
		size_t		len;
	};
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> 
> ---
> v3: New patch
> ---
>  include/linux/dmaengine.h | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/include/linux/dmaengine.h b/include/linux/dmaengine.h
> index c3656e590213..62efa28c009a 100644
> --- a/include/linux/dmaengine.h
> +++ b/include/linux/dmaengine.h
> @@ -912,6 +912,11 @@ struct dma_device {
>  	struct dma_async_tx_descriptor *(*device_prep_dma_interrupt)(
>  		struct dma_chan *chan, unsigned long flags);
>  
> +	struct dma_async_tx_descriptor *(*device_prep_slave_dma_array)(
> +		struct dma_chan *chan, dma_addr_t *addrs,
> +		size_t *lengths, size_t nb,
> +		enum dma_transfer_direction direction,
> +		unsigned long flags);

Then the callback looks like

	struct dma_async_tx_descriptor *(*device_prep_slave_vec)(
		struct dma_chan *chan,
		struct dma_vec *vec,
		int nvec,
		enum dma_transfer_direction direction,
		unsigned long flags);
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
