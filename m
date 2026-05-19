Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GDjFYMXDGrrVwUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 09:55:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A2B5797EE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 09:55:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7A3D40965
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 07:55:45 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by lists.linaro.org (Postfix) with ESMTPS id 59EBB405CA
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 07:55:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ACSyBHPi;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.128.41 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-48e82c23840so24892325e9.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 00:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779177335; x=1779782135; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a/lqih5w8kOsHKdyaSXO9SGORGhwE1abTlQDwvsKNOc=;
        b=ACSyBHPi7aOO8sk2Z2HdTEOka6mTO5qQaJuLK2avAQIhKel3loBsYkeNU/Xt7v9Di5
         U/Ee/POERABnTrb648UAHBHqfTK/Lz74H1gqTeLK/+U0wXhyzQd1w2OOzPSONlEDaaE+
         XAQRYRYu6xOyWcvtZ606oNmvqisPjkJ0l//wDZEoCqTnRoz0NLKH+HXEj4nmTXqAhZhd
         7/z5WfUBTx7PUMswOX3H/s/DBy99gKyxN0IgbFEq0DW1J+rIsNaUHg7wdaAzTWfUzuJ/
         DH7ZU7p7eTbZAne7RmWZk1sHLc9NuA1h+GdCbm2YKlGq+ACSVLlVneFjKTe1K40bApBl
         Bo2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779177335; x=1779782135;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a/lqih5w8kOsHKdyaSXO9SGORGhwE1abTlQDwvsKNOc=;
        b=dBKuoHGGc+yRTHyvkBAspn/ejdeEdktbcJbVBWfx5Ew0N2hTEak1Sn9WxqiMRCHTR8
         1L8X/+FL+nWqhVMGN/YWFH3Zm1nVuPLYWQVWsDDAo0MihTiFWiW52VBLJb/Fb93ac98G
         OT9fdRviCc9FQwQALcCShVIubKIazqihV68seIKNnJHlkH+7hXVviMpEyBTxrjLJpcGe
         xCcB82OXN6bkdxQQGr5H69ZfwUVG3s2Tvi+7c5uyXK4RyOGx7DtBUyUOD5749+O4As/d
         Krng6fSEQ/br0YnKdxL8PUbHpb29BWSq7OtGVT+8M9BUjsypyvtAZIiXRDx0z63S6KTS
         FqWA==
X-Forwarded-Encrypted: i=1; AFNElJ+7FYE6bh8KrYfaqr8liV96ZkxzxyHza7wn2AFxlJ3DHNEJG7vsYOtsWYUTF1Fw/dE1WSdN4ADofad2kLZ9@lists.linaro.org
X-Gm-Message-State: AOJu0Yx9rR5FpZP0BRkCeylgRz2uYyhyoyk7J7NubQ98vwUjATIF7aTu
	vpLA0yoEpY5WbSwYB6wgJ/OruQIGEYqAjOoQJPIe7tRzPrWa562eWW+g
X-Gm-Gg: Acq92OEzBcyJqsHvFp4WjpAMbbYlYss1Tqn3MTcG/cOelw9t5OekhBN7cjPpxIjLvWe
	XG8ydLbiI8AbD8ti6L7g3dpWSyb7qDSgVhwaqlwo3/ZieOcdLZaxoMnB0AovWtYrnyrBwjFyuTI
	2JF4yxbo6tt2ArAjOikCjQTwgT6WR1zVcAuw3t1GzJjlHlLzkOinijX85p2MoQ9/Usx91LeABqL
	3ds3KYieUomUES5mgihLM7Vj48fuQxhIiU1BSLnyPxV9c2lIIj+SiVZJccZPAxcWolz8y8/wEis
	1b1zfpihA7RE2aSkuyuPkzWO8zWhyXrSo5g0ICLIcoLADMR7Jr8DApASK1EMO7Y61qLhQlw1AHz
	YwC/fYta+9gll9fzbMI97ElQKpX/NQ6HYfYDt7T0aAldEo2JoIVItN56pX46j1uN3Jke0VkoS9B
	/8zzHCpC8LHFBffurH9C5aKFQiaxVOXOFbCkjv6P/5Z4nWadezNT1dzDlJB4fH+xB1kVmFTUfdd
	Mztbv0C7CJXLdOlkkkAf02ADMizjAfb6SbR5xVgeh4rJEhWamISU2psjI2FGNbeU40becTj/8WF
	AA==
X-Received: by 2002:a05:600c:470e:b0:489:201c:dc46 with SMTP id 5b1f17b1804b1-48fe60ea590mr265981195e9.12.1779177335066;
        Tue, 19 May 2026 00:55:35 -0700 (PDT)
Received: from ?IPV6:2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c? ([2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48fe4c88e5asm329088665e9.6.2026.05.19.00.55.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2026 00:55:34 -0700 (PDT)
Message-ID: <9933142a-4ce2-4219-9574-73da30edd74e@gmail.com>
Date: Tue, 19 May 2026 08:55:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@lst.de>
References: <cover.1777475843.git.asml.silence@gmail.com>
 <c61e6d928f86f4cb253ae350272e6039faefd3a6.1777475843.git.asml.silence@gmail.com>
 <20260513082431.GA6461@lst.de>
 <ebf41920-5852-428f-b98a-e0f44c8f3315@gmail.com>
 <20260518125326.GA5754@lst.de>
 <ea47051e-697f-4017-a514-be6ef7c110e9@gmail.com>
 <20260519065653.GB8173@lst.de>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <20260519065653.GB8173@lst.de>
X-Spamd-Bar: ---
Message-ID-Hash: RRS3LIBPR7FQKKT3ZHF6JHY6IP4FCOLY
X-Message-ID-Hash: RRS3LIBPR7FQKKT3ZHF6JHY6IP4FCOLY
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 05/10] lib: add dmabuf token infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RRS3LIBPR7FQKKT3ZHF6JHY6IP4FCOLY/>
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
	R_SPF_ALLOW(-0.20)[+mx:c];
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
X-Rspamd-Queue-Id: D3A2B5797EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 5/19/26 07:56, Christoph Hellwig wrote:
> On Mon, May 18, 2026 at 03:23:53PM +0100, Pavel Begunkov wrote:
>> To be fair, it's not that dma-buf specific. This lib/ code only
>> does some resv locking, fence waiting and queuing fences,
> 
> But all the dma resv/fence stuff is pretty tied into the dma-buf
> ecosystem.  I don't think it would really apply to something not
> doing DMA at all.

The point is that those can be separated to reuse the rest.
  >> otherwise
>> all the attaching is done by the driver behind callbacks. Switching
>> it to some memfd could be pretty simple. But The main thing it'd
>> need to share is iterator handling like forwarding in the block
>> layer, and it should be fine as it's already passed as a completely
>> opaque object with no knowledge about pages / dma / etc. for the
>> middle layers.
> 
> But none of that really sits in the current lib/ code anyway?

It's about naming. E.g. passing a DMABUF_ITER that doesn't have a
dma-buf would be confusing, and then it'll need renaming at all
layers to support the use case.

>>> lib/ is most certainly the wrong place for something that absolutely
>>> is not library functionality but directly interacts with a few
>>> subsystems.
>>
>> It only interacts with dma-buf, and even for dma-buf attachments
>> are created by the driver. Block, nvme, io_uring are users, either
>> using the helpers or implementing callbacks.
>>
>> Ok. Let's assume for the argument's sake it's not dma-buf
>> specific, if not lib/, where would you put it? I was also
>> assuming that dma-buf being under drivers/ is rather a relic
>> of the past rather than the desired location, hmm?
> 
> drivers/dma-buf is a pretty natural place for it, I could not thing

_If_ there is no dma mappings, drivers/dma-buf would definitely
be an awkward spot. Just trying to understand your criteria for
placement, let's say of a generic buffer registration code assuming
there is no dma-buf involved at all. Again, just a hypothetical.

> where else you'd place dma-buffers.  I'm not sure how hmm has anything
> to do with it.

Looks there is some confusion. It's was meant as an interjection
with an open question, I didn't mention the HMM subsystem.

-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
