Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 185125A1341
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Aug 2022 16:17:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3DBEA3F460
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Aug 2022 14:17:53 +0000 (UTC)
Received: from mail-4022.proton.ch (mail-4022.proton.ch [185.70.40.22])
	by lists.linaro.org (Postfix) with ESMTPS id 43F5C3EC80
	for <linaro-mm-sig@lists.linaro.org>; Sun,  7 Aug 2022 15:31:21 +0000 (UTC)
Date: Sun, 07 Aug 2022 15:31:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=connolly.tech;
	s=protonmail; t=1659886279; x=1660145479;
	bh=YHlXS1js2a8lbYFdeBlkI7exi/3zmStUxGjeZdRforw=;
	h=Date:To:From:Cc:Reply-To:Subject:Message-ID:In-Reply-To:
	 References:Feedback-ID:From:To:Cc:Date:Subject:Reply-To:
	 Feedback-ID:Message-ID;
	b=T52PhAI9tffZwaFkL5rQPfkf5ZKVzDLfVkbq2M+fh2xQLVX89r1mlhPgq9qDexrMk
	 zyPoATlrq50HNVfQ4/sSYXpA4Sg0kq0XPpsCmSW5Poo1tSqxc1AK7Eo1Sqbotp1xH9
	 o0yDM7gOXq05wwTsiCztwlPifRp3v3EuFSUpTJrQ=
To: Robin Reckmann <robin.reckmann@googlemail.com>, Andy Gross <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?utf-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
From: Caleb Connolly <caleb@connolly.tech>
Message-ID: <653e93e7-6bdc-3498-7719-f3a7860dd245@connolly.tech>
In-Reply-To: <20220807140455.409417-1-robin.reckmann@gmail.com>
References: <20220807140455.409417-1-robin.reckmann@gmail.com>
Feedback-ID: 10753939:user:proton
MIME-Version: 1.0
X-MailFrom: caleb@connolly.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XKX4IOWQYK2RFOOPOORV436ASPXFTM3Y
X-Message-ID-Hash: XKX4IOWQYK2RFOOPOORV436ASPXFTM3Y
X-Mailman-Approved-At: Thu, 25 Aug 2022 14:17:46 +0000
CC: Robin Reckmann <robin.reckmann@gmail.com>, linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: Caleb Connolly <caleb@connolly.tech>
Subject: [Linaro-mm-sig] Re: [PATCH] i2c: qcom-geni: Fix GPI DMA buffer sync-back
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XKX4IOWQYK2RFOOPOORV436ASPXFTM3Y/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



On 07/08/2022 15:04, Robin Reckmann wrote:
> Fix i2c transfers using GPI DMA mode for all message types that do not set
> the I2C_M_DMA_SAFE flag (e.g. SMBus "read byte").
>
> In this case a bounce buffer is returned by i2c_get_dma_safe_msg_buf(),
> and it has to synced back to the message after the transfer is done.
>
> Add missing assignment of dma buffer in geni_i2c_gpi().
>
> Set xferred in i2c_put_dma_safe_msg_buf() to true in case of no error to
> ensure the sync-back of this dma buffer to the message.
Thanks for sending this, it fixes GPI DMA on the PocoPhone F1 and Pixel 3!
>
> Signed-off-by: Robin Reckmann <robin.reckmann@gmail.com>Reviewed-by: Caleb Connolly <caleb@connolly.tech>
> ---
>   drivers/i2c/busses/i2c-qcom-geni.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
> index 6ac402ea58fb..d3541e94794e 100644
> --- a/drivers/i2c/busses/i2c-qcom-geni.c
> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
> @@ -484,12 +484,12 @@ static void geni_i2c_gpi_unmap(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
>   {
>   	if (tx_buf) {
>   		dma_unmap_single(gi2c->se.dev->parent, tx_addr, msg->len, DMA_TO_DEVICE);
> -		i2c_put_dma_safe_msg_buf(tx_buf, msg, false);
> +		i2c_put_dma_safe_msg_buf(tx_buf, msg, !gi2c->err);
>   	}
>
>   	if (rx_buf) {
>   		dma_unmap_single(gi2c->se.dev->parent, rx_addr, msg->len, DMA_FROM_DEVICE);
> -		i2c_put_dma_safe_msg_buf(rx_buf, msg, false);
> +		i2c_put_dma_safe_msg_buf(rx_buf, msg, !gi2c->err);
>   	}
>   }
>
> @@ -553,6 +553,7 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
>   	desc->callback_param = gi2c;
>
>   	dmaengine_submit(desc);
> +	*buf = dma_buf;
>   	*dma_addr_p = addr;
>
>   	return 0;
> --
> 2.25.1
>

--
Kind Regards,
Caleb

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
