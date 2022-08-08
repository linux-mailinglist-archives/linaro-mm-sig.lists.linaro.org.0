Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3205A8E1D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 08:14:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 515A23EA49
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 06:14:35 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by lists.linaro.org (Postfix) with ESMTPS id DAF7A47F50
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Aug 2022 07:00:02 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id m4so14892746ejr.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 08 Aug 2022 00:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc;
        bh=2/N6mFP+TYpvLhr23ybFH/UP8B6EWzbXHA/jkbBuIoc=;
        b=lkU29Ua428YWYVoXEMmDC0UaKbp+MGrvym2etqoPjNHVD2NL3tW0LF47PkXL04Ez3I
         vvDnB0EtThz40r8LCfeh+Mi4sLOX5jf8l3WCEzdsZk29I34a9O4PwXXIdG1oZTobtiTS
         Pr8yAIQcboCA7RWA0WoPC/lm1iMyf/gbxHMWKW/BfGmB15dsR2/tcpYYVI1egrVLe5QD
         n4sJi1Cd7mLiUIbqcvP7KLtQx9ydpy1/5chSsTH6oupCLjJMhZSlmioLlr6BVSn6QEkW
         RVhYK9yeeUKGculzGgFZU/b7kaWseSpXzQZagr+e3yArPV0ouWvwmyQdyF8oANNnxi7k
         zzOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc;
        bh=2/N6mFP+TYpvLhr23ybFH/UP8B6EWzbXHA/jkbBuIoc=;
        b=t6omLpj/tVIy3ScHsWNiQw+VCU51FmK8Aze3qi/k07hAHa3xpBrGjdbtbarSYGy/B/
         WuQGTCInfFVLrdFy1x1rrCCoNG+J4yZrD/s9Rq2GzqXyL/mBKc1tegHHwwXB7kEk6g1L
         cRmncC+oXz+pkC9+CMo9InwJBOSaP9O0/TklaQ/OG9EQhLvDuKOAK0VXuLMI+w1YxWkf
         wEy054tWxXoaPnO9N1PxM3heCgpsUy7dPJdLdJj2m9X4b+Nk5Z3utaNO3cCSGcrhAkI2
         pZw0Iaf3pVCQVwF/E5lz9UvNXmZF161Cs/4xAsJl7/GfdGNTZF42ZQt8BLUENvOCzhi5
         TIRQ==
X-Gm-Message-State: ACgBeo32cIN/E5L+eNOVWBOdtJFqMmNoXpxPatxOwGL+HWEgIWfX7Q2B
	8q//1vsM4XCHuznhHktLRJV2XA==
X-Google-Smtp-Source: AA6agR6hGuVY0jLoIpyBwpB68Ep5URWwiz9kxZGjZ1bEwFDjjVx2YCyxBdkT2y7+2dYKFcVRfMWxGg==
X-Received: by 2002:a17:907:2721:b0:731:2aeb:7940 with SMTP id d1-20020a170907272100b007312aeb7940mr6385812ejl.448.1659942001700;
        Mon, 08 Aug 2022 00:00:01 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id zk19-20020a17090733d300b0072aadbd48c7sm4512240ejb.84.2022.08.08.00.00.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Aug 2022 00:00:01 -0700 (PDT)
Mime-Version: 1.0
Date: Mon, 08 Aug 2022 08:59:59 +0200
Message-Id: <CM0GBVEZHLBT.1V54N4FCEN7V6@otso>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Robin Reckmann" <robin.reckmann@googlemail.com>, "Andy Gross"
 <agross@kernel.org>, "Bjorn Andersson" <bjorn.andersson@linaro.org>,
 "Konrad Dybcio" <konrad.dybcio@somainline.org>, "Sumit Semwal"
 <sumit.semwal@linaro.org>, =?utf-8?q?Christian_K=C3=B6nig?=
 <christian.koenig@amd.com>
X-Mailer: aerc 0.11.0
References: <20220807140455.409417-1-robin.reckmann@gmail.com>
In-Reply-To: <20220807140455.409417-1-robin.reckmann@gmail.com>
X-MailFrom: luca.weiss@fairphone.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6H52YA7UVEZNOTQ332D6IUJPDTDGVEI6
X-Message-ID-Hash: 6H52YA7UVEZNOTQ332D6IUJPDTDGVEI6
X-Mailman-Approved-At: Thu, 01 Sep 2022 06:14:31 +0000
CC: Robin Reckmann <robin.reckmann@gmail.com>, linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] i2c: qcom-geni: Fix GPI DMA buffer sync-back
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6H52YA7UVEZNOTQ332D6IUJPDTDGVEI6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Robin,

On Sun Aug 7, 2022 at 4:04 PM CEST, Robin Reckmann wrote:
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

This makes I2C with GPI DMA work on sm6350/sm7725 fairphone-fp4!
Thanks for fixing this!

Tested-by: Luca Weiss <luca.weiss@fairphone.com>

Regards
Luca

> ---
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
> -- 
> 2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
