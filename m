Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMqLDO1fBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:26:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7FA532368
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:26:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8DF3C3F91B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:26:35 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by lists.linaro.org (Postfix) with ESMTPS id 024013F72F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2026 09:02:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=h1GbVy5Q;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.128.45 as permitted sender) smtp.mailfrom=asml.silence@gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-48e56c1bf5dso887965e9.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 06 May 2026 02:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778058143; x=1778662943; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mmaZWXsqMxYY1SXzoardDG6u5dyIRaJ/iULJJHwbN+E=;
        b=h1GbVy5QfLPRh6SeMd0FA2vMmg0uYkeQ9INGK5feJPGQRQ0izqp1c6S7SPMvSBjgr1
         NhMhOXKYPfCsdclW1u3QTUxvq8biC5tqc0mpxDhnab7T9o3Pp22QmstPHO6SD1lptwrN
         rydB76qoSkFvIvPcLxIVVeIt4xAGSeviwHoXbE350Te1rSZd6YN8IpAh9WL2JvDwzX0H
         kzm2P5jLJVoQx1vNitmg5dQfSI8FBsALqXroVVAj9hGUoiDMokWTXZjx59BOKqRLcqA/
         eYmNQ16AuhIjXjPT9qq/JQiBFslyLqEixm465XC5guH7rTTg7f8TGF+M2Dvr5JjONYbv
         016w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778058143; x=1778662943;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mmaZWXsqMxYY1SXzoardDG6u5dyIRaJ/iULJJHwbN+E=;
        b=ojZzqS9TesKPh9CETKSTzRCWytyPNuVxtf+xpbGnXualszYMpSLwNZoY7tpsX/KJAY
         nAKue6VwZjLEHEQVXAbUZsRBnnaFOttk5z666g9fWGPxLJF5wBtFZmONPU0whS5733+X
         Co105ehkNckbtll+KOp5bWO/9VdphbDQoifkRyvNmkKpQPM+6TlTzWwJyBwGyMQo3Yd/
         fci1y81JPtbfTIPBNFSFni2PjGiy2cKdl+TbvR756NR/vJAb1J6St4htRRmH4hXMP2im
         lF2GhP5zT0hrZ//Xa13IteAp1JpReAuI0gtSkIKNW9dtVCl18TAHQwf8srHAm7vYrmLB
         fUTA==
X-Forwarded-Encrypted: i=1; AFNElJ86Iek3yixBb47mlFDko06x7HNiF4ZkY+R5xeSv7jGxV2GW7YW8//X9BuEpEW7/T7x8S/d2AgMtZjsEdqY4@lists.linaro.org
X-Gm-Message-State: AOJu0Ywo/uV/PLNc5humwGg94HTrCCQ2NAKPR3QH8yoez8QjhJr//vit
	393pq1GExGYSixPcrPUoMjDsXeUDYENslni2X8HDWQG7Crc728TjTPL7
X-Gm-Gg: AeBDieuQFPh0dVxMD84TJsradSfn7lH8cjOo9PfqlOvP5qPaHeeOD0wxFw6RrHpgLqi
	2ZMwO0wa14+KW5gyYI4cv1UkWkqpG4E2zXaRLyOWw1WtmfWKp9NY4zEytJGU4abnQ9+iDutIg3v
	x+p5pqXm0zISG1+d8b93mq8yEwlKJmTpI4COXUt5pNjlFCJ+9gxEZDWnilVp3F5/Ir63qAv1GHD
	5m+QIU5MiEWnMNAI34BWkfwyF0/0IWMZgTg1c9AkXovchQtRXQpAZJywT/Pis4OE5A8EZ/0sQMH
	j/a0U+xal95pVT/vTRosNUvpt71v4KZP2+eGsmLNvUlC7i2GtTjRpj7WE3Zph3Hj7mDOhU0AuYN
	vOjNnkc8Emzhfbr1WjpjPo2hITYdZcRQEADKfP63ZxIlMI1JzM/yYCnxxHOlDqDTEeyiTxb3mTX
	iksSbNE0UdDR5OuXZt/J+37FHsx8BkYBSt+tTB4idTC2R/Z7mpWP4IZAu3kr41XM1RH5V6tW3ho
	dhbQIvVPptVLhcqvn5qyR3HX+Sh1YChkobARYdOxA==
X-Received: by 2002:a05:600c:2e0c:b0:489:1c2d:211e with SMTP id 5b1f17b1804b1-48e51e0c833mr25734095e9.5.1778058142476;
        Wed, 06 May 2026 02:02:22 -0700 (PDT)
Received: from [10.109.92.22] ([86.33.71.194])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48e52f5c1cfsm21365215e9.0.2026.05.06.02.02.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2026 02:02:21 -0700 (PDT)
Message-ID: <6873d617-c904-45f3-bad9-e1ae39cfecd2@gmail.com>
Date: Wed, 6 May 2026 10:02:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ming Lei <tom.leiming@gmail.com>
References: <cover.1777475843.git.asml.silence@gmail.com>
 <afi7c-VUJWOLlC1m@fedora>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <afi7c-VUJWOLlC1m@fedora>
X-Spamd-Bar: ---
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6UNT3QBPZIETVLSXFKJQARKME46IJGHK
X-Message-ID-Hash: 6UNT3QBPZIETVLSXFKJQARKME46IJGHK
X-Mailman-Approved-At: Wed, 13 May 2026 11:22:19 +0000
CC: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 00/10] Add dmabuf read/write via io_uring
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6UNT3QBPZIETVLSXFKJQARKME46IJGHK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: ED7FA532368
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[170];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[25];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.088];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

Hey Ming,

On 5/4/26 16:29, Ming Lei wrote:
> On Wed, Apr 29, 2026 at 04:25:46PM +0100, Pavel Begunkov wrote:
>> The patch set allows to register a dmabuf to an io_uring instance for
>> a specified file and use it with io_uring read / write requests. The
>> infrastructure is not tied to io_uring and there could be more users
>> in the future. A similar idea was attempted some years ago by Keith [1],
>> from where I borrowed a good number of changes, and later was brough up
>> by Tushar and Vishal from Intel.
>>
>> It's an opt-in feature for files, and they need to implement a new
>> file operation to use it. Only NVMe block devices are supported in this
>> series. The user API is built on top of io_uring's "registered buffers",
>> where a dmabuf is registered in a special way, but after it can be used
>> as any other "registered buffer" with IORING_OP_{READ,WRITE}_FIXED
>> requests. It's created via a new file operation and the resulted map is
>> then passed through the I/O stack in a new iterator type. There is some
>> additional infrastructure to bind it all, which also counts requests
>> using a dmabuf map and managing lifetimes, which is used to implement
>> map invalidation.
>>
>> It was tested for GPU <-> NVMe transfers. Also, as it maintains a
>> long-term dma mapping, it helps with the IOMMU cost. The numbers
>> below are for udmabuf reads previously run by Anuj for different
>> IOMMU modes:
> 
> Plain registered buffer is long-live too, which raises question: does this
> framework need to take it into account from beginning?

Not sure I follow, mind expanding on what should be accounted?
Are you suggesting that we might want to use normal registered
buffers in a similar way? I.e. giving the driver an ability to
pre-register them?

> BTW, inspired by this approach, I adds similar feature to ublk via UBLK_IO_F_SHMEM_ZC
> which can maintain long-term vfio dma mapping over registered user-place aligned buffer.

Interesting, just too a glance, and it looks like what David Wei
was thinking to add to fuse, but IIUC he gave up exactly because the
client will need to cooperate and that could be troublesome.

Should we try to push everything under the same interface instead of
keeping a ublk specific one? Again to the point that it requires
a cooperative client, but if it's something more generic, the user
might just try to use it as a general optimisation. In the same way
it'll be helpful to fuse, and as a bonus you wouldn't need tree look
ups (but mandates clients using registered buffers as a downside).

It'd need to shaped to somehow work better with host memory as I
assume you want to be able to map it into server in common case.
Switch case'ing if it's a udmabuf is not the greatest approach,
but maybe we can figure out something else.
  
-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
