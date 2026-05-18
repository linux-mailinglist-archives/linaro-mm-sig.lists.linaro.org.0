Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJ/vL8IIC2o0/gQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:40:34 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5874E56CDCE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:40:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9F3BF406C8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 12:40:32 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by lists.linaro.org (Postfix) with ESMTPS id CDAD0406B1
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 12:40:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=QoX2oHVb;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.128.43 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-48e56c1bf5dso10443475e9.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 05:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779108021; x=1779712821; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QXVLM8myHSCmhmEigozDJCG9BugvlW9svyQsziHjoMk=;
        b=QoX2oHVbKp7+0x2SidaVst5whk38K0+8NXgqhUheYnP0AzBa982yPfh8b9uwgAs/VZ
         QckAyLOL2q4gFJYJ6T+lT74CFPRVz12xWuas+FYEGoYOmpD1D6dW3osZH8E1PJVCZdSe
         1yY+YzwJEcV5NmJNLlcAFZeqFmIGJAuyndzE0OHlpyyHfSsCBAyYXsuKuEDKHwKQnA3Q
         tqk59Y7jR+/7TF9q9+kHMPeEY0FYGlffOoVN8JAlEl8oqAN1xVqL9LQSn5O9XMhxLEdU
         FPe/xRsVolKbZEkVkawjZJQh1SR+KjFe57uwescRMwa0YvngDyQBXHaAyApcicuO2dC6
         84gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779108021; x=1779712821;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QXVLM8myHSCmhmEigozDJCG9BugvlW9svyQsziHjoMk=;
        b=fwJxj0X9WiX1Fv0G4N5x1bY0uc3E+WOJMsxzfJdU1S8tzJ53Ywa+nUTddz6s4eeJpH
         VCY01VeBqhKyXJvSrBF119Uig7wcV6JBzShTbAIWUN1Rpnt03zIvXTUbIDFmESmQKjr8
         27ri++jBBr/X46ycUaVu4e6sGSoSpb+SGV+ADVKqkGa7VMkUGOwJGODu2E1loNOGTAW2
         GrI+0dfhMFafQMWw+Yu7Kn4WNDxt2kC1fJelkARy0KyDOKtpD4PZ1DxllHKX5IVj0Q06
         jtzeK1XHqiJdh4U8nKCluSPllf3mdpNqrjT2h/c3nRAsB47fw65GPFjjTjj2edWiq+OI
         /pbw==
X-Forwarded-Encrypted: i=1; AFNElJ9ep2xpKKPLLpxrvaqRMgHNhKm6NEJobgJCqTKLFYL8D6BxqElu1hdTC0hFSdq1/5ZUbZsAjlg+7CV5IdD0@lists.linaro.org
X-Gm-Message-State: AOJu0Yymeq00v+nUuHfgoqxKLueB7VHSW8Sod/U9TAnIkGdWzPSxeDGH
	y9QyJYtz5bd9xJ6tcX5kVBnUaE5gfImJspxFEqKYL88CSVVEs5P5BrTs
X-Gm-Gg: Acq92OHPhL6dP466TWJmGuFvbEmrFGWlGQpfYCUHkg/rWy15UG6VfkjnJvBocXy5F9Q
	Ip1iuPd/as3133yOSTSFLksQDjL9tk2CBwY+B+G7Zeb5AMElhbZQOUivR9Wsn+Ipq86GBS11Ucw
	g7/+cabpKPXPSY1WUDmb8zsna5kYI+vmH5LxcY7eAhZWRHSae7yZ88JUDrtM0Irq8q1kopmjzBv
	hGz8D9NCt7NCIwEt4NtMoDSMxrL9uxpOibldelR4jJGNEdNzHHYeiiClONQgOqRL8jD1SiGmN1e
	GgOcvePQjokyrSjBEbUbfn5yGr5OCjaBO+nSNvAT20Zv0BNhRGRqWrE2RZPWYkFpzvejumKOy6L
	NZ8kYL/i1sND1Qs9xV4JuZ1WHfqqo38jNpgdF7PZ3jvREEOjzEebdvDaR45mr3C+55BzvMcESxI
	nnz73pxMnURwya4ySLSn9uguvOuhXxD8eKG0WmjriOnFtTh0i87leJfHV9Z+0clQzvOafj5RxdY
	yxay6VYaEayR2QtHUy9Q5GhMicTWrCtezikpdcnAlLUTVZEQznuIc1dsSX8NYfulWlAlvTCsWuh
	y2vXqeQp4GA5
X-Received: by 2002:a05:600c:6592:b0:48a:557e:6b4f with SMTP id 5b1f17b1804b1-48fe62f8861mr237008575e9.23.1779108020601;
        Mon, 18 May 2026 05:40:20 -0700 (PDT)
Received: from ?IPV6:2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c? ([2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48fe4c8d39esm256597555e9.7.2026.05.18.05.40.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2026 05:40:20 -0700 (PDT)
Message-ID: <4561c621-817c-46be-8ff0-0b557f6c819d@gmail.com>
Date: Mon, 18 May 2026 13:40:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Christoph Hellwig <hch@lst.de>
References: <cover.1777475843.git.asml.silence@gmail.com>
 <646ecd6fde8d9e146cb051efb514deb27ce3883e.1777475843.git.asml.silence@gmail.com>
 <20260513081929.GD5477@lst.de>
 <24833f76-2289-4859-86d1-9215b11a1258@gmail.com>
 <df697a76-c700-4908-ac08-a47ad07e0796@amd.com>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <df697a76-c700-4908-ac08-a47ad07e0796@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: IC5DTH2ZR6AQQFEHO2MDIAVHG6A2C6WJ
X-Message-ID-Hash: IC5DTH2ZR6AQQFEHO2MDIAVHG6A2C6WJ
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 04/10] block: introduce dma map backed bio type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IC5DTH2ZR6AQQFEHO2MDIAVHG6A2C6WJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 5874E56CDCE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.475];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

T24gNS8xOC8yNiAxMzoyMiwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gT24gNS8xOC8yNiAx
MjoyOSwgUGF2ZWwgQmVndW5rb3Ygd3JvdGU6DQo+PiBPbiA1LzEzLzI2IDA5OjE5LCBDaHJpc3Rv
cGggSGVsbHdpZyB3cm90ZToNCj4+Pj4gK8KgwqDCoCBpZiAoIWJpb19mbGFnZ2VkKGJpb19zcmMs
IEJJT19ETUFCVUZfTUFQKSkgew0KPj4+PiArwqDCoMKgwqDCoMKgwqAgYmlvLT5iaV9pb192ZWMg
PSBiaW9fc3JjLT5iaV9pb192ZWM7DQo+Pj4+ICvCoMKgwqAgfSBlbHNlIHsNCj4+Pj4gK8KgwqDC
oMKgwqDCoMKgIGJpby0+ZG1hYnVmX21hcCA9IGJpb19zcmMtPmRtYWJ1Zl9tYXA7DQo+Pj4+ICvC
oMKgwqDCoMKgwqDCoCBiaW9fc2V0X2ZsYWcoYmlvLCBCSU9fRE1BQlVGX01BUCk7DQo+Pj4+ICvC
oMKgwqAgfQ0KPj4+DQo+Pj4gVGhpcyBpcyBiYWNrd2FyZHMsIHBsZWFzZSBhdm9pZCBwb2ludGxl
c3MgbmVnYXRpb25zOg0KPj4NCj4+IEkgY2FuIGZsaXAgaXQsIGJ1dCBjb21waWxlcnMgdGVuZCB0
byBwcmVmZXIgdGhlIHRydWUgYnJhbmNoLiBFLmcuIHRoaXMNCj4+DQo+PiBpZiAoY29uZCkgQTsg
ZWxzZSBCOw0KPj4gQzsNCj4+DQo+PiBjYW4gZ2V0IGNvbXBpbGVkIGludG86DQo+Pg0KPj4gam1w
Y2MgY29uZCBCDQo+PiBBOiAuLi4NCj4+IEM6DQo+PiByZXR1cm47DQo+PiBCOiAuLi4NCj4+IGpt
cCBDOw0KPiANCj4gV2hlbiB0aGF0IGlzIHJlYWxseSBhIHBlcmZvcm1hbmNlIGNyaXRpY2FsIHBh
dGggdGhlbiB5b3UgY2FuIHVzZSB0aGUgbGlrZWx5KCkgYW5kIHVubGlrZWx5KCkgbWFjcm9zIHRv
IGdpdmUgdGhlIGNvbXBpbGVyIHRoZSBoaW50IHdoaWNoIG9uZSB0byBwcmVmZXIuDQoNClRoYXQg
bWlnaHQgYmUgbW9yZSBwZW5hbGlzaW5nIHRoYW4gcGxhY2luZyB0aGVtIGluIHRoZSByaWdodCBv
cmRlciwNCmFuZCBpdCBtaWdodCBiZSBmaW5lIGFzIGl0J3MgbmV3IGFuZCBhbGwgdGhhdCwgYnV0
IGl0J3Mgbm90IGEgY2xlYXINCmN1dCBhcyBpdCdzIGRlZmluaXRlbHkgbm90IGNyZWF0ZWQgdG8g
YmUgYSBzbG93IHBhdGguIFRCSCwgbm90IHN1cmUNCndoeSB3ZSdyZSBiaWtlIHNoZWRkaW5nIHN1
Y2ggdGhpbmdzLCBpcyBpdCBzb21ld2hlcmUgaW4gdGhlIGNvZGUNCnN0eWxlPw0KPiBXaGF0IGNv
dWxkIGJlIHVzZWZ1bCBpcyB0byBoYXZlIHRoZSB0cnVlIHBhdGggZm9yIHRoZSBtb3JlIGNvbW1v
biBhbmQgdGhlIGZhbHNlIHBhdGggZm9yIHRoZSBsZXNzIGNvbW1vbiBjYXNlIGZvciBkb2N1bWVu
dGF0aW9uIHB1cnBvc2VzLCBidXQgaW4gdGhhdCBjYXNlIEkgd291bGQgZXhwZWN0ZWQgc29tZSBj
b2RlIGNvbW1lbnRzIGFzIHdlbGwuDQpXaGF0IGtpbmQgb2YgY29tbWVudCBhcmUgeW91IHRoaW5r
aW5nIGFib3V0PyBBICJ0aGlzIGlzIG5vdCBhIGxpa2VseQ0KcGF0aCIgdHlwZSBvZiBjb21tZW50
IGJlZm9yZSBlYWNoIG1lbnRpb24gb2YgdGhlIGZsYWcgaXMgdXN1YWxseSBub3QNCnZlcnkgdXNl
ZnVsLg0KDQotLSANClBhdmVsIEJlZ3Vua292DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
