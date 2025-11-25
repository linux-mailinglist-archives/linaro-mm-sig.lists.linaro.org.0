Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qH2gKk0A4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:29:17 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ABFF410C92
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:29:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 79E1D40A3A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:29:16 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id 642B53F76E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Nov 2025 12:35:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=SdDVWm+z;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.128.50 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47790b080e4so29023715e9.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Nov 2025 04:35:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764074109; x=1764678909; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=siB9qFjab8fX+nGosH2txh4HIYoNVo3aqhU42WS03o0=;
        b=SdDVWm+zzeYJQhjGkDx7DzBA7ImcBC9XV1I1+r1DK/fFk+WLRBIiJ2lIxUi+DjpVBd
         8SsG0OginStg+wUSeIjoZifdsLHrsTLPyWZwDC9zhqtYzM7V+W4/xyMZdGmEF1M5ad48
         9kcxV/SD2Cjav8lK36Nxn8lLDM+YvxcfObDNvrNq2kAAIztCbjsTTy0AFPs8R4ozggs9
         xDa2MMmWV7tZKBA2bxoutXTRkO/liTFAHdNYf3lPF0n3RrYCC8JA3e8xSyh2UnorMTbs
         wUcAlOO/tGvXz1jUVL/ZgN3n1acRS7DoJ+aoPC0Q9jOAIerwhKnRJCL7yECsTr6Xvxdp
         I9gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764074109; x=1764678909;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=siB9qFjab8fX+nGosH2txh4HIYoNVo3aqhU42WS03o0=;
        b=VQxgOejORTKfAi8nHgHminG4oPVSwcz1EK/QQ3ZmUqL4fN9/OfRqnVtOt9Q6yoVHgJ
         W5bBWKUyuk/Bs9wQJXYzYgTRvlMock1guijo11/598C1M+r1kuLIpEf7HuLLlJJ6JlPm
         qRNSBhMrYI929WrmoPduwIhdXhz9hXsd0stAWZh0mcWPeO1772ptZR5d6IPL19F1vO+n
         R8fH0OkZ0rYd6pPZiwp3JOdtiTAJCe+AmdV5wpOrm/Ho0mWylGbvq79O1c2Nykcw8Cnm
         m68rNAD+scXn0xZT7XnQgXJBNV2tM2iD/fSnvPuRqdjVqLrXjuYVLKyOgx2k6+BmHN3l
         vozQ==
X-Forwarded-Encrypted: i=1; AJvYcCVFXfMUh1iPGJ30Wa9HwravPx0FVaAxlPtRWxqhLq1ij9t1DeUO71Xxt/K+RLeYgx1CNezwYixD2IXW0+op@lists.linaro.org
X-Gm-Message-State: AOJu0Yx327Wa3b40GNcByv6kO7KB8AuuoqWnsAlXSNj3TnJpZS4pkTLJ
	k/EhksmsWy3qtsTeGjXFCGutyFl/xvKwzpRl1ykkzy1vd9myxbpHgWGO
X-Gm-Gg: ASbGncsYZu3UdekO+nMDTri0w2TnRsQdYEsvvq7AwMK2NGf4m1UL/SaT+evRk9HxXpx
	RvUOBJVLOAGNw9ri+4JmhHqad0bOb1pw+Gvb6mjHjCHihER374POGUXmraOdGUzD4Ql6zM5jO7D
	NNTjhUmdBcsMLeiQkyLkh7LnneNxOdsC83v6k3+fPMVLJYRnOVkgP+jcXpAiFyujrHeJGs8gW68
	i0mv5aDBv/vMRRzriKDg70gmc67ePrKowbftCT3Q5pm/+CHqVkqYUuxrCXsrwuHw/MhYLi/cPSd
	z8ywOOmQXbeVwjTwzhuVzDrhqSmi9Mvrgi4NSk56TB5y08SrQkeht6670O8kofXmFdvFf/6fuz+
	8FmNeZwFjZ7w0CSfxO1LSTYeqYDT3d/swLhpSBeg9PzwgArfb0VGel+7U2080tW6fCf7va05AVg
	hxD6UAdCA9aq0HeUoT5q8AQuYDgiaf7/BRI7FtczI7X1Cwl0ahtbXB6e4V8mwn7w==
X-Google-Smtp-Source: AGHT+IGiAByXWX/VuXJ575rRIj6bTeEbAlnebab6FY0vB4jAmRqS6rohlKvvoUgeChvVCplBX1c2lg==
X-Received: by 2002:a05:600c:1d1b:b0:477:9671:3a42 with SMTP id 5b1f17b1804b1-477c1133e4bmr159739175e9.35.1764074109236;
        Tue, 25 Nov 2025 04:35:09 -0800 (PST)
Received: from ?IPV6:2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c? ([2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fb919bsm33941871f8f.34.2025.11.25.04.35.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 04:35:08 -0800 (PST)
Message-ID: <1f8b5e97-1f3c-46f8-8328-449c159b7d66@gmail.com>
Date: Tue, 25 Nov 2025 12:35:06 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Anuj gupta <anuj1072538@gmail.com>
References: <cover.1763725387.git.asml.silence@gmail.com>
 <CACzX3Au7PW2zFFLmtNgW10wq+Kp-bp66GXUVCUCfS4VvK3tDYw@mail.gmail.com>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <CACzX3Au7PW2zFFLmtNgW10wq+Kp-bp66GXUVCUCfS4VvK3tDYw@mail.gmail.com>
X-Spamd-Bar: ---
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HWHA4XPI3HJNHT76H62TMUTCEFJT45GO
X-Message-ID-Hash: HWHA4XPI3HJNHT76H62TMUTCEFJT45GO
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:06:56 +0000
CC: linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 00/11] Add dmabuf read/write via io_uring
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HWHA4XPI3HJNHT76H62TMUTCEFJT45GO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[3410];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.274];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 6ABFF410C92
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 11/24/25 13:35, Anuj gupta wrote:
> This series significantly reduces the IOMMU/DMA overhead for I/O,
> particularly when the IOMMU is configured in STRICT or LAZY mode. I
> modified t/io_uring in fio to exercise this path and tested with an
> Intel Optane device. On my setup, I see the following improvement:
> 
> - STRICT: before = 570 KIOPS, after = 5.01 MIOPS
> - LAZY: before = 1.93 MIOPS, after = 5.01 MIOPS
> - PASSTHROUGH: before = 5.01 MIOPS, after = 5.01 MIOPS
> 
> The STRICT/LAZY numbers clearly show the benefit of avoiding per-I/O
> dma_map/dma_unmap and reusing the pre-mapped DMA addresses.

Thanks for giving it a run. Looks indeed promising, and I believe
that was the main use case Keith was pursuing. I'll fix up the
build problems for v3

-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
