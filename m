Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CO4PDjZhBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:32:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 753BB53252A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:32:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 77DD73F7F1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:32:04 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by lists.linaro.org (Postfix) with ESMTPS id E5DAE3F84B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2026 09:30:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=prfavn7j;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.218.46 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b8f97c626aaso48074866b.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2026 02:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778578231; x=1779183031; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VGZAkcM+ym8AsbVGOAJ6+xeqYSrWcyKvdgdcKQ4eIYE=;
        b=prfavn7jVVdp6I1jGOGPOxHOBd47qIYqDgQaFolwNBg8CJQhPu8VTHBrxMTFpjio1u
         0d2yoRkgthHm8+B1vhjC8JLxKU3fi5gQnCTCgfBPmhy+T04ZKYiMosTlZcS8JeusTODe
         sZuCtmOpSCIHD8XxtRcKQco9hYlsOhfU8XY/dnZjXKdkoXM1ED7pfuTHlJsUCg7lRNlT
         AmD/dumWdqQaEjqq3gyVMhflO7+Ki/Y3co/ID2xQbguXszeE71fqcUHREq1Q0FmwFAr8
         4zRG3tcFzChHekE6AaL61uRSvvoGtMdBzC8Qp3kEMczEUmDXssRay/V1Zu2/JW5ySW+g
         j2Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778578231; x=1779183031;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VGZAkcM+ym8AsbVGOAJ6+xeqYSrWcyKvdgdcKQ4eIYE=;
        b=hO9/Seu8ZqHsJS85RE1i4eCDWCaxWARZZRN3i10ktBs1g4fM69dT04/FniqBg7DcCp
         0Xb9ZsaKA5VcieiWCJSRz4w9CNqzRvxz7gx7JRqLyeyyq1s5hRL+Gydvzdjdx/+6t8x7
         C494cH13y43sGLkECOZTjKIEQonssKlpqFzOo1IWQvt/zMrfdYUCV0JGiSE9RKZv73x6
         HqAjyRIomv9gs8Xe1AS3wb3TFxF69/zOaWheAyiZ8lRXMs90u2LnRb8Niy8g+7rYoqP4
         lb+luWIThhAiQqbLZgwPfVCWsxHA1WkQiAtBm0MwjmVke3DA+5Q/s90UNiAplWy2PsX+
         jAlg==
X-Forwarded-Encrypted: i=1; AFNElJ8Gt2Ii044qrP4BrC99eAgaY3X7dDZglC1rgXpzvXU8usRe8VV+gHjBGzdFa+PGuCB1ebKVnUlixADVAzFb@lists.linaro.org
X-Gm-Message-State: AOJu0YwoA7oHqzKxeT2rfIPkKM++YjlxuhFuOlpDAeHmOGchr5XG7RPR
	qgwe4fgG0Om663ZeHflX0k8YLj8MZDTi07AS5DEKszxXJHGwmZakTs98
X-Gm-Gg: Acq92OGtgUGnbelBwro58Q28uW9XrFCCFPe2bkZ/02VRBnCiT4d7JwnBgR1zOsaB9Op
	MdoIk69zVe6J46lqIzM2m0rLZIa9Y1st2flc/Z2jUvYLHV2xxgZSIgbPVAywoPBtActiFJLq9g9
	NA+Yt+dDswvSekHbmPjXUNk7uXcKXOYy9kK2O8bClKcj7yD8nFF8/i1B/qE5FAE9gyTJv4KS/ga
	P5viLAXA9gHl7YbeGfwK6MOWVcDZbyEAHcCFYxkZ/4g8PZhi8LZZcR/7lvFQGLzhBLD0/wQ/C9P
	qlfg5u2Aq7cHDt0mBqRRDzunBe1wbcOLAGCmOmu3kBxghhenRNZfN34iBPM4TfAjlyl1pGrQjvh
	KGN+a1Hdn/3FZIxKNZtKW2wRtAtw5JK1PkSPXLQ3DRVmyfXo5zv0DhTdVlC4MqnVXQpYctJfmWL
	ARC5MfuMviW6B/X9wQelHQBa8aGf22e14DKdna5lkQp1dMdBKJwPuulDZFgxIbywLMaaH7rCYWX
	Xw9nukXIyhEAmVClnDqHSv2+h9jtnJ13eChMrI5VGYCEVzVaw==
X-Received: by 2002:a17:906:99c3:b0:bc4:f3ef:e43c with SMTP id a640c23a62f3a-bcaad52246cmr973369766b.45.1778578230560;
        Tue, 12 May 2026 02:30:30 -0700 (PDT)
Received: from ?IPV6:2620:10d:c096:325::372? ([2620:10d:c092:600::1:8c90])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bcfb7b17d1fsm303492866b.41.2026.05.12.02.30.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 May 2026 02:30:30 -0700 (PDT)
Message-ID: <a4748a29-8aa1-44c1-a1e4-b82f4f191d4a@gmail.com>
Date: Tue, 12 May 2026 10:30:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@lst.de>
References: <cover.1777475843.git.asml.silence@gmail.com>
 <20260512070045.GA32030@lst.de>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <20260512070045.GA32030@lst.de>
X-Spamd-Bar: ---
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EOPYQZPINK4UWRZVZLTSSG3WG5AJFJEY
X-Message-ID-Hash: EOPYQZPINK4UWRZVZLTSSG3WG5AJFJEY
X-Mailman-Approved-At: Wed, 13 May 2026 11:25:11 +0000
CC: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 00/10] Add dmabuf read/write via io_uring
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EOPYQZPINK4UWRZVZLTSSG3WG5AJFJEY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 753BB53252A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.59 / 15.00];
	DATE_IN_PAST(1.00)[26];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.083];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

On 5/12/26 08:00, Christoph Hellwig wrote:
> What tree is this against?  I can't apply it against the usual
> candidates, even accounting for the time lag in getting to it.

It should've been a Jens' for-next

> Can you provide a git tree?

git: https://github.com/isilence/linux.git rw-dmabuf-v4
url: https://github.com/isilence/linux/tree/rw-dmabuf-v4

It's a wip branch, for now it's just v3 + 2 fixes.

-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
