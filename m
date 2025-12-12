Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HKCIKMI4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:04:51 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 377BA411522
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:04:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4E2654095F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:04:50 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	by lists.linaro.org (Postfix) with ESMTPS id 054BD3F992
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Dec 2025 20:10:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel-dk.20230601.gappssmtp.com header.s=20230601 header.b=nrSNZPmf;
	spf=pass (lists.linaro.org: domain of axboe@kernel.dk designates 209.85.214.170 as permitted sender) smtp.mailfrom=axboe@kernel.dk;
	dmarc=none
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-29efd139227so18234115ad.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Dec 2025 12:10:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20230601.gappssmtp.com; s=20230601; t=1765570255; x=1766175055; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gsVed5WgXtZPXSfJ2PXjLRbNCmFwRAyF31OH8siBSJw=;
        b=nrSNZPmfTdeFC5eQTLQqLbDY7b0zgtH2aDKdGXhiM34/qSIE08VljBo/b63A9gP3q8
         UtOiCG/d6m0RJ6l+1k3xylb3nXNPZmuDDIjziE+o8Ycj5wz8Ab3YdYaRb0dNk0d711jQ
         Du50Urw3MN1l4xmu5Qtz6NdDdpGsKxN0YhGksTbY3rpMmFAwulEm1L2h1pnkPpgFs3Vo
         9G4fYxDs9zi9NCXgmC+f+xqqFSUgSl2pVwKF88iqZGjWRhuYi4otPyvKm1kwakvdXjfJ
         6uqQdGj4v/ZtqJgPVz7WA3dmpT74QaiMDWNzr0Vhm+QzsCI9alOM6EVhCAF/CxTbUq8U
         ed9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765570255; x=1766175055;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gsVed5WgXtZPXSfJ2PXjLRbNCmFwRAyF31OH8siBSJw=;
        b=JI98/tJCjINnbxuCVuHZBaH7Kc8LA2z5BMcIisnSmsJ78OkSRgF3ZcrJ49PeGand2g
         2VV6KVYUAHFl1PvrF+A3+NwrtK6O9xijq35z2vXibdFfSPB+Z2tVGwujPS+lywVg4amh
         fGvJ+KwLyBVAaqphUxh7hJPSEJoaFyK1njpHXhckmRCGSAVmyPOpAH1XRPAEF/tgOX2f
         EaOh6QZjitbEZ2Gu3RdoyMaIT7LGHpG7e5+q92Qj20m+fwu3MNWQrL1xZdA8FupVopFV
         fOugw1HoskvQW6k98yDzxIs9yAAPvDsShhmePyGUUGk+EGKVnZdTBjezb38rWspnrUOw
         urWw==
X-Forwarded-Encrypted: i=1; AJvYcCWoUrXaTpvnhgy+d7I7Qi9UndmSJ2aaREs5W+T79wQu7SLjBkEfUplrsHZvbVWXiTi1eYswCyuV7PdLWcgA@lists.linaro.org
X-Gm-Message-State: AOJu0YyRHPjBpQoOTpLdanN/XCEPwGc9wdTzOLZbmQIJgzepQvOa9Sqr
	t3kyhcK7MoZqZaMVkfqHpPQh9cFhTZhryPALvwcJRcq75MT/sVSRehTPIaNfTDgWhWQ=
X-Gm-Gg: AY/fxX4M0yn2C2yNYdsAKtE/ZvvIY8uv3HJKN+oax0ywOXO+mSfbZRdtuChB67RC4am
	gHc+S/9g0B8uBF2J0CtIdTF3q+r/FBUlRBWh5J/QD4EddzRWzvodiU48SQmUeFnXSaDMnuMdgvs
	EABSL6xNDJaD6zshtymd+v20GIOSSk0I4seBSI+z8804B6S/CXI0TwlHmRjG+uf9K7o80fY1dNf
	KMlve3zDu3oSZFqu+48jssmE/Mk27kmFrSw1o9FRzcNlLL94aZ+bLvY9LPH+7cPaJ51xrHKa7Vb
	/b02zMnK9H9sy5aBw9ogGig5GAo41b/kxv2JwpiJKacwoV4EuoPFosUewjyr97XCOW48VSaa+Ra
	Zqh+FYCnTEF2h7WmX9AyogwV/AkGaGx4ekghjDazObB41Lh0LVEjzUJwg7s3T8znElSS0zYiNCX
	SZaQ0zpwz3aBAfJI/GGtcuiCXSDHNPtGL5zvPmjWuu8nwtPsKeNg==
X-Google-Smtp-Source: AGHT+IH4YKlBbDeLqTy95z05gm75S6dqOblA2F2FrB859WtV1ZEekn7/gpBPyoL8TMFo+3JpfAzaQQ==
X-Received: by 2002:a17:902:f688:b0:29f:29a8:608b with SMTP id d9443c01a7336-29f29a861cemr19807075ad.13.1765570255065;
        Fri, 12 Dec 2025 12:10:55 -0800 (PST)
Received: from [172.20.4.188] (221x255x142x61.ap221.ftth.ucom.ne.jp. [221.255.142.61])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29ee9d38c7fsm62825655ad.39.2025.12.12.12.10.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Dec 2025 12:10:54 -0800 (PST)
Message-ID: <2729b31b-ba58-4f32-b71a-75bd07524ac8@kernel.dk>
Date: Fri, 12 Dec 2025 13:10:50 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Pavel Begunkov <asml.silence@gmail.com>,
 Christoph Hellwig <hch@infradead.org>
References: <cover.1763725387.git.asml.silence@gmail.com>
 <6cb3193d3249ab5ca54e8aecbfc24086db09b753.1763725387.git.asml.silence@gmail.com>
 <aTFl290ou0_RIT6-@infradead.org>
 <4ed581b6-af0f-49e6-8782-63f85e02503c@gmail.com>
From: Jens Axboe <axboe@kernel.dk>
Content-Language: en-US
In-Reply-To: <4ed581b6-af0f-49e6-8782-63f85e02503c@gmail.com>
X-Spamd-Bar: ---
X-MailFrom: axboe@kernel.dk
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EPN7X5OOKUDV6SK6XGJ5VGHOI65HCVI4
X-Message-ID-Hash: EPN7X5OOKUDV6SK6XGJ5VGHOI65HCVI4
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:04:40 +0000
CC: linux-block@vger.kernel.org, io-uring@vger.kernel.org, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 03/11] block: move around bio flagging helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EPN7X5OOKUDV6SK6XGJ5VGHOI65HCVI4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[2995];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DMARC_NA(0.00)[kernel.dk];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,infradead.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.858];
	FROM_NEQ_ENVFROM(0.00)[axboe@kernel.dk,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lst.de:email,linaro.org:email]
X-Rspamd-Queue-Id: 377BA411522
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 12/11/25 6:08 PM, Pavel Begunkov wrote:
> On 12/4/25 10:43, Christoph Hellwig wrote:
>> On Sun, Nov 23, 2025 at 10:51:23PM +0000, Pavel Begunkov wrote:
>>> We'll need bio_flagged() earlier in bio.h in the next patch, move it
>>> together with all related helpers, and mark the bio_flagged()'s bio
>>> argument as const.
>>>
>>> Signed-off-by: Pavel Begunkov <asml.silence@gmail.com>
>>
>> Looks good:
>>
>> Reviewed-by: Christoph Hellwig <hch@lst.de>
>>
>> Maybe ask Jens to queue it up ASAP to get it out of the way?
> 
> I was away, so a bit late for that. I definitely wouldn't
> mind if Jens pulls it in, but for a separate patch I'd need
> to justify it, and I don't think it brings anything
> meaningful in itself.

I like getting prep stuff like that out of the way, and honestly the
patch makes sense on its own anyway as it's always nicer to have related
code closer together.

-- 
Jens Axboe
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
