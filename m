Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF714941E9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jan 2022 21:37:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6D5CC3EE93
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jan 2022 20:37:44 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	by lists.linaro.org (Postfix) with ESMTPS id 9D9A73EE00
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 20:37:40 +0000 (UTC)
Received: by mail-lf1-f44.google.com with SMTP id x7so12983998lfu.8
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 12:37:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SVNoxQMp637bgUGyLKUQMTT6jCUfGMhBKrAhjOzC1jA=;
        b=Vw/hy5bg5C+CCYO+oJtgWYZCGRowuXfpuM1y/pli43kr+OiB3OWzkR6ZyW+nfXxt/s
         VAn2AjX3mL+nlHsEF9z/pBhrlFgPcsEA0h1sAo1ZC4YcWsIWZ0jeb+wpDXa+U2omlUCF
         pf/73OVbaBLU61/xMVSHktQI827IhnQn2hI4w8Tkbj/fmE8A6Xntpo4ktyfN/ATLaSyR
         OmbGO1wuYpDN6JCPJ6apqXqpoeOCB/ZbqWFXSeJZIDyaqZ4S0vxFtOgFaUm3xw+cnlGx
         I1oFnxocUDYadU9R73MgSd6PbQAJyeaWf6JpFnbLe1rT3w0y4YtI4EsZ5WHxq0hL/Blm
         wwzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SVNoxQMp637bgUGyLKUQMTT6jCUfGMhBKrAhjOzC1jA=;
        b=x/0eKdxMPHpH2yZWxNRN6QPg9TDgBenxN4fXuCgilN/atEb4oCnX08cjk+dvmHYfGv
         LgpFYJhpO7mahPMUoqEJ9OTQ/f7ndR4khYQ7IGnGCeh10R7L9/sXIfVmw+nIl2GKktdS
         0xs8tFTLsaZJ0GAbmhiMc5+CZHiyqN461IWHqqKMkzRie5GyYr/mMD0GmgdXqwPllhX+
         hzRogggpzWtkeyo298OSJCurk4Fhrnh5BmJfQZIc7ypgWmYF5RG2woPiD7Y/lmWuPzDa
         rZps9K9sTIZq28TYRPd3rgRk98hehdxPpw12x1ilMzTCmI+UYuF19aV0xcHuC/MXYQyQ
         0XWg==
X-Gm-Message-State: AOAM531O4vocGFX9DeFJDcsx55/7aqnPmrnJvVYDfeLdadgwh3ZDLjdS
	/j3u+zZEGamE/cL308JOmFbglOuJNHbrokKCJqm9mfm4
X-Google-Smtp-Source: ABdhPJwjspQiMNHOBlTaaj+hdTY9hJrpsFobebo94UsQ78o3vrS70VesOp4vSiK9m1G+NqmP7oa+dvJBc2Sn675qSo0=
X-Received: by 2002:a05:6512:329b:: with SMTP id p27mr30040874lfe.36.1642624659492;
 Wed, 19 Jan 2022 12:37:39 -0800 (PST)
MIME-Version: 1.0
References: <CAO_48GF=ttKqSOm9GRoA3Mq+-RQOtRjWp449XPcz-wH=kjaTjw@mail.gmail.com>
 <20220113123406.11520-1-guangming.cao@mediatek.com> <4f88205c1b344aea8608960e2f85b8f4@intel.com>
 <e657f5257cbf4955817b0bbf037de9f9@intel.com> <24157767-dc29-bbdd-5428-d89ecc6b9606@amd.com>
 <CALAqxLXRtYDNQ8y1efVGa4SwUH_oAaHviZFjsOVSNFmUHnCCeQ@mail.gmail.com>
 <6b8182a1-7cdc-7369-5c34-e6d0c24efcca@amd.com> <82faa62f1bc946cf2f9ee2f7d15c567162238eab.camel@mediatek.com>
 <CALAqxLUSjHoLpgFLcvqmDfv7Uip2VwHS5d_5x2nzw=P3rA2NDA@mail.gmail.com> <f09938519f1fcf51f20a0de5eb4063b0ff1a1e87.camel@mediatek.com>
In-Reply-To: <f09938519f1fcf51f20a0de5eb4063b0ff1a1e87.camel@mediatek.com>
From: John Stultz <john.stultz@linaro.org>
Date: Wed, 19 Jan 2022 12:37:27 -0800
Message-ID: <CALAqxLUtK8V9LgC-DY+tkzFYyWfzF+JhbrLZk6UhEG57HQBDSA@mail.gmail.com>
To: "Guangming.Cao" <guangming.cao@mediatek.com>
Message-ID-Hash: YFSBBTK746KSOIP7LKH2S7LCJ6KEAUL2
X-Message-ID-Hash: YFSBBTK746KSOIP7LKH2S7LCJ6KEAUL2
X-MailFrom: john.stultz@linaro.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "wsd_upstream@mediatek.com" <wsd_upstream@mediatek.com>, "libo.kang@mediatek.com" <libo.kang@mediatek.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "yf.wang@mediatek.com" <yf.wang@mediatek.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "lmark@codeaurora.org" <lmark@codeaurora.org>, "benjamin.gaignard@linaro.org" <benjamin.gaignard@linaro.org>, "bo.song@mediatek.com" <bo.song@mediatek.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "labbott@redhat.com" <labbott@redhat.com>, "mingyuan.ma@mediatek.com" <mingyuan.ma@mediatek.com>, "jianjiao.zeng@mediatek.com" <jianjiao.zeng@mediatek.com>, "linux-media@v
 ger.kernel.org" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] dma-buf: dma-heap: Add a size check for allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YFSBBTK746KSOIP7LKH2S7LCJ6KEAUL2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Jan 19, 2022 at 1:58 AM Guangming.Cao
<guangming.cao@mediatek.com> wrote:
> On Fri, 2022-01-14 at 17:17 -0800, John Stultz wrote:
> > If the max value is per-heap, why not enforce that value in the
> > per-heap allocation function?
> >
> > Moving the check to the heap alloc to me seems simpler to me than
> > adding complexity to the infrastructure to add a heap max_size
> > callback. Is there some other use for the callback that you envision?
> >
>
> If you think max the value is per-heap, why not add an optional
> callback for dma-heap to solve this issue(prevent consuming too much
> time for a doomed to fail allocation), if the dma-heap doesn't have a
> special size check, just use the default value(totalram) in dma-heap
> framework to do the size check.

As the totalram default isn't correct for all heaps (or necessarily
even most heaps), so those heaps would need to implement the callback.

I'm just not sure adding complexity to the framework to address this
is useful. Instead of an additional check in the allocation function,
heap implementers will need to assess if the default logic in a
framework is correct, and then possibly implement the callback.

> Yes, for linux dma-heaps, only system-heap needs it, so adding it in
> system heap is the simplest. However, there are many vendor dma-heaps
> like system-heap which won't be uploaded to linux codebase, and maybe
> have same limitation, all these heaps need to add the same limitation.

My worry is that without seeing these vendor heaps, this is a bit of a
theoretical concern. We don't have the data on how common this is.
I very much hope that vendors can start submitting their heaps
upstream (along with drivers that benefit from the heaps). Then we can
really assess what makes the most sense for the community maintained
code.


> I just think it's boring. However, If you think discussing these absent
> cases based on current linux code is meaningless, I also agree to it.

So, as a rule, the upstream kernel doesn't create/maintain logic to
accommodate out of tree code.

Now, I agree there is the potential for some duplication in the checks
in the allocation logic, but until it affects the upstream kernel,
community maintainers can't really make an appropriate evaluation.

As a contra-example, if the allocation is some extreme hotpath, adding
an extra un-inlinable function pointer traversal for the size callback
may actually have a negative impact. This isn't likely but again, if
we cannot demonstrate it one way or the other against the upstream
tree, we can't figure out what the best solution might be.


> So, to summarize, if you still think adding it in system_heap.c is
> better, I also agree and I will update the patch to add it in
> system_heap.c

I think this is the best solution for now. As this is not part of an
userland ABI, we can always change it in the future once we see the
need.

thanks
-john
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
