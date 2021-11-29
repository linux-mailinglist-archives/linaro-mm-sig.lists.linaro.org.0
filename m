Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AB05E4614E0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:19:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9292761A45
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 12:19:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E755761A3F; Mon, 29 Nov 2021 12:19:21 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D9F5860C0C;
	Mon, 29 Nov 2021 12:19:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8721D60BA1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:19:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 850AD60C0C; Mon, 29 Nov 2021 12:19:15 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id 7E90260BA1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:19:13 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id a18so36364963wrn.6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 04:19:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=XcU3cZ675oLKAA0YDtoMQZs1c0pmDDKNznpl0CDHRnI=;
 b=gX559nvoo9EME4Wn9UQ4zSsuXCKTgh0cVjLmxYmXWIkRJA+z/RlsJm2wtBy/1umRn5
 31kRXBXD9FVypfX/Km1XoIYo/rhU1dnX5ppZmSuXy/Sqvvzte8dXh49gu429ZfFOroyA
 Nc9zK+eZBemQI9BLB/bVvXbejK6+yo8Ry1PS6uyrpvzuobkYKcQTT6o1gkZDYduyvjfI
 zsfsspYl034R6M7cey6xrtRAA/A5yO7/gPhIIB0ZvC3m9GbpQ+N1EwKDmKjdz2QPkBTZ
 poFsH+/1WSOGeq7w6s2fayp7snttEkHa9iF6FaF0bgYA3PTi15XaLoRw32j/te8mVu47
 N7ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=XcU3cZ675oLKAA0YDtoMQZs1c0pmDDKNznpl0CDHRnI=;
 b=pJpXg26L9tmg/9X5YTrTq/GOAJTuo/gr2Ndtgt+cjJ56vRMA2S0U8oSw4/hjSl7suc
 pUZv6rBh2Q73wJMhf53Ct1JVldgGSreoa+62aROrbV3FljAtwQ2N69nJK9GDVqEY9+py
 bm1e9pViPYKUHKx7dhh3WL2TPPU3tJaMmzffN2oX/J7SY7Miy7MetYMsyN44JHVYMoGG
 hGNZ+clduigk9vNn1ddoSWztiKZoX47tkDkfAaT9f4Ot23ACRKvHkRjVNaBcI1xlA3El
 hkIHMh8VO78edMPrmb2bWoyjCtDb1f+kzXEu5Mc3UP62mdlf39Janiq1+tIZEMk0OkRV
 g4og==
X-Gm-Message-State: AOAM530lO1tzaTXlDouff+AIZOwEcjbS6MMwj0fm+5jWx5zVCHP0Shnh
 K19kPw6ftY1m1RrXzg03eFvnJNxlKmQ=
X-Google-Smtp-Source: ABdhPJxeWD8FcZ//PIfnggOqDMEQt5eKAjwzpuVJLP0oB3ZURw8HM3SiJfb5aEeWqkmgNST850wj9Q==
X-Received: by 2002:a5d:5008:: with SMTP id e8mr33182089wrt.83.1638188352670; 
 Mon, 29 Nov 2021 04:19:12 -0800 (PST)
Received: from [192.168.178.21] (p57b0b77b.dip0.t-ipconnect.de.
 [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id n13sm13965341wrt.44.2021.11.29.04.19.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 Nov 2021 04:19:12 -0800 (PST)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20211123142111.3885-1-christian.koenig@amd.com>
 <20211123142111.3885-23-christian.koenig@amd.com>
 <YZ+y+Uwo809qtvs5@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <1e45687c-23ee-03da-abb8-da4a5f9d2872@gmail.com>
Date: Mon, 29 Nov 2021 13:19:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YZ+y+Uwo809qtvs5@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 22/26] dma-buf: add enum dma_resv_usage
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Am 25.11.21 um 16:59 schrieb Daniel Vetter:
> [SNIP]
>> + *
>> + * For example when asking for WRITE fences then the KERNEL fences are returned
>> + * as well. Similar when asked for READ fences then both WRITE and KERNEL
>> + * fences are returned as well.
>> + */
>> +enum dma_resv_usage {
>> +	/**
>> +	 * @DMA_RESV_USAGE_KERNEL: For in kernel memory management only.
>> +	 *
>> +	 * This should only be used for things like copying or clearing memory
>> +	 * with a DMA hardware engine for the purpose of kernel memory
>> +	 * management.
>> +	 *
>> +         * Drivers *always* need to wait for those fences before accessing the
>> +	 * resource protected by the dma_resv object. The only exception for
>> +	 * that is when the resource is known to be locked down in place by
>> +	 * pinning it previously.
> Should dma_buf_pin also do the wait for kernel fences? I think that would
> also ba e bit clearer semantics in the dma-buf patch which does these
> waits for us.
>
> Or should dma_buf_pin be pipelined and it's up to callers to wait? For kms
> that's definitely the semantics we want, but it's a bit playing with fire
> situation, so maybe dma-buf should get the more idiot proof semantics?

Yeah, good question. I've already added a wait after mapping an 
attachment for static importers.

But for dynamic importers I'm not sure what we want to do. On the one 
hand waiting for moves to finish is certainly the more defensive 
approach on the other hand when you have a dynamic importer you 
absolutely need to handle those dependencies correctly anyway.

Regards,
Christian.
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
