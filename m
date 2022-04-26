Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C3470512AE4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 07:29:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0529347FB5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 05:29:35 +0000 (UTC)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	by lists.linaro.org (Postfix) with ESMTPS id 08A053E829
	for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Apr 2022 05:20:27 +0000 (UTC)
Received: by mail-vs1-f53.google.com with SMTP id c62so4934036vsc.10
        for <linaro-mm-sig@lists.linaro.org>; Mon, 25 Apr 2022 22:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qmipgUUMUxm6hMiwU+RA9EjYQMfT2FPr6LOz5agz4nY=;
        b=YReamCBovqxWJMpctPfDpKZNrx1dmPy/xjCTi+m48IelAKatIYLGf3lCKhKQFPrsgZ
         AsDjGq/B7lC/s/JDzPp/2t3Id3Z4WppDo5cfo0N1xS9bcRDTjSMFMmregTw0QqtHUT5+
         QqTubU+P2H7VCCr/CXPw+q2O7r2G6RaT7rU8Rjww1FVngj29exEVbfRnwW9XMQisQ2fP
         T3So57d/E5ftsGh1/V159jPSYVkNlCk2m4hH1uj5zv+pazl5KzRgbryKHTc3uK5Q0gDV
         HCXHahhWEwRey/g5xxUpmiNIYc2g1oIAOmIcCcwnekFqEk0bOQaQNjzWmgIntpiCoe4/
         CtNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qmipgUUMUxm6hMiwU+RA9EjYQMfT2FPr6LOz5agz4nY=;
        b=rHUgX/6Fjiio2Vo6LdewpRJFO8lY/xyTSZllyDkhGmEmYX68ppQIPw8x7+0nBy/ZPo
         yUFXzt4nPp2su8Swkq7XZ4wHKDiJAuPn7J5eNGn/o8C19XcuzL7VQpX9sBy2Bl0KcBhU
         u7vNb6nwY89ebadmm1zGNx0S6JLOhwn9lvGHc9/X0MQicclZ0r2aSdxS0lDjNCz59UTh
         mtl9R2bH+97R4nTVL96U7/yKaOy+manEdHuiquD7R5e4by7rxsmulehCoNyicbA39YCv
         zpRDTczOvakJ5S+SdhuE6hXPaosZLHZhSL4BERNUezhoIT/NkFABps2khk4t9OUohQfm
         plvA==
X-Gm-Message-State: AOAM531zEumy5S4HA1UY6ZA0aGvJN4utNWNDgqshsYSy/BsbeKAAX9z+
	7HPn8W1IaKVoBB+WF6J0/V7RoxutKagq9Ye78oI=
X-Google-Smtp-Source: ABdhPJwW7mSpFATTE7BSdK+yHISsvHvDyufD5OFhDBveJm9IFoOlVggyKp3WbRiXt2XfYMoessN1mzZ2tYzvpxGGMho=
X-Received: by 2002:a67:dd03:0:b0:32c:a569:4f17 with SMTP id
 y3-20020a67dd03000000b0032ca5694f17mr4129187vsj.86.1650950426553; Mon, 25 Apr
 2022 22:20:26 -0700 (PDT)
MIME-Version: 1.0
References: <20220419135908.39606-1-cai.huoqing@linux.dev>
In-Reply-To: <20220419135908.39606-1-cai.huoqing@linux.dev>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Tue, 26 Apr 2022 06:20:14 +0100
Message-ID: <CALeDE9NJcruoVU1v0uG2GSJFoPbsob+YTzW94wG2+DbPiu2xKA@mail.gmail.com>
To: Cai Huoqing <cai.huoqing@linux.dev>
X-MailFrom: pbrobinson@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FTCVARXDNUTLRB6UJCS5N2INULWHY5Z4
X-Message-ID-Hash: FTCVARXDNUTLRB6UJCS5N2INULWHY5Z4
X-Mailman-Approved-At: Thu, 28 Apr 2022 05:29:30 +0000
CC: Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/2] drm/nvdla: Add driver support for NVDLA
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FTCVARXDNUTLRB6UJCS5N2INULWHY5Z4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Apr 19, 2022 at 3:08 PM Cai Huoqing <cai.huoqing@linux.dev> wrote:
>
> The NVIDIA Deep Learning Accelerator (NVDLA) is an open source IP
> which is integrated into NVIDIA Jetson AGX Xavier,
> so add driver support for this accelerator.
>
> NVDLA introduce:
> http://nvdla.org/primer.html
>
> User mode driver:
> https://github.com/caihuoq/nvdla/tree/main/sw/umd
>
>
> Cai Huoqing (2):
>   MAINTAINERS: Add the driver info of the NVDLA
>   drm/nvdla: Add driver support for NVDLA

Are there device tree bindings that are required to test this IP, are
there additions for the Xavier SoCs to test them? They should also be
published as patches as part of this series.

>  MAINTAINERS                             |    7 +
>  drivers/gpu/drm/Kconfig                 |    2 +
>  drivers/gpu/drm/Makefile                |    1 +
>  drivers/gpu/drm/nvdla/Kconfig           |    8 +
>  drivers/gpu/drm/nvdla/Makefile          |   19 +
>  drivers/gpu/drm/nvdla/nvdla_bdma.c      |  200 +
>  drivers/gpu/drm/nvdla/nvdla_cache.c     |  215 +
>  drivers/gpu/drm/nvdla/nvdla_cdp.c       |  300 ++
>  drivers/gpu/drm/nvdla/nvdla_common.c    |  295 ++
>  drivers/gpu/drm/nvdla/nvdla_common.h    |  835 +++
>  drivers/gpu/drm/nvdla/nvdla_conv.c      |  683 +++
>  drivers/gpu/drm/nvdla/nvdla_drm.c       |  695 +++
>  drivers/gpu/drm/nvdla/nvdla_drm.h       |  127 +
>  drivers/gpu/drm/nvdla/nvdla_engine.c    |  233 +
>  drivers/gpu/drm/nvdla/nvdla_engine.h    |  272 +
>  drivers/gpu/drm/nvdla/nvdla_gem.c       |  393 ++
>  drivers/gpu/drm/nvdla/nvdla_ioctl.h     |   99 +
>  drivers/gpu/drm/nvdla/nvdla_pdp.c       |  446 ++
>  drivers/gpu/drm/nvdla/nvdla_reg.h       | 6411 +++++++++++++++++++++++
>  drivers/gpu/drm/nvdla/nvdla_rubik.c     |  217 +
>  drivers/gpu/drm/nvdla/nvdla_sched.h     |   52 +
>  drivers/gpu/drm/nvdla/nvdla_scheduler.c | 1005 ++++
>  drivers/gpu/drm/nvdla/nvdla_sdp.c       |  728 +++
>  23 files changed, 13243 insertions(+)
>  create mode 100644 drivers/gpu/drm/nvdla/Kconfig
>  create mode 100644 drivers/gpu/drm/nvdla/Makefile
>  create mode 100644 drivers/gpu/drm/nvdla/nvdla_bdma.c
>  create mode 100644 drivers/gpu/drm/nvdla/nvdla_cache.c
>  create mode 100644 drivers/gpu/drm/nvdla/nvdla_cdp.c
>  create mode 100644 drivers/gpu/drm/nvdla/nvdla_common.c
>  create mode 100644 drivers/gpu/drm/nvdla/nvdla_common.h
>  create mode 100644 drivers/gpu/drm/nvdla/nvdla_conv.c
>  create mode 100644 drivers/gpu/drm/nvdla/nvdla_drm.c
>  create mode 100644 drivers/gpu/drm/nvdla/nvdla_drm.h
>  create mode 100644 drivers/gpu/drm/nvdla/nvdla_engine.c
>  create mode 100644 drivers/gpu/drm/nvdla/nvdla_engine.h
>  create mode 100644 drivers/gpu/drm/nvdla/nvdla_gem.c
>  create mode 100644 drivers/gpu/drm/nvdla/nvdla_ioctl.h
>  create mode 100644 drivers/gpu/drm/nvdla/nvdla_pdp.c
>  create mode 100644 drivers/gpu/drm/nvdla/nvdla_reg.h
>  create mode 100644 drivers/gpu/drm/nvdla/nvdla_rubik.c
>  create mode 100644 drivers/gpu/drm/nvdla/nvdla_sched.h
>  create mode 100644 drivers/gpu/drm/nvdla/nvdla_scheduler.c
>  create mode 100644 drivers/gpu/drm/nvdla/nvdla_sdp.c
>
> --
> 2.25.1
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
