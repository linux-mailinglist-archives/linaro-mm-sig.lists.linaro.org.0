Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA325A8E1F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 08:14:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F0AB3EFA1
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 06:14:53 +0000 (UTC)
Received: from relay08.th.seeweb.it (relay08.th.seeweb.it [5.144.164.169])
	by lists.linaro.org (Postfix) with ESMTPS id 2FDFB47F50
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Aug 2022 11:46:34 +0000 (UTC)
Received: from [192.168.1.101] (abxh187.neoplus.adsl.tpnet.pl [83.9.1.187])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 2D60F3F6FC;
	Mon,  8 Aug 2022 13:46:32 +0200 (CEST)
Message-ID: <c9402e30-f410-8c29-2da4-4cbc993de6a5@somainline.org>
Date: Mon, 8 Aug 2022 13:46:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Robin Reckmann <robin.reckmann@googlemail.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20220807140455.409417-1-robin.reckmann@gmail.com>
From: Konrad Dybcio <konrad.dybcio@somainline.org>
In-Reply-To: <20220807140455.409417-1-robin.reckmann@gmail.com>
X-MailFrom: konrad.dybcio@somainline.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZLZFZ45A7NGUDTQ4MCIEYYOMJ3ZZ3YDT
X-Message-ID-Hash: ZLZFZ45A7NGUDTQ4MCIEYYOMJ3ZZ3YDT
X-Mailman-Approved-At: Thu, 01 Sep 2022 06:14:49 +0000
CC: Robin Reckmann <robin.reckmann@gmail.com>, linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] i2c: qcom-geni: Fix GPI DMA buffer sync-back
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZLZFZ45A7NGUDTQ4MCIEYYOMJ3ZZ3YDT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



On 7.08.2022 16:04, Robin Reckmann wrote:
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
> 
> Signed-off-by: Robin Reckmann <robin.reckmann@gmail.com>
> ---
Makes SM8450 Xperia 1 IV boot with the touchscreen but enabled (previously
it would simply crash), but the touchscreen itself does not work yet (not
yet sure if something is still missing on my part wrt hw setup):

[    1.838819] gpi 900000.dma-controller: Error in Transaction
[    1.838944] geni_i2c 990000.i2c: DMA txn failed:3
[    1.839166] geni_i2c 990000.i2c: GPI transfer failed: -5


Still, this is a very nice improvement.

Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>

Konrad
>  drivers/i2c/busses/i2c-qcom-geni.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
> index 6ac402ea58fb..d3541e94794e 100644
> --- a/drivers/i2c/busses/i2c-qcom-geni.c
> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
> @@ -484,12 +484,12 @@ static void geni_i2c_gpi_unmap(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
>  {
>  	if (tx_buf) {
>  		dma_unmap_single(gi2c->se.dev->parent, tx_addr, msg->len, DMA_TO_DEVICE);
> -		i2c_put_dma_safe_msg_buf(tx_buf, msg, false);
> +		i2c_put_dma_safe_msg_buf(tx_buf, msg, !gi2c->err);
>  	}
>  
>  	if (rx_buf) {
>  		dma_unmap_single(gi2c->se.dev->parent, rx_addr, msg->len, DMA_FROM_DEVICE);
> -		i2c_put_dma_safe_msg_buf(rx_buf, msg, false);
> +		i2c_put_dma_safe_msg_buf(rx_buf, msg, !gi2c->err);
>  	}
>  }
>  
> @@ -553,6 +553,7 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
>  	desc->callback_param = gi2c;
>  
>  	dmaengine_submit(desc);
> +	*buf = dma_buf;
>  	*dma_addr_p = addr;
>  
>  	return 0;
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
