Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0FE48DDAF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jan 2022 19:30:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F19FD3ED9B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jan 2022 18:30:44 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	by lists.linaro.org (Postfix) with ESMTPS id 924BB401B3
	for <linaro-mm-sig@lists.linaro.org>; Wed, 12 Jan 2022 18:08:49 +0000 (UTC)
Received: by mail-lf1-f44.google.com with SMTP id o12so11099112lfk.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 12 Jan 2022 10:08:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=fbQ4MfMPQ01c4yNnE9/3ElS8nA8KssfGISIkQPEdFsY=;
        b=ObdGosYwJtK5OzDLqayzPD3/LnC1M9Fs8nnT4OJc+qYHHhCOprhDhARWt30UeY3xTW
         s9MEwc0HRT46OenG6uONG9oyMWCbpTMr3Jewfnfcqt21XpnyYtRLdvEyJhXvINBaKone
         05r449M4Yf8EauPzkmqujmJaHpcRP1uJEI8rynH6Qinna3YwY474XFjZ8//bGL0lO+Jm
         eM8B3qAFBtol8VqiYaPu+0SLy5qlei0R4Jc8z8gHvu95Xc23jt0wM5pJH0qPfYJ47gBp
         gWd1zcPRo7jKhnHkcCvrisbigMP3nuRl2jOFGFVUvKuqEnZoBQVF0lj0MxhbH2ZeddfR
         1FQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=fbQ4MfMPQ01c4yNnE9/3ElS8nA8KssfGISIkQPEdFsY=;
        b=4AdcJ7v9+U1JrE9xkMDtPqjqwxv7o2EcS55yyznGctcsJEha6PlaacPWubo/6ao0F+
         qMGTDaSsghMvB59gSRrtoVI4qB3L2/FWf638TDYbHhcZc2O+/W+cpqCQQPie2Ba85g8p
         KSStBvndkUXBtEwdv0A75oYTZIvZ/jsVI/yzLLoPDO/CfwRpo/AkngFOlCAHoSqcDaGp
         pq7SvvPURBtrEknZ2/egeVsiqx1H3cate3irsgc+n/tREU9wfyLGHgde8XGJnYkLJoJA
         NyOAp2IWvv3wviHMugqUPKs7bE0o6VYcgLDIKJstkix7zsCPTKMbqJ13DklZ6SyEs80P
         pfIw==
X-Gm-Message-State: AOAM532vJBRmzVvX7SuT4nOUkgmyLtYPx5ofc+5jhFfvRJWLHQTz1ZSo
	YlszcTobuBOisx+eOJgf4Vs=
X-Google-Smtp-Source: ABdhPJwWHoWpLtRiuzfDkCm8Un7F1KU6ZGRTRVKv7RiEHbBNH2URTuRSDL07MZF7+km6mW6qppQ6ag==
X-Received: by 2002:a05:6512:3f16:: with SMTP id y22mr621580lfa.61.1642010928255;
        Wed, 12 Jan 2022 10:08:48 -0800 (PST)
Received: from [192.168.1.11] ([217.117.245.67])
        by smtp.gmail.com with ESMTPSA id k29sm35460ljc.44.2022.01.12.10.08.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jan 2022 10:08:47 -0800 (PST)
Message-ID: <c5ae2a68-070f-884c-c82a-2d3f4b8e06b1@gmail.com>
Date: Wed, 12 Jan 2022 21:08:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Content-Language: en-US
To: kraxel@redhat.com, sumit.semwal@linaro.org, christian.koenig@amd.com,
 daniel.vetter@ffwll.ch
References: <20211230142649.23022-1-paskripkin@gmail.com>
From: Pavel Skripkin <paskripkin@gmail.com>
In-Reply-To: <20211230142649.23022-1-paskripkin@gmail.com>
X-MailFrom: paskripkin@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XZ5RK4CNCGWAJE45E4JHFRRRAHK6TXBF
X-Message-ID-Hash: XZ5RK4CNCGWAJE45E4JHFRRRAHK6TXBF
X-Mailman-Approved-At: Thu, 13 Jan 2022 18:30:41 +0000
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, syzbot+2c56b725ec547fa9cb29@syzkaller.appspotmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] udmabuf: validate ubuf->pagecount
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XZ5RK4CNCGWAJE45E4JHFRRRAHK6TXBF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 12/30/21 17:26, Pavel Skripkin wrote:
> Syzbot has reported GPF in sg_alloc_append_table_from_pages(). The
> problem was in ubuf->pages == ZERO_PTR.
> 
> ubuf->pagecount is calculated from arguments passed from user-space. If
> user creates udmabuf with list.size == 0 then ubuf->pagecount will be
> also equal to zero; it causes kmalloc_array() to return ZERO_PTR.
> 
> Fix it by validating ubuf->pagecount before passing it to
> kmalloc_array().
> 
> Fixes: fbb0de795078 ("Add udmabuf misc device")
> Reported-and-tested-by: syzbot+2c56b725ec547fa9cb29@syzkaller.appspotmail.com
> Signed-off-by: Pavel Skripkin <paskripkin@gmail.com>
> ---
> 

Gentle ping :)

> 
> ---
>   drivers/dma-buf/udmabuf.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
> index c57a609db75b..e7330684d3b8 100644
> --- a/drivers/dma-buf/udmabuf.c
> +++ b/drivers/dma-buf/udmabuf.c
> @@ -190,6 +190,10 @@ static long udmabuf_create(struct miscdevice *device,
>   		if (ubuf->pagecount > pglimit)
>   			goto err;
>   	}
> +
> +	if (!ubuf->pagecount)
> +		goto err;
> +
>   	ubuf->pages = kmalloc_array(ubuf->pagecount, sizeof(*ubuf->pages),
>   				    GFP_KERNEL);
>   	if (!ubuf->pages) {

With regards,
Pavel Skripkin
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
