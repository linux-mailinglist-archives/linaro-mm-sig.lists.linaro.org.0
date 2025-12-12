Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFmaBwsE4Wn6oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:45:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A651C4112DD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:45:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ACA4844D05
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:45:13 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	by lists.linaro.org (Postfix) with ESMTPS id 85ABF3F9B4
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Dec 2025 01:08:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=k2Rxsyxb;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.216.45 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-34ab8e0df53so391909a91.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 17:08:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765501715; x=1766106515; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pBdi/oDzvSWIXA9titZw8xt1yZ2pS2N9m++Fybej/Mo=;
        b=k2RxsyxblMCEwB0/I4TuhtkgsFyYqfkbMMUf/1kMhxAycSTzIO9DOq9+AN1wpmRxPR
         Lnyb9c4gc+zkSHxTTZKdZrA6PqgyUX7JVxl193nd8ySBIPkoNVP73nmq0Y/s7al81IOy
         BIbi1ydnEkCwAAr3CRBHVILHvU9syDIkUZptmcZ6IijN9LVD77H3mqn5glMCBzcK9Qzj
         NyZG05s8nYkHArQw2UbtEVeRFSfOp3kNYWhk5BoPUzKujlAinqzFb2mv6FZ8xyNm4LkT
         V2MGn2+Y2+2KMBY7q6BMfjE6uXNDxal2bTQQXMEZFexds/6TWK5HKxHUi14+TUQ3MbCn
         yAmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765501715; x=1766106515;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pBdi/oDzvSWIXA9titZw8xt1yZ2pS2N9m++Fybej/Mo=;
        b=Uzp3eWPtP1hQZFp+gSL9HzkDJUZHxqcPRV3NurJJwqWWzFoX4wHy4eLQJwkaDoC3RQ
         cAbG7wY0U0EazRuAM7lyNtXwNNRyLVWf10aRZ5l0oW8WTCnYMWBn95ZmsyTj34Ejyk9u
         qSGkSc5LDQr3lvXbN4x0ddYEXPwZryTATHNWReadGvhK0ZRKls7EHKy6CgLuISyHgxYW
         6FpZSxkccoQIV6sBNDUTM3EbXxUyBLoC9Vuv0oHupzc1ZoHF5pUHTzP82vtVPqxkkD+D
         u6BEBq9hDqabqxp8kippyinr98RbaZ6WZt/ekeA9k79klfKzRoUjorG+pPYlRSt2RoqC
         WmyQ==
X-Forwarded-Encrypted: i=1; AJvYcCXz+8UUdn6exMRsa+sp3QRWCE+WkKlHfbGXREoN7cb60yLPGf5nOjRP4LbY1L9H1r8chsN/cxnWq0Y2Pa12@lists.linaro.org
X-Gm-Message-State: AOJu0YzdAXk0VTdER04YZesOiM9+qi3ho8HiSP2b0KmIbvXLkMl8QujH
	4jUxwJmrglL2XqQdSUl2H564zajbg2ToWkByEkiFjxzYGBMTjgzVghx5
X-Gm-Gg: AY/fxX45RiAfSfJLaBCnK1T9KGQN3CsMuft2okPEExZkuXfW1ySrEpb2qwU/90uT3O5
	XXCVg9StBiAQV9YcPJHiBhEacMUGTQ1D287JCstiAHmM8wiai0laVNDMMqs6bos2pDu7q9td4GU
	XknPcHBJVHjbgqQeMG2rD9KiF6JI4+LSgSJgOf4ZjEp68Plmt0Pgkb5F6rjpfYbxtK5nZO4vrgF
	J++ATGfmsNs+Vf35SBJFBQDuWK5gUzTlNs9kHnNsGZM9BG/O6CVT8HmDTeSvcFCQCT7QwaAsZrO
	KuFQxx/aoVNNaa/dNLJtSImLyNneaWdV3BPSElGoGQ1w4Bk978DLr9vJU/GdNaSLl+0HkWqgfpc
	3gdX1HGyLGFoGyDTnsjzK/RHX5Gd1+AUUAgIihUfZQAKKjxbolybYnVGuaKCqVFip22xy4k1pSI
	VMoVALHIegsvZ74/ZE+fJFthVP9mZQrWvjZdNEbuYRiONlnEYwjtgO2UGIDrdy8Ohp76AByODpH
	2Gt8c5YMM3BdA2fFhDX0cmknhAVTHZghklRueFilVMc/vqiCF8=
X-Google-Smtp-Source: AGHT+IGFHKJf8QGiqR5uvpYaapCUZkmkibIutIZLTj7GFDM1IGCQKgJEzHKd26M9n65r0qbsOVsfhw==
X-Received: by 2002:a17:90b:4c:b0:340:c64d:38d3 with SMTP id 98e67ed59e1d1-34abd6e0220mr546380a91.12.1765501714653;
        Thu, 11 Dec 2025 17:08:34 -0800 (PST)
Received: from [10.200.8.97] (fs98a57d9c.tkyc007.ap.nuro.jp. [152.165.125.156])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34abe3ba59bsm167302a91.7.2025.12.11.17.08.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Dec 2025 17:08:29 -0800 (PST)
Message-ID: <4ed581b6-af0f-49e6-8782-63f85e02503c@gmail.com>
Date: Fri, 12 Dec 2025 01:08:34 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@infradead.org>
References: <cover.1763725387.git.asml.silence@gmail.com>
 <6cb3193d3249ab5ca54e8aecbfc24086db09b753.1763725387.git.asml.silence@gmail.com>
 <aTFl290ou0_RIT6-@infradead.org>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <aTFl290ou0_RIT6-@infradead.org>
X-Spamd-Bar: ----
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2DCA2PFK64HNBOAQUEKM2O46GHHR56AZ
X-Message-ID-Hash: 2DCA2PFK64HNBOAQUEKM2O46GHHR56AZ
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:48 +0000
CC: linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 03/11] block: move around bio flagging helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2DCA2PFK64HNBOAQUEKM2O46GHHR56AZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[3014];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,lst.de:email];
	NEURAL_SPAM(0.00)[0.312];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: A651C4112DD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 12/4/25 10:43, Christoph Hellwig wrote:
> On Sun, Nov 23, 2025 at 10:51:23PM +0000, Pavel Begunkov wrote:
>> We'll need bio_flagged() earlier in bio.h in the next patch, move it
>> together with all related helpers, and mark the bio_flagged()'s bio
>> argument as const.
>>
>> Signed-off-by: Pavel Begunkov <asml.silence@gmail.com>
> 
> Looks good:
> 
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> 
> Maybe ask Jens to queue it up ASAP to get it out of the way?

I was away, so a bit late for that. I definitely wouldn't
mind if Jens pulls it in, but for a separate patch I'd need
to justify it, and I don't think it brings anything
meaningful in itself.

-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
