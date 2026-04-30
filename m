Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJtHBWBeBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:20:00 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BEA532123
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:19:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB3193F75E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:19:58 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	by lists.linaro.org (Postfix) with ESMTPS id 4CF4F404F5
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Apr 2026 18:33:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=lVFJ1c4R;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.221.54 as permitted sender) smtp.mailfrom=asml.silence@gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-43d77f6092eso821004f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Apr 2026 11:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777574035; x=1778178835; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NXLg+nrr3M9M+FT0+QCr6ZD6pc/R7QelMFoBuHbRWoU=;
        b=lVFJ1c4RTITDR9w7Fbp22f/lqmMTUn72mo/yVLY0PAETof33Ve2uQDSvFx7xpONco0
         2HkeaBcofj3xd0P0M1CudSFyptQMa4WlZUO5oub2ovEl/z1RvHQET3JLFZG/TzL+orlS
         L8KN4fvyd+0hlSANovI27Oioozex9mST5WAsXCo1Wp6iHi66bPy1p0Bhi0Hpvh6twp2G
         HWCr7FsgzNrtfPtTX0f7+fd+igeO3lIfyPH25ZiDjMHhIja0MLTMHQDLtwKyt8V/TRHT
         gHMSu7Ue7kQioloIYsKfeVDpRuAKWQy7VEc72Pth2Zg20r4J+QuQnMVNjJvwMZGj/o/c
         61Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777574035; x=1778178835;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NXLg+nrr3M9M+FT0+QCr6ZD6pc/R7QelMFoBuHbRWoU=;
        b=NS0YawXNvaMQ9QiSXtWEmJjPlKqL8JFJkVBvOa+DQJ6nApv89RXEJ/OUjDihccRksu
         nprQUsvtMCjzyhTXD0UpF2fMQMlCij3KH2Ty+ytfbU++mnk0MFLOAcnwRGQX2VB7+1Tc
         Y+NV2lbXw52evkjnYsN+hnPkwgw1EbrUfrQjc2cgnOgEA9I71ULvJS9TITs5pCafujw6
         RrelfUuvZoo6m1jGlqTqKdo5CjD7N1oudwYC4IGrTgQAqtGW53y1X8Kk0MEKZBDq4+da
         7lduk044+dSadS0Luram4dtatbHO+Cr190KxXdNBvYok1G/V67Awgf0uNuKGSii19/QX
         JNEA==
X-Forwarded-Encrypted: i=1; AFNElJ8OH6YtT0TU4hJUWTqnNJOCktFUDmZBbcv6oqbNF11+babf5D8ETVL+CBQE15Igjxk5+FpwaMfq+6dugEPz@lists.linaro.org
X-Gm-Message-State: AOJu0YwJ3ZEmYhwCUMBAmDY9DuISqNork4QKvL+C6r0xLd3CL/MkKApI
	HPDqUuuTLvbeqNpDVjCu2ehXHKuMsjW3Dp31kWgz4+xsty6tU6S3YPTu
X-Gm-Gg: AeBDievczVtVixmEnng3cmKevQ36GFcK2g6HaaSPmUDtsonRgRrQIxE8DrHLcMKbM+V
	x1f6YlA+ed0MCJjVCNMVIZ9iGEhEFIuPe8gO93jrrUAw690UuOfgKmY5FgdZxXe677Jh3qArK5f
	1gncRsROFWargHEfQDPuOzlutYHWN2UMA4VYl5fGzQKL75BoB8ZePHJjU+0kXj7dxa0n6zNo5bR
	V4Ee5iYjh40k/jCqBTO9ab3lXjT4JWo9heUkuQ83Yl8yohCFJ1g2466DHyyFg0vsc+HBIPLX9W5
	LmfhMzIJdJAQNoao36kpNjhNI0o/aIOFqwwYoc8kMvzEK/+BrKoI9SiUMhRKUiU6tphDpXtaa34
	jJiyIhXDgRPaJ6+DNymdMOzIt+K3sCe/6EaNCY1PTopSdrnPCx35rnRUWTaXuj8T8XOq6rh1pSq
	mRin66j6h5QzIPnOBYJXpHh22T3jtjvFF779Nu26BLDFXjnnVCl1DGhGMisoivVYR1l6QawaG1T
	qLX6h107Sz26ZDgQYsCtodCXQBSaA6W/wIgYJWMgQZj/O7yAvHGZpaO0V8aq4xstS8G6ukJ4Ie6
	sA==
X-Received: by 2002:a05:6000:1a8a:b0:43d:77a8:3baf with SMTP id ffacd0b85a97d-4493fa01beamr7079438f8f.32.1777574035154;
        Thu, 30 Apr 2026 11:33:55 -0700 (PDT)
Received: from [10.109.92.8] (net-2-37-141-89.cust.vodafonedsl.it. [2.37.141.89])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-447b4216eecsm13579672f8f.9.2026.04.30.11.33.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2026 11:33:54 -0700 (PDT)
Message-ID: <6cce2f4d-7400-4618-82ce-cbd5004c92a4@gmail.com>
Date: Thu, 30 Apr 2026 19:33:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Christian Brauner <brauner@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <cover.1777475843.git.asml.silence@gmail.com>
 <ae941457cf6cacb9d4c16b6ec904da9ef7fed97f.1777475843.git.asml.silence@gmail.com>
 <f0dd8f89-835e-4331-b593-4405ec59f4fe@amd.com>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <f0dd8f89-835e-4331-b593-4405ec59f4fe@amd.com>
X-Spamd-Bar: ---
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UUIPWTCBKS26R64VUQEGIWIRI4YFKCFP
X-Message-ID-Hash: UUIPWTCBKS26R64VUQEGIWIRI4YFKCFP
X-Mailman-Approved-At: Wed, 13 May 2026 11:19:38 +0000
CC: Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 01/10] file: add callback for creating long-term dmabuf maps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UUIPWTCBKS26R64VUQEGIWIRI4YFKCFP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: C6BEA532123
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	DATE_IN_PAST(1.00)[304];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.927];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

T24gNC8zMC8yNiAwNzowMywgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gT24gNC8yOS8yNiAx
NzoyNSwgUGF2ZWwgQmVndW5rb3Ygd3JvdGU6DQo+PiBJbnRyb2R1Y2UgYSBuZXcgZmlsZSBjYWxs
YmFjayB0aGF0IGFsbG93cyBjcmVhdGluZyBsb25nLXRlcm0gZG1hDQo+PiBtYXBwaW5nLiBBbGwg
bmVjZXNzYXJ5IGluZm9ybWF0aW9uIHRvZ2V0aGVyIHdpdGggYSBkbWFidWYgd2lsbCBiZSBwYXNz
ZWQNCj4+IGluIHRoZSBzZWNvbmQgYXJndW1lbnQgb2YgdHlwZSBzdHJ1Y3QgaW9fZG1hYnVmX3Rv
a2VuLCB3aGljaCB3aWxsIGJlDQo+PiBkZWZpbmVkIGluIGZvbGxvd2luZyBwYXRjaGVzLg0KPiAN
Cj4gV2VsbCBmaXJzdCBvZiBhbGwgdGhlIG5hbWluZyBpcyBwcm9iYWJseSBub3QgdGhlIGJlc3Qu
IE1heWJlIHJhdGhlciBjYWxsIHRoYXQgZG1hLWJ1ZiBhdHRhY2htZW50IG9yIGNvbnRleHQgb3Ig
bWFwcHBpbmcuDQoNCiJNYXBwaW5nIiBvciAiYXR0YWNobWVudCIgd291bGQgYmUgY29uZnVzaW5n
IGFzIG1hcHMgYXJlIGNyZWF0ZWQgbGF6aWx5DQp0b2dldGhlciB3aXRoIHN0cnVjdCBpb19kbWFi
dWZfbWFwLiBJIGNhbiBuYW1lIGl0IGNyZWF0ZV9kbWFidWZfY3R4KCksDQpidXQgSSBkZWNpZGVk
IHRvIHVzZSAidG9rZW4iIG5vdCB0byBjb2xsaWRlIHdpdGggZG1hYnVmIHRlcm1pbm9sb2d5Lg0K
ZS5nLiBJIHdvdWxkbid0IGJlIHN1cnByaXNlZCB0byBzZWUgc29tZSBkbWFidWYgY3R4IGluIHRo
ZSBkbWFidWYNCmltcGxlbWVudGF0aW9uIGNvZGUuIE1heWJlICIqaW9fY3R4IiB3b3VsZCBiZSBi
ZXR0ZXIuDQoNCj4gVGhlbiB0aGUgcGF0Y2ggc2hvdWxkIHByb2JhYmx5IGRlZmluZSB0aGUgZnVs
bCBpbnRlcmZhY2UgYW5kIG5vdCBqdXN0IGFkZCB0aGUgY2FsbGJhY2sgaGVyZSBhbmQgdGhlbiB0
aGUgc3RydWN0dXJlIGluIGEgZm9sbG93IHVwIHBhdGNoLg0KDQpJIHN0cm9uZ2x5IHByZWZlciBz
cGxpdHRpbmcgcGF0Y2hlcyBzbyB0aGF0IHRoZXkgdG91Y2ggb25lIHRyZWUgYXQNCmEgdGltZSB3
aGVuZXZlciBwb3NzaWJsZS4gdGJoLCBJIGRvbid0IHNlZSBtdWNoIG9mIGEgcHJvYmxlbSBpdCBi
ZWluZw0Kbm90IGRlZmluZWQgYXMgaXQncyBqdXN0IGZvcndhcmRlZCBpbiBmaXJzdCBwYXRjaGVz
LCBidXQgSSBjYW4gc2h1ZmZsZQ0KaXQgYXJvdW5kIGluIHRoZSBzZXJpZXMgc28gdGhhdCBkZWZp
bml0aW9ucyBjb21lIGZpcnN0Lg0KDQotLSANClBhdmVsIEJlZ3Vua292DQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
