Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DBD57B2A2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 10:16:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AF4D5402F5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 08:16:19 +0000 (UTC)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	by lists.linaro.org (Postfix) with ESMTPS id 20DA43EC1C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jun 2022 09:48:47 +0000 (UTC)
Received: by mail-yb1-f176.google.com with SMTP id i7so21231914ybe.11
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jun 2022 02:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nnzSecJwwLdHdpah55TWOev8stQAWT9vGpRIkDipvhw=;
        b=I7H7zqGdOfwwpsDfe9uF8VojqU+qtuDQRgt7FtGBoFlVFCSJN9YFG+1NWGSiIuox8S
         W+KTN+aOhO/ktobsqKb4feN5yBBDNx0wm/w13zu9GE1MpTeJ9BkKCl/bKqoxTj+butyG
         02/IG1kxsMpY40YD0RA6epXortCUPMP7sMFf2G2KAsGaM15F0G20pAiOcgk96rxpR8ke
         4UAfgPRBQGXYCKfOAsUeqXv2EnFCWpyg0H2uCQj9u81Sa+kwI5qveTjwZLSeOF0LEPCz
         orDz4fOkku7jaCsorv9stb6v1uGkuYXGTaB+8k6Pjso/QtNIucekoLsh+TNJkKdQ3yXO
         +FxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nnzSecJwwLdHdpah55TWOev8stQAWT9vGpRIkDipvhw=;
        b=I5Yr73BWMh+jhKCiMB+hHgItJB8dkrDf0GUU6J2n49KfAS1kZRw8v0KvgrnGpEhtX5
         Sv7ZkvD5z7GK6QDOvSRl/x/75UWRoyVftFkSPbBFKEQWr6fl3UZwpbfMAIbrNnu5Lwgx
         Sjrwh14s+KPwGQ6NfrnklKZEemNwEByD5anLmuOqQ53BZyV/vPyqSYzoqd4Wl6erL2G5
         YMFWGWbtU4ESqjjl1N+b9+WLAmrfT1UUgchP3zejgn0lqsLqfS21ZADdOOBVZShwL6xr
         e53+gTJwZR+SbYb2MCimftE59tDxxdh/07INQFi7KPc0mKFL45cNmuCfo0zlCzKY10BX
         F6Bw==
X-Gm-Message-State: AJIora9HdqCvb4Wb+ItZV0okkh7nTzxJxnIsFnK23S8g75dsxlVuT5/K
	jaaKqvcfx2VYR8Youek236YvlOuyQ/nV15bAfeDU/g==
X-Google-Smtp-Source: AGRyM1vPz47fcquk2IzBhzy+bTY7luIs+lRfkEnNwxblxcyPcZABp99gUxefsLLFGaLceF6zmZkkxVh4KZO10IEsTiQ=
X-Received: by 2002:a05:6902:152:b0:66c:e116:6a7 with SMTP id
 p18-20020a056902015200b0066ce11606a7mr8598779ybh.533.1656409726603; Tue, 28
 Jun 2022 02:48:46 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1656409369.git.mchehab@kernel.org> <687a2e724020d135bc7dfef0ec9010a00ecc0a3a.1656409369.git.mchehab@kernel.org>
In-Reply-To: <687a2e724020d135bc7dfef0ec9010a00ecc0a3a.1656409369.git.mchehab@kernel.org>
From: Marco Elver <elver@google.com>
Date: Tue, 28 Jun 2022 11:48:10 +0200
Message-ID: <CANpmjNPbHYKJqFB-qNjPWsLQyk3fWrqfU3qob_E-8KMLrzpCQQ@mail.gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
X-MailFrom: elver@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OLKBNLAJBPOMWLBR6TLBUOCGZ6YZGHH7
X-Message-ID-Hash: OLKBNLAJBPOMWLBR6TLBUOCGZ6YZGHH7
X-Mailman-Approved-At: Wed, 20 Jul 2022 08:16:17 +0000
CC: Linux Doc Mailing List <linux-doc@vger.kernel.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Alexander Potapenko <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, kasan-dev@googlegroups.com, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 14/22] kfence: fix a kernel-doc parameter
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OLKBNLAJBPOMWLBR6TLBUOCGZ6YZGHH7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 28 Jun 2022 at 11:46, Mauro Carvalho Chehab <mchehab@kernel.org> wrote:
>
> The kernel-doc markup is missing the slab pointer description:
>
>         include/linux/kfence.h:221: warning: Function parameter or member 'slab' not described in '__kfence_obj_info'
>
> Document it.
>
> Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>

Reviewed-by: Marco Elver <elver@google.com>

Thank you.

> ---
>
> To avoid mailbombing on a large number of people, only mailing lists were C/C on the cover.
> See [PATCH 00/22] at: https://lore.kernel.org/all/cover.1656409369.git.mchehab@kernel.org/
>
>  include/linux/kfence.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/include/linux/kfence.h b/include/linux/kfence.h
> index 726857a4b680..9c242f4e9fab 100644
> --- a/include/linux/kfence.h
> +++ b/include/linux/kfence.h
> @@ -210,6 +210,7 @@ struct kmem_obj_info;
>   * __kfence_obj_info() - fill kmem_obj_info struct
>   * @kpp: kmem_obj_info to be filled
>   * @object: the object
> + * @slab: pointer to slab
>   *
>   * Return:
>   * * false - not a KFENCE object
> --
> 2.36.1
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
