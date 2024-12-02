Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EBF9DFB07
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Dec 2024 08:21:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3F3644A14
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Dec 2024 07:21:22 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 490DF410C1
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Dec 2024 07:21:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=OdbvT6SZ;
	spf=pass (lists.linaro.org: domain of vkoul@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 90473A40D92;
	Mon,  2 Dec 2024 07:19:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0D1FC4CED2;
	Mon,  2 Dec 2024 07:21:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733124074;
	bh=3worsxoX+CvvLyHiN4PGIKhbZ26gkfIZ3nKAMmmYUfc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OdbvT6SZG+Q78WUGTrFPdOe5s8L97MLTUkH/GLNEnmtVGTTyPsYHslSKSxRaFjZS9
	 s1pK7FuWvxjwBrs/yxoPJiwZqCf8bQA2TjqIzpVFNaVazH+yHCmGgiTOGEQsSqZdHg
	 0h7/BCRiZpaPAKDqAD6qDzw6blN6lIYA7zuVsdNprtwxWqx6qacbZocvK6Grp1vnAK
	 1TCGfIKtX8/9AEjkEV/zJ4ftWFovQe2PLM9aKT+Ii6gS5kyDCLlRa2GZf0/RIeR08l
	 DBWz6tuMG8lc1Q2cT9HRuq6EWKIgRhJF7O2Sq4Ew6phaSXitw36NofPchF2Ip3iIyv
	 3FYJe8bfF49QA==
Date: Mon, 2 Dec 2024 12:51:10 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>
Message-ID: <Z01f5sfeiSwThu02@vaman>
References: <20241121130134.29408-1-quic_jseerapu@quicinc.com>
 <20241121130134.29408-2-quic_jseerapu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241121130134.29408-2-quic_jseerapu@quicinc.com>
X-Rspamd-Queue-Id: 490DF410C1
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.20 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	RCVD_IN_DNSWL_MED(-0.20)[147.75.193.91:from];
	MIME_GOOD(-0.10)[text/plain];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: WS3VKL4HZIZLN73XCXTNJFEG6X5BVB5F
X-Message-ID-Hash: WS3VKL4HZIZLN73XCXTNJFEG6X5BVB5F
X-MailFrom: vkoul@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andi Shyti <andi.shyti@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, quic_msavaliy@quicinc.com, quic_vtanuku@quicinc.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/3] dmaengine: qcom: gpi: Add GPI Block event interrupt support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WS3VKL4HZIZLN73XCXTNJFEG6X5BVB5F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 21-11-24, 18:31, Jyothi Kumar Seerapu wrote:
> GSI hardware generates an interrupt for each transfer completion.
> For multiple messages within a single transfer, this results in
> N interrupts for N messages, leading to significant software
> interrupt latency.
> 
> To mitigate this latency, utilize Block Event Interrupt (BEI) mechanism.
> Enabling BEI instructs the GSI hardware to prevent interrupt generation
> and BEI is disabled when an interrupt is necessary.
> 
> When using BEI, consider splitting a single multi-message transfer into
> chunks of 8 internally. Interrupts are not expected for the first 7 message
> completions, only the last message triggers an interrupt,indicating
> the completion of 8 messages.
> 
> This BEI mechanism enhances overall transfer efficiency.
> 
> Signed-off-by: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>
> ---
> 
> v2-> v3:
>    - Renamed gpi_multi_desc_process to gpi_multi_xfer_timeout_handler
>    - MIN_NUM_OF_MSGS_MULTI_DESC changed from 4 to 2
>    - Added documentation for newly added changes in "qcom-gpi-dma.h" file
>    - Updated commit description. 
> 
> v1 -> v2:
>    - Changed dma_addr type from array of pointers to array.
>    - To support BEI functionality with the TRE size of 64 defined in GPI driver,
>      updated QCOM_GPI_MAX_NUM_MSGS to 16 and NUM_MSGS_PER_IRQ to 4.
>  
>  drivers/dma/qcom/gpi.c           | 48 ++++++++++++++++++++
>  include/linux/dma/qcom-gpi-dma.h | 76 ++++++++++++++++++++++++++++++++
>  2 files changed, 124 insertions(+)
> 
> diff --git a/drivers/dma/qcom/gpi.c b/drivers/dma/qcom/gpi.c
> index 52a7c8f2498f..5442b65b1638 100644
> --- a/drivers/dma/qcom/gpi.c
> +++ b/drivers/dma/qcom/gpi.c
> @@ -1693,6 +1693,9 @@ static int gpi_create_i2c_tre(struct gchan *chan, struct gpi_desc *desc,
>  
>  		tre->dword[3] = u32_encode_bits(TRE_TYPE_DMA, TRE_FLAGS_TYPE);
>  		tre->dword[3] |= u32_encode_bits(1, TRE_FLAGS_IEOT);
> +
> +		if (i2c->flags & QCOM_GPI_BLOCK_EVENT_IRQ)
> +			tre->dword[3] |= u32_encode_bits(1, TRE_FLAGS_BEI);
>  	}
>  
>  	for (i = 0; i < tre_idx; i++)
> @@ -2098,6 +2101,51 @@ static int gpi_find_avail_gpii(struct gpi_dev *gpi_dev, u32 seid)
>  	return -EIO;
>  }
>  
> +/**
> + * gpi_multi_xfer_timeout_handler() - Handle multi message transfer timeout
> + * @dev: pointer to the corresponding dev node
> + * @multi_xfer: pointer to the gpi_multi_xfer
> + * @num_xfers: total number of transfers
> + * @transfer_timeout_msecs: transfer timeout value
> + * @transfer_comp: completion object of the transfer
> + *
> + * This function is used to wait for the processed transfers based on
> + * the interrupts generated upon transfer completion.
> + * Return: On success returns 0, otherwise return error code (-ETIMEDOUT)
> + */
> +int gpi_multi_xfer_timeout_handler(struct device *dev, struct gpi_multi_xfer *multi_xfer,
> +				   u32 num_xfers, u32 transfer_timeout_msecs,
> +				   struct completion *transfer_comp)
> +{
> +	int i;
> +	u32 max_irq_cnt, time_left;
> +
> +	max_irq_cnt = num_xfers / NUM_MSGS_PER_IRQ;
> +	if (num_xfers % NUM_MSGS_PER_IRQ)
> +		max_irq_cnt++;
> +
> +	/*
> +	 * Wait for the interrupts of the processed transfers in multiple
> +	 * of 8 and for the last transfer. If the hardware is fast and
> +	 * already processed all the transfers then no need to wait.
> +	 */
> +	for (i = 0; i < max_irq_cnt; i++) {
> +		reinit_completion(transfer_comp);
> +		if (max_irq_cnt != multi_xfer->irq_cnt) {
> +			time_left = wait_for_completion_timeout(transfer_comp,
> +								transfer_timeout_msecs);
> +			if (!time_left) {
> +				dev_err(dev, "%s: Transfer timeout\n", __func__);
> +				return -ETIMEDOUT;
> +			}
> +		}
> +		if (num_xfers > multi_xfer->msg_idx_cnt)
> +			return 0;
> +	}
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(gpi_multi_xfer_timeout_handler);
> +
>  /* gpi_of_dma_xlate: open client requested channel */
>  static struct dma_chan *gpi_of_dma_xlate(struct of_phandle_args *args,
>  					 struct of_dma *of_dma)
> diff --git a/include/linux/dma/qcom-gpi-dma.h b/include/linux/dma/qcom-gpi-dma.h
> index 6680dd1a43c6..f001a8ac1887 100644
> --- a/include/linux/dma/qcom-gpi-dma.h
> +++ b/include/linux/dma/qcom-gpi-dma.h
> @@ -15,6 +15,38 @@ enum spi_transfer_cmd {
>  	SPI_DUPLEX,
>  };
>  
> +/**
> + * define QCOM_GPI_BLOCK_EVENT_IRQ - Block event interrupt support
> + *
> + * This is used to enable/disable the Block event interrupt mechanism.
> + */
> +#define QCOM_GPI_BLOCK_EVENT_IRQ	BIT(0)
> +
> +/**
> + * define QCOM_GPI_MAX_NUM_MSGS	- maximum number of messages support
> + *
> + * This indicates maximum number of messages can allocate and
> + * submit to hardware. To handle more messages beyond this,
> + * need to unmap the processed messages.
> + */
> +#define QCOM_GPI_MAX_NUM_MSGS		16
> +
> +/**
> + * define NUM_MSGS_PER_IRQ - interrupt per messages completion
> + *
> + * This indicates that trigger an interrupt, after the completion of 8 messages.
> + */
> +#define NUM_MSGS_PER_IRQ		8
> +
> +/**
> + * define MIN_NUM_OF_MSGS_MULTI_DESC - \
> + *	minimum number of messages to support Block evenet interrupt
> + *
> + * This indicates minimum number of messages in a trenafer required to
> + * process it using block event interrupt mechanism.
> + */
> +#define MIN_NUM_OF_MSGS_MULTI_DESC	2
> +
>  /**
>   * struct gpi_spi_config - spi config for peripheral
>   *
> @@ -51,6 +83,29 @@ enum i2c_op {
>  	I2C_READ,
>  };

why should these be exposed to user? 

>  
> +/**
> + * struct gpi_multi_xfer - Used for multi transfer support
> + *
> + * @msg_idx_cnt: message index for the transfer
> + * @buf_idx: dma buffer index
> + * @unmap_msg_cnt: unmapped transfer index
> + * @freed_msg_cnt: freed transfer index
> + * @irq_cnt: received interrupt count
> + * @irq_msg_cnt: transfer message count for the received irqs
> + * @dma_buf: virtual addresses of the buffers
> + * @dma_addr: dma addresses of the buffers
> + */
> +struct gpi_multi_xfer {
> +	u32 msg_idx_cnt;
> +	u32 buf_idx;
> +	u32 unmap_msg_cnt;
> +	u32 freed_msg_cnt;
> +	u32 irq_cnt;
> +	u32 irq_msg_cnt;
> +	void *dma_buf[QCOM_GPI_MAX_NUM_MSGS];
> +	dma_addr_t dma_addr[QCOM_GPI_MAX_NUM_MSGS];
> +};

DMAengine API can do multiple transfers and we already have flags for
interrupts, pls use that instead of usual behaviour of defining custom
interfaces to handle everything. That is not recommended


> +
>  /**
>   * struct gpi_i2c_config - i2c config for peripheral
>   *
> @@ -65,6 +120,8 @@ enum i2c_op {
>   * @rx_len: receive length for buffer
>   * @op: i2c cmd
>   * @muli-msg: is part of multi i2c r-w msgs
> + * @flags: true for block event interrupt support
> + * @multi_xfer: indicates transfer has multi messages
>   */
>  struct gpi_i2c_config {
>  	u8 set_config;
> @@ -78,6 +135,25 @@ struct gpi_i2c_config {
>  	u32 rx_len;
>  	enum i2c_op op;
>  	bool multi_msg;
> +	u8 flags;
> +	struct gpi_multi_xfer multi_xfer;
>  };
>  
> +/**
> + * gpi_multi_timeout_handler() - Handle multi message transfer timeout
> + * @dev: pointer to the corresponding dev node
> + * @multi_xfer: pointer to the gpi_multi_xfer
> + * @num_xfers: total number of transfers
> + * @transfer_timeout_msecs: transfer timeout value
> + * @transfer_comp: completion object of the transfer
> + *
> + * This function is used to wait for the processed transfers based on
> + * the interrupts generated upon transfer completion.
> + *
> + * Return: On success returns 0, otherwise return error code (-ETIMEDOUT)
> + */
> +int gpi_multi_xfer_timeout_handler(struct device *dev, struct gpi_multi_xfer *multi_xfer,
> +			   u32 num_xfers, u32 tranfer_timeout_msecs,
> +			   struct completion *transfer_comp);

Why should a handler be here?

-- 
~Vinod
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
