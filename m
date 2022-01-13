Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7FC48D64D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jan 2022 12:08:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 25FD73ED8D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jan 2022 11:08:04 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by lists.linaro.org (Postfix) with ESMTPS id 7840A3ED2E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Jan 2022 11:08:00 +0000 (UTC)
Received: by mail-lf1-f52.google.com with SMTP id p27so6483927lfa.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Jan 2022 03:08:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uHTsUg3HEau620/3Kt1gAirKaZRBvN3yED5BHth3EE8=;
        b=dAGW/+aPFYxzL5NwBWOLkEHowvoffuEhYijSaiZkmNoQ7tuOanFh14QMD1SolHX+Od
         ZcQGJCoWKfare85WMgR9oIfvWZRXuXjz3JN/hl2iXKThx6a7qflq5E+NjfIWKHYvVMnJ
         0L23TtFXT1C33VTjgoMo5ehRQnuCZL1YbCxvF4lV0i8UWUx6MOouRyFUypddAC1MK1c7
         sl0ID7467dkjgodXqgUhP1qHr9sjR15RC2lnPV4sknEKUu3H8/MDtGh5HT3skdCRu1d4
         FkjJgtrnEkOa5XbAr8Vs2+79TeXdJ6w99SGIbEt+kaxRJZ9c6z6NglWMO3XiJvM1/T3c
         flZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uHTsUg3HEau620/3Kt1gAirKaZRBvN3yED5BHth3EE8=;
        b=c3++D3pyEOKWi7LlP3WedlmFIJGzhpy2CfViM0uJRMgfMwXDZ0vz3UOSwnJAsiPMdW
         VNukf+aoSfsYahncn68IdozpCUJxEdyDVv1eZLcxQJ5Ft2P/y/onS0X+n75VPCIM2hK2
         laQLC3vqtet2JrPV5JaFyTYhP7+rE8gnf7D4HzXTudsNxiENXRNeoTl4KzxNMr/fHoqk
         LGfVKj6t7zIaieL5ASug61OvUakQFVq1N61NAJVe18jDxiN52zsk80r0Re7Z352Omqgo
         u04Xigs1c616pG83wmxwoUKqbIbG+olHzIWyOvbu5URmFDDuqp7XI95JD5VSp9qJsAfT
         nbmw==
X-Gm-Message-State: AOAM530Sz5o4Y+YJ1k9fIJMRaxIAIaXPoFCwn1IfXquNIDzqIjkTnAjL
	/JKslXqUA3oQGwJ5vaumhij2ymmtiX+92M+PTCdPq7Qi
X-Google-Smtp-Source: ABdhPJyRSSwu/fXZpwOWb9PbbQDN2SucJ/Z3pJ3GPSqtm5fyS7O/knAwPvWu/fu3VvtFCd2Fz4E2+/3NTNhYY5/F8U0=
X-Received: by 2002:a2e:93c9:: with SMTP id p9mr2661168ljh.63.1642072079166;
 Thu, 13 Jan 2022 03:07:59 -0800 (PST)
MIME-Version: 1.0
References: <20220104073545.124244-1-o451686892@gmail.com> <CALAqxLVSaZywOOnF=67X+gu9eo+ZmKQmW3wUOOKEM0rUZ4K5gg@mail.gmail.com>
In-Reply-To: <CALAqxLVSaZywOOnF=67X+gu9eo+ZmKQmW3wUOOKEM0rUZ4K5gg@mail.gmail.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 13 Jan 2022 16:37:47 +0530
Message-ID: <CAO_48GHsoixQ8kpdMTnKy--jC+vphLEmf7L_1eDivRV=tdwZog@mail.gmail.com>
To: John Stultz <john.stultz@linaro.org>
Message-ID-Hash: 2WGSPEDFR7DSCMCUEHRK62LH5YK5ZKLH
X-Message-ID-Hash: 2WGSPEDFR7DSCMCUEHRK62LH5YK5ZKLH
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Weizhao Ouyang <o451686892@gmail.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@kernel.org>, Brian Starkey <brian.starkey@arm.com>, christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: cma_heap: Fix mutex locking section
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2WGSPEDFR7DSCMCUEHRK62LH5YK5ZKLH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello Weizhao,

On Tue, 4 Jan 2022 at 13:13, John Stultz <john.stultz@linaro.org> wrote:
>
> On Mon, Jan 3, 2022 at 11:36 PM Weizhao Ouyang <o451686892@gmail.com> wrote:
> >
> > Fix cma_heap_buffer mutex locking critical section to protect vmap_cnt
> > and vaddr.
> >
> > Fixes: a5d2d29e24be ("dma-buf: heaps: Move heap-helper logic into the cma_heap implementation")
> > Signed-off-by: Weizhao Ouyang <o451686892@gmail.com>
>
> Looks good to me!  Thanks so much for sending this in!
Thanks for the patch; it's merged to drm-misc-fixes.
>
> Acked-by: John Stultz <john.stultz@linaro.org>
>
> thanks again
> -john


Best,
Sumit.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
