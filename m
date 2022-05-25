Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6755345A5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 May 2022 23:08:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 232773EEBF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 May 2022 21:08:31 +0000 (UTC)
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	by lists.linaro.org (Postfix) with ESMTPS id 4DEAB3EC05
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 May 2022 21:08:26 +0000 (UTC)
Received: by mail-oo1-f41.google.com with SMTP id p6-20020a4ad446000000b0040e8d086ee9so1763949oos.4
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 May 2022 14:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TaCYLf7kRedBe+2EoHW9DrMiYYCRi0awPrgRA1lZnEk=;
        b=blydpWvrsBy9tEUoVG4ffsFO/xJP4nrXC+7rieZbPqWER6T3GKKOsWoMKYs5XYHSIH
         Ibvd8k71EtDFjvFDjGYiRHkrQMKVc8YATLu9aJZUYstDfrBCqcn+MpXiJxA4sSWfjgGS
         FXWZKD8sfRRwlNvzIvAlcIeLexpGvPG6uVoc365XEs1WV08dtsIt4XgFz7vSsgQLFzzg
         7/ARMXSkky0+5LOP857bXubBqb9hU2Z77O0C4pc1tiWR7fD9kP/fhWYwUZYSaeuwOnbM
         1VAvOftERug7SSsXdoY01tCKDBJBCPRx09xh54YXmJ66v2JNkylW2LvkUuboUnTtk0Ik
         bGzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TaCYLf7kRedBe+2EoHW9DrMiYYCRi0awPrgRA1lZnEk=;
        b=5y/fRsK9V8+GQEDByMarmUe2HTNtSSt82p7I1AUNh4tOF7jGjNxEpDW+meEQe2Kxyl
         8EE2RMnTE5qiG/mfAwrvrCfTeyfOqhIIwH64Ud+CQh9xlrzhXNDAF8Wfpn974b58GKJZ
         EOSgvRs7aZb6w++Rlt4IFK/GrGu/9da2/qLx929so4ScCAmrcNaHgoStInQhQvTj6AMz
         jbAr2pkV6uIo8Di0ft8Cl2ipCqmC+CkEBKqDUV67PRp+FGYNdLMBRRQBQUkwjpcXzckt
         pdXtyM8UlTOSYavbszCgO/bhNQxrW1vR8AsxeQSTcHwm5psG6IOhu7PBvKosPotpVFwv
         EiLQ==
X-Gm-Message-State: AOAM532PeSqcHBotyvih6LvtXuE1N+j2btAehAnpI3z6IONfbr4m61EW
	2Zq2U3ZVR8rDqDXHV/Kql/mXAO+pNyoZsB4QNgY=
X-Google-Smtp-Source: ABdhPJzbqKxYwN6Ji1qWni1pwlJhdkinYGiZvGryQoI5D2KswOZYkUHSjFnHi5UMtATztbRrWUIHys0RHaMggMtMZHY=
X-Received: by 2002:a4a:2857:0:b0:40e:5d49:da1b with SMTP id
 c23-20020a4a2857000000b0040e5d49da1bmr11718303oof.23.1653512905762; Wed, 25
 May 2022 14:08:25 -0700 (PDT)
MIME-Version: 1.0
References: <20220525190914.60544-1-kernel@mitchellaugustin.com>
In-Reply-To: <20220525190914.60544-1-kernel@mitchellaugustin.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 25 May 2022 17:08:14 -0400
Message-ID: <CADnq5_Oeb81h+x+9XoTX_8fDDxAvPgGPAHndjNq7jB+bbvENfg@mail.gmail.com>
To: Mitchell Augustin <kernel@mitchellaugustin.com>
Message-ID-Hash: GLCWL6WO4QPZ5BFC7MCXYJG6GAYIXVDE
X-Message-ID-Hash: GLCWL6WO4QPZ5BFC7MCXYJG6GAYIXVDE
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Deucher, Alexander" <alexander.deucher@amd.com>, Christian Koenig <christian.koenig@amd.com>, xinhui pan <Xinhui.Pan@amd.com>, Dave Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Andrey Grodzovsky <andrey.grodzovsky@amd.com>, "Chen, Guchun" <guchun.chen@amd.com>, "Quan, Evan" <evan.quan@amd.com>, Kevin Wang <kevin1.wang@amd.com>, Lang Yu <lang.yu@amd.com>, Shaoyun Liu <shaoyun.liu@amd.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, linux-media <linux-media@vger.kernel.org>, Maling list - DRI developers <dri-devel@lists.freedesktop.org>, amd-gfx list <amd-gfx@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] amdgpu: amdgpu_device.c: Removed trailing whitespace
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GLCWL6WO4QPZ5BFC7MCXYJG6GAYIXVDE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Applied.  Thanks!

Alex

On Wed, May 25, 2022 at 4:38 PM Mitchell Augustin
<kernel@mitchellaugustin.com> wrote:
>
> Removed trailing whitespace from end of line in amdgpu_device.c
>
> Signed-off-by: Mitchell Augustin <kernel@mitchellaugustin.com>
> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> index 49f734137f15..c531c05163cf 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> @@ -3365,7 +3365,7 @@ bool amdgpu_device_asic_has_dc_support(enum amd_asic_type asic_type)
>   */
>  bool amdgpu_device_has_dc_support(struct amdgpu_device *adev)
>  {
> -       if (amdgpu_sriov_vf(adev) ||
> +       if (amdgpu_sriov_vf(adev) ||
>             adev->enable_virtual_display ||
>             (adev->harvest_ip_mask & AMD_HARVEST_IP_DMU_MASK))
>                 return false;
> @@ -5762,7 +5762,7 @@ int amdgpu_in_reset(struct amdgpu_device *adev)
>  {
>         return atomic_read(&adev->reset_domain->in_gpu_reset);
>         }
> -
> +
>  /**
>   * amdgpu_device_halt() - bring hardware to some kind of halt state
>   *
> --
> 2.36.1
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
