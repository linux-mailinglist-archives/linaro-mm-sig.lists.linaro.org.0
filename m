Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8D5461D4E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 19:05:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 97A5160C97
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 18:05:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7C7FF61A47; Mon, 29 Nov 2021 18:05:20 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D919260B8E;
	Mon, 29 Nov 2021 18:05:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 272056090F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 18:05:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 22FCB60B8E; Mon, 29 Nov 2021 18:05:16 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 by lists.linaro.org (Postfix) with ESMTPS id 1DA416090F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 18:05:14 +0000 (UTC)
Received: by mail-lj1-f174.google.com with SMTP id z8so36107701ljz.9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 10:05:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IDi3zvjd6u7ZBVvXAka/LTSyAvUkqeh+L5SnX6c8Zdk=;
 b=ELtQ57DjVTWJPnvASv4jZtvg9xzVjpRXdLK6WadVUiqQO2Tejx2Y4rP/jZvsvwdaGM
 wVK5qYNcJTRTVvihhUy6a3XfzO7ShXe3HSKg9CJ9S9TdxAt3X4+ddQNsKXsRbhOEV3Nn
 NeS7l4DPoqAaH0j+Gm2rrnRobzgyBp+zZRI4nhmfoSItyMTQPe6HJsrb3a8uXIO7pAUp
 d0pHSCno/fnC3Fp0q+W51eSWigYy/I5qIJhRZa/O1KEhI708OF8jeLET61Dg8b9kw0VH
 st1/mw7gEQ1NVGLv+ANo/xqXiZgR94N5ykkWzVgrrh3SWq2UdJQ1DTZyuwBI86rq3HIq
 HE3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IDi3zvjd6u7ZBVvXAka/LTSyAvUkqeh+L5SnX6c8Zdk=;
 b=11Fp4J/5J/UTD1U85QSFDB+PXU8Ez9K5jwj/4ot2UOxazl8pdp4mi12eHZgsGXRWai
 6gsLGbDJi8/p7+Bc7sO7/+29xCeeT/TpG/JaSSAbL9uzqhK2RKgtNtZCi0g87+H3+xh3
 Tn/5/8f3561XUxIlC1BvClT956OXrrNJbbBrljCtDNTw7HlTje1+w3BsTtZjztqIy61V
 uxLkgPQS6GA/7mYngKKgFdsnmJzESmw6f7ocrxs6EBX/x+shjR4L3exUyutfLAdiBdQl
 MrtD/yH5/VSqjvctYCw57hnJQr9k2JQaC4opeQxJ/KxOCCLHN+yHwllzrkie345QMv/t
 QryQ==
X-Gm-Message-State: AOAM531zKzzeHQyRwa0IiCco96jnBK1xzqQIHUQjiZlCCyT8IPIgacSI
 vEk71SpDM4aI73fJ9urqNyxFpZr6n2rOyhX+xAqckMFW
X-Google-Smtp-Source: ABdhPJz00rJJqhFv+eY/G4mQJbhWwtM/vfpfxJXb8qlKInsjRYgNcLli9eLdqgC5XVztKYKpkdzK0NNalzo7Gw9l8CQ=
X-Received: by 2002:a2e:95d3:: with SMTP id y19mr50881703ljh.175.1638209112922; 
 Mon, 29 Nov 2021 10:05:12 -0800 (PST)
MIME-Version: 1.0
References: <YaB/JHP/pMbgRJ1O@kroah.com>
 <20211126074904.88388-1-guangming.cao@mediatek.com>
In-Reply-To: <20211126074904.88388-1-guangming.cao@mediatek.com>
From: John Stultz <john.stultz@linaro.org>
Date: Mon, 29 Nov 2021 10:05:00 -0800
Message-ID: <CALAqxLVF1BPznzwjem2BcsDDoo5gMoBqjKEceZDLJan4zCtk3w@mail.gmail.com>
To: guangming.cao@mediatek.com
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v4] dma-buf: system_heap: Use
 'for_each_sgtable_sg' in pages free flow
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: wsd_upstream@mediatek.com, kuan-ying.lee@mediatek.com, greg@kroah.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 christian.koenig@amd.com, linaro-mm-sig@lists.linaro.org,
 linux-mediatek@lists.infradead.org, lmark@codeaurora.org,
 benjamin.gaignard@linaro.org, matthias.bgg@gmail.com, stable@vger.kernel.org,
 labbott@redhat.com, robin.murphy@arm.com, Brian.Starkey@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, Nov 25, 2021 at 11:48 PM <guangming.cao@mediatek.com> wrote:
>
> From: Guangming <Guangming.Cao@mediatek.com>
>
> For previous version, it uses 'sg_table.nent's to traverse sg_table in pages
> free flow.
> However, 'sg_table.nents' is reassigned in 'dma_map_sg', it means the number of
> created entries in the DMA adderess space.
> So, use 'sg_table.nents' in pages free flow will case some pages can't be freed.
>
> Here we should use sg_table.orig_nents to free pages memory, but use the
> sgtable helper 'for each_sgtable_sg'(, instead of the previous rather common
> helper 'for_each_sg' which maybe cause memory leak) is much better.
>
> Fixes: d963ab0f15fb0 ("dma-buf: system_heap: Allocate higher order pages if available")
> Signed-off-by: Guangming <Guangming.Cao@mediatek.com>
> Reviewed-by: Robin Murphy <robin.murphy@arm.com>
> Cc: <stable@vger.kernel.org> # 5.11.*

Thanks so much for catching this and sending in all the revisions!

Reviewed-by: John Stultz <john.stultz@linaro.org>
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
