Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 331947D70BE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Oct 2023 17:28:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 254CD40BB1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Oct 2023 15:28:28 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by lists.linaro.org (Postfix) with ESMTPS id 146E23EA1B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Oct 2023 15:28:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=mATh9KU0;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.219.43 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-66d87554434so39923756d6.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Oct 2023 08:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698247691; x=1698852491; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8/OEf6wY4K8LL5fCd9Dam3mad0hP6D3Fcdj2bC0ObXE=;
        b=mATh9KU06GWpFILt7ep/6JXc86vOwrEZAmu6j1UPSDsgDt2tad1sU3DdOWjNkuT1QL
         T6s5nWxQGr82bSIgVsf5zEXLoIB/w8hLyQh/elokXl8NQHgv53PyaWOIz9taIbPww9CB
         ORTPk70Mdf1nx7LqLToaSrdVypNdzLFetYCW1JB7W7eKtW77bn6fkbnrszjbAVcMxFNZ
         fc7uv1kAWhWvJoKsvy8OSvBx7FQfLnePetcuAKwIMVZJvIRmgL/4CJHxmKPJbpgzz1NN
         dBxG7vdu8CsJg1UjM8vn3SlBxnsPuHkiDPUj06mXzd7Do2nec2phPlnvfHbtC2ajXvSm
         IERw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698247691; x=1698852491;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8/OEf6wY4K8LL5fCd9Dam3mad0hP6D3Fcdj2bC0ObXE=;
        b=g/1wyn3Gbu+hEj14/4T9OfWmCGrGHdfWIhx8QOOc/x85Nci7eCn0JlK5O51vSKAAJ4
         l6eiyT4tsKc513WANJfkXvEdBgJKD9XRNqczVH7gE0yFDd2fr68t3yn/iTw3QpdnmIvf
         BWrRiJOBGd7rovDBmGq5AV2FS17h0H3Fk+aMlkh5pYoDm1bV9PKfNQMdsTng2em3PKRA
         XNHLHZG2pTHjQrkkbgON0zHM0nbCeEDCVLZc506JKy8Vy2rcvQiZYLyTfvjrAWMFTkpf
         +QPKlLJ4+SbpR4r5POmqGD2GMEijfwyUQ/qJT1FM9kpsZo2hy+1n2mVuBD677IpfWmYl
         8phg==
X-Gm-Message-State: AOJu0YzZvt5AxNgDXr/6CauVl6N59deYohzC0DqKKSftQzzHMV7nlYYJ
	W1DQHeebMcqQvTfEX+cXs/9Qq4qs
X-Google-Smtp-Source: AGHT+IE+oXbdMGDC42eUqY/5d0Rh7NZd8nWQ0r8DPCttIVT1/TMaphayNooiWx9ODfgyZFTKsCHSrg==
X-Received: by 2002:a05:6214:2586:b0:66d:1d22:42d8 with SMTP id fq6-20020a056214258600b0066d1d2242d8mr20338672qvb.11.1698247691667;
        Wed, 25 Oct 2023 08:28:11 -0700 (PDT)
Received: from [192.168.1.212] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id g24-20020a37e218000000b007671b599cf5sm4280080qki.40.2023.10.25.08.28.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 08:28:10 -0700 (PDT)
Message-ID: <6f145485-c330-4a89-9e5a-af35d0b72e21@linaro.org>
Date: Wed, 25 Oct 2023 18:28:04 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Keith Zhao <keith.zhao@starfivetech.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
References: <20231025103957.3776-1-keith.zhao@starfivetech.com>
 <20231025103957.3776-4-keith.zhao@starfivetech.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20231025103957.3776-4-keith.zhao@starfivetech.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 146E23EA1B
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.49 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	FREEMAIL_CC(0.00)[linaro.org,esmil.dk,starfivetech.com,kernel.org,eecs.berkeley.edu,suse.de,edgeble.ai,hotmail.com,sifive.com,dabbelt.com,amd.com];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.43:from];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: ZC4IZOALAKN6EVXI2BEYYCDEQKVWVOFA
X-Message-ID-Hash: ZC4IZOALAKN6EVXI2BEYYCDEQKVWVOFA
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>, Emil Renner Berthing <kernel@esmil.dk>, Shengyang Chen <shengyang.chen@starfivetech.com>, Conor Dooley <conor+dt@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, Paul Walmsley <paul.walmsley@sifive.com>, Bjorn Andersson <andersson@kernel.org>, Changhuang Liang <changhuang.liang@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>, Palmer Dabbelt <palmer@dabbelt.com>, Shawn Guo <shawnguo@kernel.org>, christian.koenig@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/6] drm/fourcc: Add drm/vs tiled modifiers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZC4IZOALAKN6EVXI2BEYYCDEQKVWVOFA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 25/10/2023 13:39, Keith Zhao wrote:
> For each modifier, add the corresponding description
> 
> Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
> ---
>   include/uapi/drm/drm_fourcc.h | 57 +++++++++++++++++++++++++++++++++++
>   1 file changed, 57 insertions(+)
> 
> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
> index 8db7fd3f7..a580a848c 100644
> --- a/include/uapi/drm/drm_fourcc.h
> +++ b/include/uapi/drm/drm_fourcc.h
> @@ -419,6 +419,7 @@ extern "C" {
>   #define DRM_FORMAT_MOD_VENDOR_ARM     0x08
>   #define DRM_FORMAT_MOD_VENDOR_ALLWINNER 0x09
>   #define DRM_FORMAT_MOD_VENDOR_AMLOGIC 0x0a
> +#define DRM_FORMAT_MOD_VENDOR_VERISILICON 0x0b
>   
>   /* add more to the end as needed */
>   
> @@ -1562,6 +1563,62 @@ drm_fourcc_canonicalize_nvidia_format_mod(__u64 modifier)
>   #define AMD_FMT_MOD_CLEAR(field) \
>   	(~((__u64)AMD_FMT_MOD_##field##_MASK << AMD_FMT_MOD_##field##_SHIFT))
>   
> +#define DRM_FORMAT_MOD_VERISILICON_TYPE_NORMAL					0x00
> +#define DRM_FORMAT_MOD_VERISILICON_TYPE_MASK					((__u64)0x3 << 54)
> +
> +#define fourcc_mod_vs_code(type, val) \
> +	fourcc_mod_code(VERISILICON, ((((__u64)type) << 54) | (val)))

Please use fourcc_mode_code directly.

> +
> +#define DRM_FORMAT_MOD_VERISILICON_NORM_MODE_MASK				0x1F
> +
> +/*
> + * An x-major 8x8 super tile consists of 64 8x8 sub-tiles in total.
> + * Each 8x8 sub-tile consists of four standard tiles .
> + * standard tiles (see Vivante 4x4 tiling layout)
> + */
> +#define DRM_FORMAT_MOD_VERISILICON_SUPER_TILED_XMAJOR_8X8		0x02
> +
> +/*
> + * A y-major 8x8 super tile consists of 64 8x8 sub-tiles in total.
> + * Each 8x8 sub-tile consists of four standard tiles .
> + * standard tiles (see Vivante 4x4 tiling layout)
> + */
> +#define DRM_FORMAT_MOD_VERISILICON_SUPER_TILED_YMAJOR_8X8		0x03
> +
> +/*
> + * An 8x8 tile consists of four standard tiles
> + * that are organized in Z-order.
> + * standard tiles (see Vivante 4x4 tiling layout)
> + */
> +#define DRM_FORMAT_MOD_VERISILICON_TILE_8X8						0x04
> +
> +/*
> + * An 8x4 tile consists of two standard tiles
> + * that are organized in Z-order.
> + * standard tiles (see Vivante 4x4 tiling layout)
> + */
> +#define DRM_FORMAT_MOD_VERISILICON_TILE_8X4						0x07
> +
> +/*
> + * An x-major 8x4 super tile consists of 128 8x4 sub-tiles in total.
> + * Each 8x4 sub-tile consists of two standard tiles.
> + * two standard tiles also same with DRM_FORMAT_MOD_VS_TILE_8X4
> + * standard tiles (see Vivante 4x4 tiling layout)
> + */
> +#define DRM_FORMAT_MOD_VERISILICON_SUPER_TILED_XMAJOR_8X4		0x0B
> +
> +/*
> + * A y-major 4x8 super tile consists of 128 4x8 sub-tiles in total.
> + * Each 4x8 sub-tile consists of two standard tiles.
> + * two standard tiles also same with DRM_FORMAT_MOD_VS_TILE_8X4
> + * standard tiles (see Vivante 4x4 tiling layout)
> + */
> +#define DRM_FORMAT_MOD_VERISILICON_SUPER_TILED_YMAJOR_4X8    0x0C
> +
> +#define fourcc_mod_vs_norm_code(tile) \
> +	fourcc_mod_vs_code(DRM_FORMAT_MOD_VERISILICON_TYPE_NORMAL, \
> +				(tile))

1) this is not a part of uAPI
2) please use fourcc_mod_code directly.

> +
>   #if defined(__cplusplus)
>   }
>   #endif

-- 
With best wishes
Dmitry

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
