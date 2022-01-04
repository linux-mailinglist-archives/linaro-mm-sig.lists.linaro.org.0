Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BA24853A5
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jan 2022 14:37:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A8A853EDA4
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jan 2022 13:37:14 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by lists.linaro.org (Postfix) with ESMTPS id 533BB3E8DE
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Jan 2022 01:31:38 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id k18so36226155wrg.11
        for <linaro-mm-sig@lists.linaro.org>; Mon, 03 Jan 2022 17:31:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=8RP2kK8mapgiU76wbNQ3ZzyNp6SxXEgsjV0c/YCw1uI=;
        b=BzsjoeWUpRtaow9lliq1z5o0NSx/KUJZhMrWzA7WV9G0k/wHDbGy7mJfgMHJ0dEreS
         owAD6keYzzRBaUxrc8JkT0DhY1llK+YHOpHADfYot1Rjjsi4WP+SXIFeoNdqcIIB4t0o
         UhIa2KDl4D1F6qhkzFVHr/Yge9UGZavDH7Ya9xrQeqGArYZyMfDF+uxevZk4l0Ou9xhb
         v9oobErj6QIRTJJ6jt2gCEvUjccfle3ocxD/hQ709un/aHn62iL5vZfAsEvWOnfgTXfu
         M/bROZCwh8uFNHzASafE+Vqw4A6XEI/K0mAKt95mkws2seCVlxMUrTMqAMWfZT/5mJCJ
         nNjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8RP2kK8mapgiU76wbNQ3ZzyNp6SxXEgsjV0c/YCw1uI=;
        b=giWQpD6BGEWbkNoRVZ9gaFAGPM0eEo9LCsGfHMJv1afkMiLXswuwPhUTiigxO7aJaJ
         HNE83QwbdkGt16erJHKmrCONwjcQedMWZGFuhfdHGotoq4qL3dD7sq6uIOp0rcP7FF0b
         P10BlWD7tuFrqN3KwT3VlbjkKbDlpWw1S+tF9X88r741tPJqGj3fkP+MklIfE7459eRM
         L3tD0z+sso55dGVgZZL+o0vynDQCcn9/yp5kNm7y2NCLzY2X+0nJ2w8YFz21DmgUTfkT
         ib8zpsv2BxOB1DdHmMnbTuJoAOzjj1LmYl8GyQ2jLPJ+uVbkuFWIg1kyCfpF7Ol+d6qr
         EDfA==
X-Gm-Message-State: AOAM531MTjBJ60eSxgcxhhpltRBvJ4/Zo+mELcpr4ECcnIbh6ETkEQXO
	D+yST5qq7AHUbLz/6tOJYiM=
X-Google-Smtp-Source: ABdhPJxTdhXdLdajpyQarHz4T17XD/qWUXBHu90i572ts9V4z3pQq0i4Iw6rDc4/I+4sQ/D9J7oNnw==
X-Received: by 2002:a5d:5310:: with SMTP id e16mr39755747wrv.91.1641259897334;
        Mon, 03 Jan 2022 17:31:37 -0800 (PST)
Received: from [192.168.254.53] ([103.105.48.220])
        by smtp.gmail.com with ESMTPSA id u14sm35694797wrf.39.2022.01.03.17.31.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jan 2022 17:31:36 -0800 (PST)
Message-ID: <59c748b5-245a-c2d0-0b9f-d412687c72ab@gmail.com>
Date: Tue, 4 Jan 2022 09:31:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: John Stultz <john.stultz@linaro.org>
References: <20211229070713.218548-1-o451686892@gmail.com>
 <CALAqxLXtUcign2gETHg=z24qYOFSALRjWNnJqqY6rk=gsfVwaw@mail.gmail.com>
From: Weizhao Ouyang <o451686892@gmail.com>
In-Reply-To: <CALAqxLXtUcign2gETHg=z24qYOFSALRjWNnJqqY6rk=gsfVwaw@mail.gmail.com>
X-MailFrom: o451686892@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DECPQMXGZCZ6TMEAJYU4CXLTW267XRUA
X-Message-ID-Hash: DECPQMXGZCZ6TMEAJYU4CXLTW267XRUA
X-Mailman-Approved-At: Wed, 05 Jan 2022 13:36:42 +0000
CC: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@kernel.org>, Brian Starkey <Brian.Starkey@arm.com>, christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RESEND] dma-buf: heaps: Fix mutex lock area and generalize struct dma_heap_attachment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DECPQMXGZCZ6TMEAJYU4CXLTW267XRUA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thanks for reply.

On 2022/1/4 02:45, John Stultz wrote:
> On Tue, Dec 28, 2021 at 11:09 PM Weizhao Ouyang <o451686892@gmail.com> wrote:
>> Fix cma_heap_buffer mutex lock area to protect vmap_cnt and vaddr. And
>> move struct dma_heap_attachment to dma-heap.h so that vendor dma heaps
>> can use it, the same behaviour as struct dma_buf_attachment.
>>
> Hey!
>   Thanks for submitting this patch! Apologies for the slow reply (was
> out for the holidays).
>
> This patch is combining two changes in one patch, so they need to be
> split up. The locking change looks sane, but moving the
> dma_heap_attachment may need some extra justification as changing
> upstream code just to support out of tree code isn't usually done (if
> there was some benefit to the in-tree code, that would be fine
> though).
>
> I'd also be eager to try to get the vendor heap to be merged, assuming
> we can also merge an upstream user for it.
Yeap moving the dma_heap_attachment need more sufficient reason, and
it should add a private area to adapt vendor heap change if we move it
to in-tree code. So just drop the idea now :)

I will send a new patch to clarify the locking change later.

Thanks,
Weizhao

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
