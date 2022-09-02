Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCC7602E59
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Oct 2022 16:23:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 304AB3ED72
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Oct 2022 14:23:51 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	by lists.linaro.org (Postfix) with ESMTPS id 2EE9D3EA25
	for <linaro-mm-sig@lists.linaro.org>; Fri,  2 Sep 2022 09:31:29 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id c7so1509618wrp.11
        for <linaro-mm-sig@lists.linaro.org>; Fri, 02 Sep 2022 02:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=1gh2cH8+/vu9+O44Ntzb/QjlvRTOJYihF+Y3Qm1SXrI=;
        b=EVe1TJlwgwENLq9wjko+3+iqmTNZUI3JPuYAT7OKSM+R/epnoMEDtd8xg6TmEMxWx3
         w3tho74vxXAPjBSsm4lYFUcgCWErhh5+d3jcpk70E6Cl1y+e5y1R2FlOY66Rl8+JeCwL
         W3nltWTUG/K5D5uJwaOIEe1GS28g32m2+6rHL+rUQ9SE6SLcEMA41Q+pdYi3o3e/Gse3
         vkzFGeV6Fodjv9QezhLGwOjQYvAKxf+B1t8jpSLVlaAcYGHcSmHNtUS1CA4d+v2e/F68
         XWkTUJ18yNVic8+Sr4F0TOACzpTFk8RLS58xwLJ8vLbq0MIzXXHOSVbDexp4Q4m4S3zf
         Pupw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=1gh2cH8+/vu9+O44Ntzb/QjlvRTOJYihF+Y3Qm1SXrI=;
        b=Dz+GD72SM70KaOu/25kAUioMr+nUD5ZDuX+caug2juMrDUP69mxOVnqwZR/7/rGlfY
         K4ncfR+zLn67A0tnpwAJCwpmsIHs5/RwWlueBejndWFGY9xSRjrP1qER01sXKe+tqqWz
         xq52MOPaEE3Gv9L3OHyMSNU1+ia8YN8HDUSSpF39AeZCH+fvD/BIc83A9qanyH0sAgwW
         UiJwurSX8XfZh7w0uuHBe4BMCdzBbKpFXFalNPZc0HWm5R2OHNyqvMrHubG6Y9zhB/1k
         CCY/AtQ63FS5hgrIqkaUce8udSPrNw2bAShb1zVlJKhcDj/BN88d169Odh/vyTpTLKhr
         Vm1A==
X-Gm-Message-State: ACgBeo2mgvalQeBTKJr3X6QWpRJBZx/XdX2Pg6oc/7MTFbKSiniLNGXp
	M20BSFRMT6uuEjPh6o60qQM0x2PC
X-Google-Smtp-Source: AA6agR6YtQhQs9M+XpNrEr5ZjCr4K1ke8LjplN8/PGIGXMDtTqKLhIXAP+/GSYEqOabmcCpXMoNTwQ==
X-Received: by 2002:a05:6000:184e:b0:226:e227:35e4 with SMTP id c14-20020a056000184e00b00226e22735e4mr10140437wri.624.1662111088131;
        Fri, 02 Sep 2022 02:31:28 -0700 (PDT)
Received: from [192.168.86.238] (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.googlemail.com with ESMTPSA id d17-20020adffbd1000000b002253d865715sm1042629wrs.87.2022.09.02.02.31.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Sep 2022 02:31:27 -0700 (PDT)
Message-ID: <c2cd764e-ef70-4a7a-fe7d-aade5adb8057@linaro.org>
Date: Fri, 2 Sep 2022 10:31:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu
 <olvaffe@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Gert Wollny <gert.wollny@collabora.com>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Daniel Stone <daniel@fooishbar.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding
 <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas_os@shipmail.org>,
 Qiang Yu <yuq825@gmail.com>, Amol Maheshwari <amahesh@qti.qualcomm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>,
 Juergen Gross <jgross@suse.com>, Stefano Stabellini
 <sstabellini@kernel.org>,
 Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
 Tomi Valkeinen <tomba@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Lucas Stach <l.stach@pengutronix.de>,
 Christian Gmeiner <christian.gmeiner@gmail.com>
References: <20220831153757.97381-1-dmitry.osipenko@collabora.com>
 <20220831153757.97381-12-dmitry.osipenko@collabora.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20220831153757.97381-12-dmitry.osipenko@collabora.com>
X-MailFrom: srinivas.kandagatla@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EXMQ76GI6YHE763TGADB2ZPY7IWT34BG
X-Message-ID-Hash: EXMQ76GI6YHE763TGADB2ZPY7IWT34BG
X-Mailman-Approved-At: Tue, 18 Oct 2022 14:22:54 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 11/21] misc: fastrpc: Prepare to dynamic dma-buf locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EXMQ76GI6YHE763TGADB2ZPY7IWT34BG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit



On 31/08/2022 16:37, Dmitry Osipenko wrote:
> Prepare fastrpc to the common dynamic dma-buf locking convention by
> starting to use the unlocked versions of dma-buf API functions.
> 
> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> ---

LGTM,

Incase you plan to take it via another tree.

Acked-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


--srini
>   drivers/misc/fastrpc.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
> index 93ebd174d848..6fcfb2e9f7a7 100644
> --- a/drivers/misc/fastrpc.c
> +++ b/drivers/misc/fastrpc.c
> @@ -310,8 +310,8 @@ static void fastrpc_free_map(struct kref *ref)
>   				return;
>   			}
>   		}
> -		dma_buf_unmap_attachment(map->attach, map->table,
> -					 DMA_BIDIRECTIONAL);
> +		dma_buf_unmap_attachment_unlocked(map->attach, map->table,
> +						  DMA_BIDIRECTIONAL);
>   		dma_buf_detach(map->buf, map->attach);
>   		dma_buf_put(map->buf);
>   	}
> @@ -726,7 +726,7 @@ static int fastrpc_map_create(struct fastrpc_user *fl, int fd,
>   		goto attach_err;
>   	}
>   
> -	map->table = dma_buf_map_attachment(map->attach, DMA_BIDIRECTIONAL);
> +	map->table = dma_buf_map_attachment_unlocked(map->attach, DMA_BIDIRECTIONAL);
>   	if (IS_ERR(map->table)) {
>   		err = PTR_ERR(map->table);
>   		goto map_err;
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
