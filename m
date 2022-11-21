Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAA9634FC4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 06:46:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 478F83ED5F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 05:46:13 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by lists.linaro.org (Postfix) with ESMTPS id C8A8A3EC6B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Nov 2022 11:57:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b="rMXy/vvw";
	spf=pass (lists.linaro.org: domain of tommaso.merciai@amarulasolutions.com designates 209.85.218.48 as permitted sender) smtp.mailfrom=tommaso.merciai@amarulasolutions.com;
	dmarc=pass (policy=none) header.from=amarulasolutions.com
Received: by mail-ej1-f48.google.com with SMTP id m22so27886339eji.10
        for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Nov 2022 03:57:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MBbsIuonafwREhzlZL+FNmZyLBn3gGtNW8dW5Tq4ubo=;
        b=rMXy/vvwEhXKozlAX1RwrPPT42CNokrusCoQoaRmpnG1Qk15lltVbnd3j2iAUlPdCs
         ti02LF5TBqoq6YtuHwOVTeMM8V3j9A/NyTYlxdqupHWMVJXHr1OdUGXBc1PgZ4MAwDHo
         jBrJsSHfGHJvwDXnWS7nntzTuJE+2sCrNmMBY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MBbsIuonafwREhzlZL+FNmZyLBn3gGtNW8dW5Tq4ubo=;
        b=c3JJEAvPgD9F0AS+4ZQenJLIoWhRUC7WeqDhjZm2aaHybIFGE863fQdM0eNjU9alEZ
         xzoNODg4W+a/HUqLp3/bGkRqdD8Ea++U9XAPNtf1nfLejGAkLp20etU6TZHgqJyylnAb
         mo63mkKVKrWcVZBX2a5FUCNeBC8wpx1xJwYDcVKfIA9v93gHdVwbrW9b7C6W9irpjfUK
         Bp76qUU0rsSSL6puyp0Kqktxxz8lU/thI7IajQKxl3SsE0zUGRKpo15hzkmhsidufr0u
         n9+sKqAwkSI80YfqlqfWy6tUl8+DxbA/WY8n5anLME5kGU4JPhQ0cuctCaWapf5oL3Kk
         OoTg==
X-Gm-Message-State: ANoB5pllOH7YE7EqUqFfzQZ2bfVL4E9kPzG5Y3y33igFSmZkeMZlh7Sg
	dQ5FkfN4i3vQiv/HbjJbfPGdpQ==
X-Google-Smtp-Source: AA0mqf4GqPNprIWVxYHjPd6mEdI7a0BfxK3crJG0H7ykmiHCidUbmzKoQBMNZ5VBRsnmPvjpZMda8Q==
X-Received: by 2002:a17:906:2342:b0:78d:9e77:1f8c with SMTP id m2-20020a170906234200b0078d9e771f8cmr6710101eja.236.1669031876837;
        Mon, 21 Nov 2022 03:57:56 -0800 (PST)
Received: from tom-ThinkPad-T14s-Gen-2i (net-188-217-55-94.cust.vodafonedsl.it. [188.217.55.94])
        by smtp.gmail.com with ESMTPSA id k19-20020aa7c053000000b00456c6b4b777sm5037181edo.69.2022.11.21.03.57.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 03:57:56 -0800 (PST)
Date: Mon, 21 Nov 2022 12:57:54 +0100
From: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
To: Wang Yufen <wangyufen@huawei.com>
Message-ID: <20221121115754.GA39395@tom-ThinkPad-T14s-Gen-2i>
References: <1669025872-44226-1-git-send-email-wangyufen@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1669025872-44226-1-git-send-email-wangyufen@huawei.com>
X-Rspamd-Queue-Id: C8A8A3EC6B
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[amarulasolutions.com,none];
	R_DKIM_ALLOW(-0.20)[amarulasolutions.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amarulasoluitons.com:email];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[amarulasolutions.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.48:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: tommaso.merciai@amarulasolutions.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MAS33GKPORHM2ZFQ75POYF3AH7GQVJLY
X-Message-ID-Hash: MAS33GKPORHM2ZFQ75POYF3AH7GQVJLY
X-Mailman-Approved-At: Wed, 23 Nov 2022 05:45:19 +0000
CC: agross@kernel.org, andersson@kernel.org, konrad.dybcio@somainline.org, sumit.semwal@linaro.org, christian.koenig@amd.com, vkoul@kernel.org, linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] i2c: qcom-geni: fix error return code in geni_i2c_gpi_xfer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MAS33GKPORHM2ZFQ75POYF3AH7GQVJLY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Wang,

On Mon, Nov 21, 2022 at 06:17:52PM +0800, Wang Yufen wrote:
> Fix to return a negative error code from the gi2c->err instead of
> 0.
> 
> Fixes: d8703554f4de ("i2c: qcom-geni: Add support for GPI DMA")
> Signed-off-by: Wang Yufen <wangyufen@huawei.com>
> ---
>  drivers/i2c/busses/i2c-qcom-geni.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
> index 84a7751..8fce98b 100644
> --- a/drivers/i2c/busses/i2c-qcom-geni.c
> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
> @@ -626,7 +626,6 @@ static int geni_i2c_gpi_xfer(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[], i
>  			dev_err(gi2c->se.dev, "I2C timeout gpi flags:%d addr:0x%x\n",
>  				gi2c->cur->flags, gi2c->cur->addr);
>  			gi2c->err = -ETIMEDOUT;
> -			goto err;


Looks good to me.
Reviewed-by: Tommaso Merciai <tommaso.merciai@amarulasoluitons.com>

Regards,
Tommaso

>  		}
>  
>  		if (gi2c->err) {
> -- 
> 1.8.3.1
> 

-- 
Tommaso Merciai
Embedded Linux Engineer
tommaso.merciai@amarulasolutions.com
__________________________________

Amarula Solutions SRL
Via Le Canevare 30, 31100 Treviso, Veneto, IT
T. +39 042 243 5310
info@amarulasolutions.com
www.amarulasolutions.com
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
