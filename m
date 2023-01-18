Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE7B670FED
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Jan 2023 02:24:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC36C3F073
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Jan 2023 01:24:40 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by lists.linaro.org (Postfix) with ESMTPS id A4F883EF25
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Jan 2023 01:24:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=nkdE03+Z;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.218.50 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id qx13so21295513ejb.13
        for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Jan 2023 17:24:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hCw2/tRfMHxdziYE7u5XMHonH7hwIjkmwIJuVfBRNWc=;
        b=nkdE03+Z0aIn/+n7c1/I2F3pJkSHHVfoKP7G8X9gUuTEkxpuUwMEtVoc0Q+WUvSkvd
         A2H/THg65gzR0hZgMbt2oPoKf4nCe5i/l6BjLfuin4U01myYpCXjWorb+1mTTzkDuhk+
         mCiQUtSbLtdcOWtWJ+KRejJGi/NmzqWORt/S7l/3k66JUoNrsREYogsLyLY9EldEHZAd
         PsL1wjKb7nQ9OgsnYZGOBNaPZy9TIY5EbGcsIFJCz2t8kQSQcm9Uxy1IesuXV/QInnfa
         1rUiZs41LNJEYzESPz3fByvOWWq3gxSP9vx82MfGgPxkgTfoUoXvKS+9zNGRrN+o9uHZ
         YGAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hCw2/tRfMHxdziYE7u5XMHonH7hwIjkmwIJuVfBRNWc=;
        b=gczYB6Cbjz1eXvsTPDYknABaFGgkWQY0XUAIulriSmaFqkJ3ceiJoVQfBwTsE+lwKf
         PD9l3bUBhomMwyp7YjlCw8vt7qGDU2zIWZSUirs3bxtYzV7zLkRkZUYu/iJaaDobqiSb
         YlPif8i+M/pesXpw3Dtk7dqpEarTi1KX7aqIuXSNKQhmdtYcxAYA5iUBl3C3AiEuwS/2
         tCFnUJLvViUOSX7ELYMufdUMKdu0EYJ2BO+UI+y+3OpMGmjuHjqTmY5Orf7PSRrBhgjY
         TZTdu4j42x9DoIZKw1EA3sOhoRMZnRGDIvxV+3rUGzcJy7fxxoTXR5hFt4o2i7Mhcuq9
         pdzQ==
X-Gm-Message-State: AFqh2krwJtl6KPlU9SQjHvyWIU7LkldmMS5ZPidk+YwKlF5M0FW2AUnI
	EI7KkfksMQv/0MS9E9DltPSQaCy2
X-Google-Smtp-Source: AMrXdXsas82xe4F5cGHedGjetCtbabIxMQUCoeuWsYdgrdP89CeJeAfXys09rvlr0gPpyI7oo6dygw==
X-Received: by 2002:a17:907:6294:b0:86a:1afa:6dd8 with SMTP id nd20-20020a170907629400b0086a1afa6dd8mr26337861ejc.69.1674005075726;
        Tue, 17 Jan 2023 17:24:35 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id fn4-20020a1709069d0400b0084d4b907ff8sm10941430ejc.120.2023.01.17.17.24.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 17:24:35 -0800 (PST)
Message-ID: <b9fa44e8-3387-df90-7997-cac74312cb3b@linaro.org>
Date: Wed, 18 Jan 2023 03:24:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-GB
To: Jiasheng Jiang <jiasheng@iscas.ac.cn>, robdclark@gmail.com,
 quic_abhinavk@quicinc.com, sean@poorly.run, airlied@gmail.com,
 sumit.semwal@linaro.org, christian.koenig@amd.com
References: <20230109022038.2163-1-jiasheng@iscas.ac.cn>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230109022038.2163-1-jiasheng@iscas.ac.cn>
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.50:from];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[13];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[iscas.ac.cn,gmail.com,quicinc.com,poorly.run,linaro.org,amd.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A4F883EF25
X-Spamd-Bar: ----
Message-ID-Hash: ZW4ZINIYIHAYDJ7QOO5IKH6QP7FG2HO3
X-Message-ID-Hash: ZW4ZINIYIHAYDJ7QOO5IKH6QP7FG2HO3
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, freedreno@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/msm: Add missing check and destroy for alloc_ordered_workqueue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZW4ZINIYIHAYDJ7QOO5IKH6QP7FG2HO3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 09/01/2023 04:20, Jiasheng Jiang wrote:
> Add check for the return value of alloc_ordered_workqueue as it may return
> NULL pointer.
> Moreover, use the destroy_workqueue in the later fails in order to avoid
> memory leak.
> 
> Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>
> ---
> Changelog:
> 
> v1 -> v2:
> 
> 1. Convert "goto err_destroy_workqueue" into "goto err_msm_unit" and
> remove "err_destroy_workqueue" label.
> ---
>   drivers/gpu/drm/msm/msm_drv.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
