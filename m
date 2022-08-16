Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DB45F4477
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Oct 2022 15:41:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC7713F4B3
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Oct 2022 13:41:14 +0000 (UTC)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	by lists.linaro.org (Postfix) with ESMTPS id E6DE13F496
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Aug 2022 08:18:07 +0000 (UTC)
Received: by mail-pg1-f172.google.com with SMTP id d71so8616386pgc.13
        for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Aug 2022 01:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=yiBicl/xtck+sUvDa6HbwVr3KCpBiQ3kP9sWsGd0v+M=;
        b=uT3jiYPYFRn7lq9viYTDzroDVdXL8pYjwBzK6ZhdPWJ3ales5ct7XINz7ercxdfD7Y
         rvax/AK/RPxyH9Qyvj6cKGyu5Z9eSVcZeTL3ghWM02DMNeRTu1dNZ7beU/wveqK5kb+b
         cgTDsiraqeHQID8d9ZRhhEi710zRj0h9tNoJIy/ZIZdDiEU/5Tq3uSnDDCMR184RYyCg
         LVWxI+KwzGdKQ6ji/qPZRP+nel4pcCCfqXweiR63F69BqC+Nt+6QIM31Ab1sSdW2FTPk
         LjcGqOsRMi5qhAbnOjRjnE/4ICeEvzLIfRc/1JoVKPEsJ2GoYjX+SmVkYwcf+ocJax8W
         K0eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=yiBicl/xtck+sUvDa6HbwVr3KCpBiQ3kP9sWsGd0v+M=;
        b=f9nrTCPXXhw3xrSyBcFLpe+nDdt4pJBEgPEXkkS7bjfoIwRSEiB8VjAisNvFK9lqE+
         Fpina7g2jOWsSTdKK2GeBOmVXpwok4tz1fFEUhiZZBeMwRXsqjHlKi8czPFBtNgnbDca
         siF8c6pgQ057mnbkJZluMR1wHUH0Bj9Ttm8krnX+39jAFTdGCVYPcJ27FaX+Wb4336v2
         h5ihnnbQ6sXKzqIxGI5OzWefQ8wx7T2em4o6uqPUtCAomnAP2FBSxpgf3vRalla21ciJ
         FB+aMxc0ojjrgFrjk4cssGyvjD2atSlzNssGx+0b1caKR2j8pV/BnsAE0DLzSA93qzTo
         4kAw==
X-Gm-Message-State: ACgBeo3jsRmS3pIKNwRxFe9qG2j0DxqseZsOMclO/l4GgOdTUc+64eMK
	p0zdCrRpSXbK2JQgPnmmZOD02SvNZpTosBYJpCXWyquZ
X-Google-Smtp-Source: AA6agR7a2co2/3EHjLJWWfyl0Y9FC9Qup8Vvr947CQmLmaKAXgb15xFZYz1xNiLfRaHjV9zeEjmoSBme+mzy7PUZf/A=
X-Received: by 2002:a63:e217:0:b0:41a:69b1:a68e with SMTP id
 q23-20020a63e217000000b0041a69b1a68emr16488504pgh.428.1660637887011; Tue, 16
 Aug 2022 01:18:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220812143055.12938-1-olivier.masse@nxp.com>
In-Reply-To: <20220812143055.12938-1-olivier.masse@nxp.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Tue, 16 Aug 2022 10:17:56 +0200
Message-ID: <CAHUa44EgA1btRyj2ByooyLr9Q+8AmW=9EfjtQFxyr7DuCXASvA@mail.gmail.com>
To: Olivier Masse <olivier.masse@nxp.com>
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YRDVUO4XOZFNVYVIOFVXFTEZ3IGUO25C
X-Message-ID-Hash: YRDVUO4XOZFNVYVIOFVXFTEZ3IGUO25C
X-Mailman-Approved-At: Tue, 04 Oct 2022 13:40:57 +0000
CC: etienne.carriere@linaro.org, sumit.garg@linaro.org, sumit.semwal@linaro.org, christian.koenig@amd.com, op-tee@lists.trustedfirmware.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, clement.faure@nxp.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/1] tee: Add tee_shm_register_fd
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YRDVUO4XOZFNVYVIOFVXFTEZ3IGUO25C/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Olivier,

On Fri, Aug 12, 2022 at 4:31 PM Olivier Masse <olivier.masse@nxp.com> wrote:
>
> Add a new ioctl called TEE_IOC_SHM_REGISTER_FD to register a
> shared memory from a dmabuf file descriptor.
> This new ioctl will allow the Linux Kernel to register a buffer
> to be used by the Secure Data Path OPTEE OS feature.
>
> Please find more information here:
> https://static.linaro.org/connect/san19/presentations/san19-107.pdf
>
> Patch tested on Hikey 6220.

What's new in this V2?

Thanks,
Jens

>
> Etienne Carriere (1):
>   tee: new ioctl to a register tee_shm from a dmabuf file descriptor
>
>  drivers/tee/tee_core.c   | 38 +++++++++++++++
>  drivers/tee/tee_shm.c    | 99 +++++++++++++++++++++++++++++++++++++++-
>  include/linux/tee_drv.h  | 11 +++++
>  include/uapi/linux/tee.h | 29 ++++++++++++
>  4 files changed, 175 insertions(+), 2 deletions(-)
>
> --
> 2.25.0
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
