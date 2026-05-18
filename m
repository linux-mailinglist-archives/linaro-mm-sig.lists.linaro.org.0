Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDmtHubaCmog8wQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 11:24:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6B8569A6B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 11:24:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2CF22406A2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 09:24:53 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	by lists.linaro.org (Postfix) with ESMTPS id 1531840475
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 09:24:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=XXqL+rD6;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.221.41 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-44e1ebb3122so1101028f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 02:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779096281; x=1779701081; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8ZnntFD93TY8/+xleaPVExk6NAT6He9j34KXY+n97WI=;
        b=XXqL+rD6sKw/l9nr0b9DEZ/CqjHNGiQDy55RxekFi+VLguwOymFUbyjaNf6vweLeh8
         btPqt83ExK9liMMd0mdV/hc1bk0aRQfFOveDzwITpp9YWFvYQVRKKeWUa4CCn4acbZNI
         ygaw6yftNRsoT5aPy9LshFHjFidnUSaEBcf9h+s69FYrP1zz/WW4XEnspzfWhG/yRjvk
         J8VqTiueR3v/6B/YiYGlfOoE7pl3GJwzYDiZclNVLH8tYXMQH8sEpCzufNqyOaGmPC4j
         Ga/I070iZZdYSgJN1yHCr1T/HDtRVGgwEEbc42aFv9Ohw1DCnNJW/9eH3edonOEhA70/
         7Quw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779096281; x=1779701081;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8ZnntFD93TY8/+xleaPVExk6NAT6He9j34KXY+n97WI=;
        b=EjmKoWLnkZClE0Y//87eCV3ZKxNMR9umqNPGiKM3p3LFqW5e4KICmqDY7BPKG2JlJj
         I2V04mvKY3LxDTEhQLsIV8Kw6dkS//sRZQXVGD6a8QqyajPwJ3Xl/VEqC4f7nXPHE+O2
         ucyiLZkhFq4c0BjRD+fBAg1fTAtnm2OQORbD/swAm24Uwq5zBa9OQBguFLFSce5rFt9k
         w+iJFS6Oea0coWG36vT6B/UIrHQ9zbxHMuSxBPUpbxDGYZXxQA060nUzjqUCc4/owBUD
         IipGrx948c/KzRJTEQCZWA7npw1uaMZCKUy10CaobKEs1QjlUIvqiooPXjGKkbNIrhEU
         JYvQ==
X-Forwarded-Encrypted: i=1; AFNElJ/fJMhjVHhVV/LPTaksyURIA7cl6mPckUT4nNxDjpF7rVLVaTL3JBrCYzQQkc7tolEsr21hLGVyw6vi4eo0@lists.linaro.org
X-Gm-Message-State: AOJu0Yx7x9ksElgq9XAI5+2SXkZrcGnRUeaTiTUx2XayArpgII7Y4d11
	Ve1yqA5cX5polVdCZ3jdNVrJCBTM3NCBEHqtupxQ2bJgT93PtR2T4iAN
X-Gm-Gg: Acq92OHo/lHSZuLsJ5OGC3RlA9qGHvwrbXPsJX7Ljp8eaaQ2556/PhlDKLgCRU7ZUT8
	G5dFbI9plR99d58QHxPsYtOq853OUq9du/ZYtoMqT/ljiXYyqJbtZm/rPR4k9igLfHNyJDZb/WY
	xKjpyc1tQ4IZ38axzWU7KfJt7y0jFC0cxWqYKKPBxjPraal2xvii3N8PMTCbAt2GYxUNGoTEbLT
	phd87HxurfVl6unPn/a0uvYnWTDN41GKGxP51UhO5GP6NTNCvmL7dzvKL87PLKYHG4yUw4tw+ry
	APYSILLX792FbUtpWnV/3JYumoh397t8P6XeN/h2hDYgGfsjvDFDhXIZNsCyjnNkq9YAFyRvRxx
	mmb7e4AdNdXV9otzCLyeVldHOjNj00/z04jEUh1+ALHwuOBvWcUFs51XyWKNrrulNG+PRx/s7cJ
	YzQa7IjgkxazVY9V8nbk0atom3ZpuwDsc2i6cMIcO1YHOqnq+IvyzgrKtNFOUOV5LKI2q+P5bGo
	sx7J8Can/upa0qvQygVjLccv5bnU8yxCE4OMf1Qs43VoWEG1dlcjynxnO8=
X-Received: by 2002:a05:6000:288c:b0:43b:962b:5314 with SMTP id ffacd0b85a97d-45e5c372a9cmr22814328f8f.19.1779096280750;
        Mon, 18 May 2026 02:24:40 -0700 (PDT)
Received: from ?IPV6:2620:10d:c096:325:77fd:1068:74c8:af87? ([2620:10d:c092:600::1:6e9b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45e6a135f0csm17325957f8f.27.2026.05.18.02.24.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2026 02:24:40 -0700 (PDT)
Message-ID: <4b2f74e9-3225-47f6-85fe-911720030e35@gmail.com>
Date: Mon, 18 May 2026 10:24:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Laight <david.laight.linux@gmail.com>
References: <cover.1777475843.git.asml.silence@gmail.com>
 <20a233d2f35274817aa643cc0fe113707eb47e72.1777475843.git.asml.silence@gmail.com>
 <20260513110557.705bdeed@pumpkin> <20260513142909.03ae6c2b@pumpkin>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <20260513142909.03ae6c2b@pumpkin>
X-Spamd-Bar: ---
Message-ID-Hash: M2L4DNCU5W3R5XSXX3W3MLGGH7WWK3UP
X-Message-ID-Hash: M2L4DNCU5W3R5XSXX3W3MLGGH7WWK3UP
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 02/10] iov_iter: add iterator type for dmabuf maps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M2L4DNCU5W3R5XSXX3W3MLGGH7WWK3UP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 1B6B8569A6B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.455];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

On 5/13/26 14:29, David Laight wrote:
> On Wed, 13 May 2026 11:05:57 +0100
> David Laight <david.laight.linux@gmail.com> wrote:
> 
> ...
>>> @@ -575,7 +575,8 @@ void iov_iter_advance(struct iov_iter *i, size_t size)
>>>   {
>>>   	if (unlikely(i->count < size))
>>>   		size = i->count;
>>> -	if (likely(iter_is_ubuf(i)) || unlikely(iov_iter_is_xarray(i))) {
>>> +	if (likely(iter_is_ubuf(i)) || unlikely(iov_iter_is_xarray(i)) ||
>>> +	    unlikely(iov_iter_is_dmabuf_map(i))) {
>>
>>
>> Doesn't the extra check add more code to all the non-ubuf cases?
>> This could be fixed by either making iter_type a bitmask (with one bit set)

Not going to do that. It was specifically converted from bitmask
before, and the check optimisations like this were voiced back than.

>> or writing an iter_is_one_of(i, ITER_xxx, ITER_yyy) define that uses
>> '(1 << i->iter_type) & ((1 << ITER_xxx) | ...)'
> 
> This seems to DTRT:
> 
> #define _ITER_IS_ONE_OF(iter, t1, t2, t3, t4, t5, t6, t7, t8, ...) \
>      ((1u << (iter)->iter_type) & ((1u << ITER_##t1) | (1u << ITER_##t2) | \
>          (1u << ITER_##t3) | (1u << ITER_##t4) | (1u << ITER_##t5) | \
>          (1u << ITER_##t6) | (1u << ITER_##t7) | (1u << ITER_##t8)))
> #define ITER_IS_ONE_OF(iter, t, ...) \
>      _ITER_IS_ONE_OF(iter, t, ## __VA_ARGS__, t, t, t, t, t, t, t)

We definitely don't want that, using them directly would've been
much cleaner.

if (get_type_mask(i) & (TYPE1 | TYPE2)) ...

-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
