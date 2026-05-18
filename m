Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eB2gH8jXCmqc8gQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 11:11:36 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A03C569680
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 11:11:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 83B68406A2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 09:11:34 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by lists.linaro.org (Postfix) with ESMTPS id 979B24051A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 09:11:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=GOkQFH4G;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.128.41 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-488a88aeec9so23978045e9.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 02:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779095482; x=1779700282; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RUPmegXaiRoLRWLvDg/ljmtDOi29ffNPo2bGfVCm61A=;
        b=GOkQFH4Gr7e0lIcQekgXVwFkm7Hy1Q1czdNfIXafRl4VQe3hJYj82SzNGg0vmz+JV1
         ffcj5EuWBKN9uRtCZcZfyZ+w0qOBrd27jhlBHrcxWbBq789Gr73gix+ufgZc3Rs72POg
         8iW3Xg/2dEo/KrGg8eDkyTMXqFU7VEyK1nrX2czn6jQk/i1AS2x6O3UPr4ZExLWrBfrf
         Mi0hFsnUpXgpu/A0Mtfnv8tf+GS3FAWYqtUIYnf37EmO8887pXVujTbHWpd6pGqWybvl
         yPeQ3mSa3r1Z05hdDR5bNEp/x3t7vWNMr62iwYk6FJd0yKZVwKERRG9iwHD/JKIyybBP
         LUag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779095482; x=1779700282;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RUPmegXaiRoLRWLvDg/ljmtDOi29ffNPo2bGfVCm61A=;
        b=Y/dQ4NW3KyUH10QUmQbqivePb7HyaDr7ZkOE4fy6moLFX7mN/NdB3g1XZ8SGA6/qkT
         Li9VCnrCrIj9kmQqVAxcGC6qCUWheZtbQSLfOkPMR+lUPGrdlC3IpkSagEL101LozuGl
         BFnvHNMyoXnL/pcg7DOV2kEwBn31PlP3GOw48WrSqZdj8smx8x8IlxaJYF68RCGfwREo
         Md3FqVVLBGlE1joohvChW77+z30cQ5+gI2Y/Lxpd2arcXbB9tD8A63lFUv4nb3QJy7il
         Wz5bIZpiKM7Z6IlmY2KJ8xpj77JvQWj0rBiaRX0uJT9y657s6fGf7BoA+bBTjg3u7sJy
         pwpg==
X-Forwarded-Encrypted: i=1; AFNElJ8iRJjsXJbLFdu22PUSLjkdwO9Oj2IBkrL8h5SXBjKWzisCK4qoyrhdorm/xTt8na7wiQZ39C12mWXBt/qL@lists.linaro.org
X-Gm-Message-State: AOJu0YyHTA8xKujyrn1hzwPuyu2yvB3vCg3ySmm/KeuMmc03UI273a+W
	sBrDJBhJF/v0jfK3cCcmma1EAxLhqFuVvLfbRC8lbF6OZno079u8kWfi
X-Gm-Gg: Acq92OG3FoWOWkD33OG3EHHHoaOPPTzyT7120JSlqDs5piCe3HRC4p9icIn2YN4t3jF
	isD5hFqlt//fyEpskHHTVW2gc/wk5KVaOP5RuixdRVwi4hsqJ5kjE/xMAQaato/qJtbbK6edQHE
	UCjL/o1t83HLTYAoO847ZruFrnNs3i49TvqbfGW1DWgpmDmc5D3ok7rYuxCchOaAargR1gOqD8B
	ALmU6PmOOE6OXRiLyL2hQkdj63jXIwkQDMEFXqby1D8eNxYxQgI5XvsgqJKBotwFGWlN6sjRMfV
	41nZmZMePki6RNMUY0+Luyo1yGs2EXrtoXHFSYRFBmtP614xefJblEbS1bGyin4xAAmvTHC06sD
	squbDW2zqIIRLUVl9B9hlmCcPwfUFJBv6590oLo1p7FJmW7bwRS7zVT7aag6cgsKLDgfxPpDH87
	do8jaknG03vsuD7z6AUaT5N9UPLp6srQWbmFUBuaB+SF9eEAhhx9xdlhf5zaeKKOh/lPa7T4CGW
	qXr0lWh074HqUE9hsDc89zIAAXQA7umjfZYc7KQRN5gr+Fy9VjFuwlVkGY=
X-Received: by 2002:a05:600d:10:b0:48a:568f:ae6d with SMTP id 5b1f17b1804b1-48fe60e7d79mr178172895e9.8.1779095482306;
        Mon, 18 May 2026 02:11:22 -0700 (PDT)
Received: from ?IPV6:2620:10d:c096:325:77fd:1068:74c8:af87? ([2620:10d:c092:600::1:6e9b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48febe79ce3sm80272945e9.31.2026.05.18.02.11.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2026 02:11:21 -0700 (PDT)
Message-ID: <d262dbc0-48c1-4994-917a-1f975c60b2af@gmail.com>
Date: Mon, 18 May 2026 10:11:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Pavel Begunkov <asml.silence@gmail.com>
To: Christoph Hellwig <hch@lst.de>
References: <cover.1777475843.git.asml.silence@gmail.com>
 <646ecd6fde8d9e146cb051efb514deb27ce3883e.1777475843.git.asml.silence@gmail.com>
 <20260513083937.GD6461@lst.de>
Content-Language: en-US
In-Reply-To: <20260513083937.GD6461@lst.de>
X-Spamd-Bar: ---
Message-ID-Hash: Q4BUIWIPS3H5KEMDRALSTME2QUP3XEVV
X-Message-ID-Hash: Q4BUIWIPS3H5KEMDRALSTME2QUP3XEVV
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 04/10] block: introduce dma map backed bio type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Q4BUIWIPS3H5KEMDRALSTME2QUP3XEVV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 1A03C569680
X-Rspamd-Server: lfdr
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
	NEURAL_HAM(-0.00)[-0.509];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

On 5/13/26 09:39, Christoph Hellwig wrote:
>> +	union {
>> +		struct bio_vec		*bi_io_vec;
>> +		/* Driver specific dma map, present only with BIO_DMABUF_MAP */
>> +		struct io_dmabuf_map	*dmabuf_map;
>> +	};
> 
> ... and please add the bi_ prefix we're using for all (well except for
> one oddity) fields in struct bio.

Ok, going to add

-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
