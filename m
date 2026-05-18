Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNhnCwshC2reDgUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 16:24:11 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB3756EAE0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 16:24:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 254A83F91A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:24:09 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by lists.linaro.org (Postfix) with ESMTPS id 5BC9E3F91A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 14:23:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=qwMRnE+m;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.218.50 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-bd3d7c29b4dso345026666b.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 07:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779114237; x=1779719037; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m58bYDJ543WmyZ11IWytLuY71YuFJ2Bw6ePCWpryz/I=;
        b=qwMRnE+mkpHxQvuJxBhuOqn7pMorI31TXKmn2tX4FV8VyAaUGDkskriL87oI3vhEao
         kg04CknMHN5rrLcQwcWV2gJYIGWB891Rt42FAhmiSFYMiad9vdxIk7zGhWmkcSVbsYSO
         ru7xy8wqP8dWbNAlIvfVHOAJ2gyuLLaQm6iPDHGggsgqy6Qa+NcPjsIlZmPevP81jY1S
         WYdab7w1lxYYeRJm8mDJSku+VJYe7iJMtZ2JICPjOppYglGWu155Dflwe9w0fYzuNvI/
         EvTSOGo/2XYjC1sg35SN7cBunHNZIJXlwms5ndb6gDRdWuVox9V4SMdaDrioXDTxS84p
         Sd2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779114237; x=1779719037;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m58bYDJ543WmyZ11IWytLuY71YuFJ2Bw6ePCWpryz/I=;
        b=jBfmqe3xPJE6TbllFKpuVq/40aQ2HBtx/T5jjzpzPQIb77pUhjmPbSxRA/SeVNArpi
         oRoFoQVRTcN3c3HDQqEdm2xjJNjt3GOSowOwQZiHT4jPtm2R8d9Mj7dnpIQLsP3oMuhe
         y1odiXbwBr95HJra3VPM9ADoNl6P3VJzamY9DCzdJDIV7q05FbeXGG9Tl6dP67rIwMHe
         NNpVX2ow8mZumXXZ2QYCpzeI47/R11bklZ+F0CSaK61iWWTVVTTwbbPRK4+xL5SjUooh
         /IhqwQhMm5F464SDb/akZ/wRRBX/kZ7MLlT+b6tQek3x5aTez/P4HAno+z7aE3mwdU48
         ACiw==
X-Forwarded-Encrypted: i=1; AFNElJ8N7UNdVrES8yr3Aw0XqowHmDcvoqrGQXRPmjEwohbBRfrWxV5OkhZQNUwwrhPSYwzztjf65tO5c0jqxfwp@lists.linaro.org
X-Gm-Message-State: AOJu0YwcQc5HdC4bGL7l2ElPgMTy6/1TJ5Tjkg18YMYyJNAawb3Bwj0t
	47/KgOmXCKJPY4tuXPIh4KPPECpnXLLdffah0MMF5HCT+sdXLXj8r8H3
X-Gm-Gg: Acq92OGyIFi8Ty5A8LOqh+U0mP11kexCr18tzWu2xYcrrKlCsVLmoohhPOBjF6xkxXl
	HQ6bnGxxsjZzv8aIWJhZoTrPlty6rYGdQUBxZIWjPJ39GZovcL3rYxVK8BnJ7h+E1SczQQHSrPF
	ClDNpNSbYXkgWXq/LUT6Ox/xquOx+vKVR6xsDpei7TG0NOcex9WwS38GiULDfcDgmgX76iAIC5F
	iGZHL4W8uDGww1xlX4P0OgIbV3saN5Pb7g3hL+v6Vrwu/aj17ipSzoN9ZqbGzkD8BSzY1emQDy8
	jrklLxlNwIgsKK5lb+rp5M37p2h9K1GPQ3KN4z9KtwEZ+LH498dmlMoytlcIOSRX86o6480Zytc
	Dq1jK8HqgjrJsWCIuLDK4m+RxwyZRncZbUOO1cL1WQDJu8UCD/yrDdjKMy1HlfuvyK6WnjZ8oAD
	7dH+yhUcr+yFXyeAyn0wuTZe+W4loJyxrncv2N2xNbC9Ga3ET9tZ1q4Csqte6KV3p5fd8+x6Q3z
	birQWlH4mE/OVpo0Ywje1Qb9WXpxIFRG5z2zEgWIIJJpjsjygQgZ/r9IFBQwlGrUgTKrhNhTrYK
	xA==
X-Received: by 2002:a17:907:c291:b0:bd5:7a3:a58b with SMTP id a640c23a62f3a-bd517994249mr821357066b.46.1779114237152;
        Mon, 18 May 2026 07:23:57 -0700 (PDT)
Received: from ?IPV6:2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c? ([2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-68310d58c79sm5325464a12.12.2026.05.18.07.23.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2026 07:23:56 -0700 (PDT)
Message-ID: <ea47051e-697f-4017-a514-be6ef7c110e9@gmail.com>
Date: Mon, 18 May 2026 15:23:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@lst.de>
References: <cover.1777475843.git.asml.silence@gmail.com>
 <c61e6d928f86f4cb253ae350272e6039faefd3a6.1777475843.git.asml.silence@gmail.com>
 <20260513082431.GA6461@lst.de>
 <ebf41920-5852-428f-b98a-e0f44c8f3315@gmail.com>
 <20260518125326.GA5754@lst.de>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <20260518125326.GA5754@lst.de>
X-Spamd-Bar: ----
Message-ID-Hash: RTWJP6KHXGMOQQ2SINOZOIG56PU26O7M
X-Message-ID-Hash: RTWJP6KHXGMOQQ2SINOZOIG56PU26O7M
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 05/10] lib: add dmabuf token infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RTWJP6KHXGMOQQ2SINOZOIG56PU26O7M/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: AAB3756EAE0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 5/18/26 13:53, Christoph Hellwig wrote:
> On Mon, May 18, 2026 at 11:14:09AM +0100, Pavel Begunkov wrote:
>>> This is about dma-buf based I/O.  So I'd expect it to be named dma-buf-io
>>> and no io-dmabuf, and live in drivers/dma-buf and not the unrelated lib/.
>>> But I'd like to hear from the dma-buf maintainers about that.
>>
>> Looking at what Ming is saying, it'd make more sense to keep some of the
>> parts like iterator and the file op more flexible and not automatically
>> imply dma-buf even if it's the main and for now the only medium. I.e.
>> ublk/fuse can use a similar interface for mapping buffers to the server
>> even without dma mappings.
>>
>> I don't know how the API should look like, maybe passing memfd, and dma-buf
>> supports mmap, but I think it's better to call the op something like
>> "register_buffer" instead and keep all it in lib/ for the same reasons.
> 
> Let's get the current version landed.  If we come up with some kind of
> non-dma dmabuf in the future we can refactor it and move it around.
> I'm a little skeptic we'll be able to share code as long as dmabuf
> is allergic to physical addresses, though.

To be fair, it's not that dma-buf specific. This lib/ code only
does some resv locking, fence waiting and queuing fences, otherwise
all the attaching is done by the driver behind callbacks. Switching
it to some memfd could be pretty simple. But The main thing it'd
need to share is iterator handling like forwarding in the block
layer, and it should be fine as it's already passed as a completely
opaque object with no knowledge about pages / dma / etc. for the
middle layers.

> lib/ is most certainly the wrong place for something that absolutely
> is not library functionality but directly interacts with a few
> subsystems.

It only interacts with dma-buf, and even for dma-buf attachments
are created by the driver. Block, nvme, io_uring are users, either
using the helpers or implementing callbacks.

Ok. Let's assume for the argument's sake it's not dma-buf
specific, if not lib/, where would you put it? I was also
assuming that dma-buf being under drivers/ is rather a relic
of the past rather than the desired location, hmm?


-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
