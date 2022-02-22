Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5A64BF99B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Feb 2022 14:42:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B90033EEFF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Feb 2022 13:42:00 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by lists.linaro.org (Postfix) with ESMTPS id 0820B3EEA1
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Feb 2022 13:41:59 +0000 (UTC)
Received: by mail-lf1-f52.google.com with SMTP id bu29so24966629lfb.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Feb 2022 05:41:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dYjRWsW9pcEcQ2t56kY0xhwAZ/vjldT5YxHAgh3ZMy8=;
        b=pd2VrkzjJ4DBKAhv8/hr9VAZh4WjtLOx7ruO96wujvdkx/wDgPKZa5mu60uS6OIePa
         Sa9iKw2/HEoCvRBUHHhYkkzuacsAL6Z6rJoNPxvLQuzftqPq74Q85SThu6HaspZs1IuE
         MpP4w255u+2HMw6vlJJjXSkvrtoL7TJL5rptqS72lZ5ap0OofJHvmEZd4UANtlq8tUTv
         5mRJFuS97fwv7YoArKXUtkOC02JRz8GSO5+N4d5b8f5hRdJgMiNCTTeoQeXYC1ZiqPUn
         4u+g5xMJwyogUDEcRQy2wZ3AU3S+ZcmdrYMdvBT6jeQx05vhucub6pJwijTBQKGpd7nG
         fLjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dYjRWsW9pcEcQ2t56kY0xhwAZ/vjldT5YxHAgh3ZMy8=;
        b=POOcI8WHWNkeI81erPVUP2zyyECS9SvvV0P7J0+Sf7+m4vRSuZ5IVt/hiU+RfzOxCH
         Uqx3XOpQSoPRNNBcGmspGq9c55iLohA+TZHFI+5PuBE4bEl96SfRq5SRMC6yLxgsf9vf
         M5c//Wkc8KNvPMSUX5HH/Wiq+JOMcY4bjHneR5qFVC+89bRZrUalw3aQ3IiGM6xrOhSU
         wiuIfFFNz4Jz5lHAbyDDdBMGte1lU23A4lYVeBqHTDy8y/ou7d42/62ohR8sdG+E0bDI
         mnuqiFxMI+zIW2HBcEGBAjCQEGQQlB74/uVr+Zt5FIr/TtXZyFeM7xcuKXbfBLeS1AeP
         pZIQ==
X-Gm-Message-State: AOAM533CjBCVqKu7601xWPoS1pVGErRyculV4wQWbibrsLpsJQ87Fc90
	GDc5611QjND/mWn0Dv6r7o1xwopBJRobuk8G74ic6QQa
X-Google-Smtp-Source: ABdhPJxt9zV8dVY/0aDDpkL90WGgkd5FN2NEf8alpUvu7/9ecS098UHve0gpczfD3R14rIkO5fSzXtB8tRbj+L3iREs=
X-Received: by 2002:a19:ee17:0:b0:443:5f2c:289e with SMTP id
 g23-20020a19ee17000000b004435f2c289emr17236703lfb.57.1645537317803; Tue, 22
 Feb 2022 05:41:57 -0800 (PST)
MIME-Version: 1.0
References: <tencent_22C6C2E595DEFED1417A98A5736539482809@qq.com>
In-Reply-To: <tencent_22C6C2E595DEFED1417A98A5736539482809@qq.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 22 Feb 2022 19:11:46 +0530
Message-ID: <CAO_48GGSPnQzo2D3zK-TuWHSdHn6XGV0=9MuF2d06XSAn1isVQ@mail.gmail.com>
To: xkernel.wang@foxmail.com
Message-ID-Hash: KDD3MEANOG2Z7P3QSFCBWV6ONVEDLDMJ
X-Message-ID-Hash: KDD3MEANOG2Z7P3QSFCBWV6ONVEDLDMJ
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: check the return value of kstrdup()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KDD3MEANOG2Z7P3QSFCBWV6ONVEDLDMJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Xiaoke,

On Tue, 22 Feb 2022 at 17:00, <xkernel.wang@foxmail.com> wrote:
>
> From: Xiaoke Wang <xkernel.wang@foxmail.com>
>
> kstrdup() is a memory allocation function which can return NULL when
> some internaly memory errors happen. It is better to check the return
> value of it to prevent further wrong memory access.
Thanks for the patch; looks sane.
>
> Signed-off-by: Xiaoke Wang <xkernel.wang@foxmail.com>
Acked-by: Sumit Semwal <sumit.semwal@linaro.org>

Will queue it up.
> ---
>  drivers/dma-buf/selftest.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/dma-buf/selftest.c b/drivers/dma-buf/selftest.c
> index c60b694..2c29e2a 100644
> --- a/drivers/dma-buf/selftest.c
> +++ b/drivers/dma-buf/selftest.c
> @@ -50,6 +50,9 @@ static bool apply_subtest_filter(const char *caller, const char *name)
>         bool result = true;
>
>         filter = kstrdup(__st_filter, GFP_KERNEL);
> +       if (!filter)
> +               return false;
> +
>         for (sep = filter; (tok = strsep(&sep, ","));) {
>                 bool allow = true;
>                 char *sl;
> --


Best,
Sumit.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
