Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 937737040FA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 May 2023 00:27:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 451EC3F072
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 May 2023 22:27:40 +0000 (UTC)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	by lists.linaro.org (Postfix) with ESMTPS id BC4773E963
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 May 2023 22:27:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of sukrut.bellary@gmail.com designates 209.85.215.173 as permitted sender) smtp.mailfrom=sukrut.bellary@gmail.com;
	dmarc=none
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-53202149ae2so1922196a12.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 May 2023 15:27:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684189655; x=1686781655;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c63nnhTmzNCcDDPrXmodqbHJR7oOiORNS/8H1q+iK6g=;
        b=aIHh6/8OHCYXfMQrpc74ZYmnhPojNEkycRBTPMzGGAoCAT6kUH+Q9T0tSYJ/Zm3TXo
         6CEVillSiv5zmH+TCl2Juc5Eckv8chTgf1nZrTpd5Iy2MolIp+9gQaEuDN6fJ2YpIDCp
         UuzA95ffJ+FbYnLGFAFk3gL3NhEpPoWEweSt7H+6n0I86qc8Jf0gVAU4MToVoYiYcx5S
         8w4fzy8/yyJU5fyLd2EiO9Vz6DG5C0vdDqp6id8c2RnOURsaCwHOCIdNQJ0WM3h5dJf3
         dwn+32Jxi+sOCVCEyvdCQQWvUaWj+zd7i1BTx1Sy7dAmTGZjCHHcWZgZk1bDCQ4s+qWd
         Jr5Q==
X-Gm-Message-State: AC+VfDyczf23HnDl7utGW78y7P+SbNtlGf6x7jQc3OfgZoo0Gm3akWQ9
	BDkVqmeqsnoALD5Cvd59fWw=
X-Google-Smtp-Source: ACHHUZ654Qpgl50uQ0TTsz+Sm+yXhr0g/S0spaoX5NDpQanCAD2nDXcpydjHPB8lZdE6LMp1HwPPLA==
X-Received: by 2002:a05:6a20:54a4:b0:101:1951:d491 with SMTP id i36-20020a056a2054a400b001011951d491mr32720818pzk.6.1684189654681;
        Mon, 15 May 2023 15:27:34 -0700 (PDT)
Received: from [192.168.86.26] (cpe-70-95-21-110.san.res.rr.com. [70.95.21.110])
        by smtp.gmail.com with ESMTPSA id l23-20020a62be17000000b006460751222asm8024272pff.38.2023.05.15.15.27.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 May 2023 15:27:34 -0700 (PDT)
Message-ID: <0df418ad-3492-4241-1837-55ed89b77e10@linux.com>
Date: Mon, 15 May 2023 15:27:31 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: alexander.deucher@amd.com, christian.koenig@amd.com, airlied@gmail.com,
 daniel@ffwll.ch, Xinhui.Pan@amd.com
References: <20230503231507.279172-1-sukrut.bellary@linux.com>
From: Sukrut Bellary <sukrut.bellary@linux.com>
In-Reply-To: <20230503231507.279172-1-sukrut.bellary@linux.com>
X-Spamd-Result: default: False [-3.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	FORGED_SENDER(0.30)[sukrut.bellary@linux.com,sukrutbellary@gmail.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.215.173:from];
	R_DKIM_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-0.999];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sukrut.bellary@linux.com,sukrutbellary@gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DMARC_NA(0.00)[linux.com];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BC4773E963
X-Spamd-Bar: ---
Message-ID-Hash: HA2N4ONWTRDTO3WNZLPZ4NWK37GTHT2K
X-Message-ID-Hash: HA2N4ONWTRDTO3WNZLPZ4NWK37GTHT2K
X-MailFrom: sukrut.bellary@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, Hawking.Zhang@amd.com, Jiadong.Zhu@amd.com, ray.huang@amd.com, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm:amd:amdgpu: Fix missing buffer object unlock in failure path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HA2N4ONWTRDTO3WNZLPZ4NWK37GTHT2K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


On 5/3/23 16:15, Sukrut Bellary wrote:
> smatch warning -
> 1) drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:3615 gfx_v9_0_kiq_resume()
> warn: inconsistent returns 'ring->mqd_obj->tbo.base.resv'.
> 
> 2) drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c:6901 gfx_v10_0_kiq_resume()
> warn: inconsistent returns 'ring->mqd_obj->tbo.base.resv'.
> 
> Signed-off-by: Sukrut Bellary <sukrut.bellary@linux.com>
> ---
>  drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c | 4 +++-
>  drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c  | 4 +++-
>  2 files changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c b/drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c
> index 8bd07ff59671..66d5c5d68454 100644
> --- a/drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c
> +++ b/drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c
> @@ -6891,8 +6891,10 @@ static int gfx_v10_0_kiq_resume(struct amdgpu_device *adev)
>  		return r;
>  
>  	r = amdgpu_bo_kmap(ring->mqd_obj, (void **)&ring->mqd_ptr);
> -	if (unlikely(r != 0))
> +	if (unlikely(r != 0)) {
> +		amdgpu_bo_unreserve(ring->mqd_obj);
>  		return r;
> +	}
>  
>  	gfx_v10_0_kiq_init_queue(ring);
>  	amdgpu_bo_kunmap(ring->mqd_obj);
> diff --git a/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c b/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
> index bce6919d666a..d5715d8a4128 100644
> --- a/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
> +++ b/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
> @@ -3617,8 +3617,10 @@ static int gfx_v9_0_kiq_resume(struct amdgpu_device *adev)
>  		return r;
>  
>  	r = amdgpu_bo_kmap(ring->mqd_obj, (void **)&ring->mqd_ptr);
> -	if (unlikely(r != 0))
> +	if (unlikely(r != 0)) {
> +		amdgpu_bo_unreserve(ring->mqd_obj);
>  		return r;
> +	}
>  
>  	gfx_v9_0_kiq_init_queue(ring);
>  	amdgpu_bo_kunmap(ring->mqd_obj);

Follow-up.
Could you please review this patch?


--
Regards,
Sukrut
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
