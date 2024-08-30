Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 74492966BF4
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 31 Aug 2024 00:00:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3BAB942533
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Aug 2024 22:00:51 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	by lists.linaro.org (Postfix) with ESMTPS id C7ADE40F1F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Aug 2024 22:00:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=hT3nnnEH;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.167.41 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5353d0b7463so4098682e87.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Aug 2024 15:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1725055247; x=1725660047; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tzW45B/KJymSGOyNF+ZzLXt4iw3UbCWPr9vwljHJip4=;
        b=hT3nnnEH3OAcGsQmJJGlSpSWPJmTP7SawdfmVCTnvAQ0NTfw6lNOHTDw+cCgH0xHWR
         N91DUS90dRPncJMrxI9xY2FxP/aLSK5gsgLZSY9lVxmCIjVsapnQnUtblGzFO1dd1/td
         vP+6sE0EuAjBecpeszfftIfH42kQ/sZ9XHZT7RRgUKdkak9YFBLwhpZZsf5iyclhb5nQ
         dFITBpe/rbvUQ63hEO+Pg4vqLYYqyJiBLuCEBALwLMSPm7j3x4VFoK8wARNPkVFdaB9F
         QnzIMgAJix0eMdvE4R9N6b5RVoIBkb/OWmesI6rPpaxaSdokVB63URXnPWB3r3PxPEfY
         EjAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725055247; x=1725660047;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tzW45B/KJymSGOyNF+ZzLXt4iw3UbCWPr9vwljHJip4=;
        b=hK0ykFfUBF2WK7zYe0EG34SaaiPXme9VXshrqf5P5QPPCsyPul/tKt1FvWXiyokyn9
         h1dRqj/i4rMmaKeruEY08WE4HmX4fYyzAxSmLmttBBcWJTMZZ62p/B6qfBsZHYKC4wBh
         Mu1L1zCOqtEg11gWzRn+aJxRVy3/BGO7MVF5l3Na+59x+I3BqFaHyPsdWiSUnO6NH4Wp
         sqU4KL8e7ND/OFUy233Zt51y+GD/SauXOhSJl6+czJ2L70KKVne3heX1q3PRaHeuNqcI
         fTGHkqKmMIAdw59n0ewhdE8AAhzr9MrajZd5Fnn4C0r1x37ioqA9o3VWCb2waXoMcpaS
         mLNQ==
X-Forwarded-Encrypted: i=1; AJvYcCWkUG0dJ+TyrXsZxEBBpLKx7jmAKfL04iCa61rjsUysP/LWl140fPp59xYgO867YStubeqefipCFCSdIA4r@lists.linaro.org
X-Gm-Message-State: AOJu0YwtAyttyl0pa5KMbSEHZggMGzJHAybQvWadYFZqSzjE/OEi1+Ho
	jcZuHI7ZS0gA9uZVorePOVhTpPlHJatruaOnHQX6HQR9bBK5ieW9SYA+DL2jQJfAQaLJEXgBXJL
	1SFOzwvEz08JdeQ8aOIhoH2NNGGkcZegKFaA=
X-Google-Smtp-Source: AGHT+IFPQQvsxqmDS/76PwNqhHFuc4KN0lIvnnjTU83UXe1lfbOh5Vc0i6eo2lSA9HeuZxs7QXpK5BZptK0ZhUnEM6c=
X-Received: by 2002:a05:6512:acb:b0:533:4505:5b2a with SMTP id
 2adb3069b0e04-53546b4a8c9mr3000597e87.28.1725055246756; Fri, 30 Aug 2024
 15:00:46 -0700 (PDT)
MIME-Version: 1.0
References: <20240830192627.2546033-1-tjmercier@google.com>
In-Reply-To: <20240830192627.2546033-1-tjmercier@google.com>
From: John Stultz <jstultz@google.com>
Date: Fri, 30 Aug 2024 15:00:34 -0700
Message-ID: <CANDhNCryrqD08fv+Q2kRHya1Z_w_eL6cbAzGaZT8cAsUSG1iLA@mail.gmail.com>
To: "T.J. Mercier" <tjmercier@google.com>
X-Rspamd-Action: no action
X-Spamd-Bar: --------
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C7ADE40F1F
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.41:from];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: V2E6VQMGYFE7VR2PEM2H5C6NTUZKUBXF
X-Message-ID-Hash: V2E6VQMGYFE7VR2PEM2H5C6NTUZKUBXF
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, android-mm@google.com, Xingyu Jin <xingyuj@google.com>, stable@vger.kernel.org, John Stultz <john.stultz@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: Fix off-by-one in CMA heap fault handler
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V2E6VQMGYFE7VR2PEM2H5C6NTUZKUBXF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBBdWcgMzAsIDIwMjQgYXQgMTI6MjbigK9QTSBULkouIE1lcmNpZXIgPHRqbWVyY2ll
ckBnb29nbGUuY29tPiB3cm90ZToNCj4NCj4gVW50aWwgVk1fRE9OVEVYUEFORCB3YXMgYWRkZWQg
aW4gY29tbWl0IDFjMTkxNGQ2ZThjNiAoImRtYS1idWY6IGhlYXBzOg0KPiBEb24ndCB0cmFjayBD
TUEgZG1hLWJ1ZiBwYWdlcyB1bmRlciBSc3NGaWxlIikgaXQgd2FzIHBvc3NpYmxlIHRvIG9idGFp
bg0KPiBhIG1hcHBpbmcgbGFyZ2VyIHRoYW4gdGhlIGJ1ZmZlciBzaXplIHZpYSBtcmVtYXAgYW5k
IGJ5cGFzcyB0aGUgb3ZlcmZsb3cNCj4gY2hlY2sgaW4gZG1hX2J1Zl9tbWFwX2ludGVybmFsLiBX
aGVuIHVzaW5nIHN1Y2ggYSBtYXBwaW5nIHRvIGF0dGVtcHQgdG8NCj4gZmF1bHQgcGFzdCB0aGUg
ZW5kIG9mIHRoZSBidWZmZXIsIHRoZSBDTUEgaGVhcCBmYXVsdCBoYW5kbGVyIGFsc28gY2hlY2tz
DQo+IHRoZSBmYXVsdCBvZmZzZXQgYWdhaW5zdCB0aGUgYnVmZmVyIHNpemUsIGJ1dCBnZXRzIHRo
ZSBib3VuZGFyeSB3cm9uZyBieQ0KPiAxLiBGaXggdGhlIGJvdW5kYXJ5IGNoZWNrIHNvIHRoYXQg
d2UgZG9uJ3QgcmVhZCBvZmYgdGhlIGVuZCBvZiB0aGUgcGFnZXMNCj4gYXJyYXkgYW5kIGluc2Vy
dCBhbiBhcmJpdHJhcnkgcGFnZSBpbiB0aGUgbWFwcGluZy4NCj4NCj4gUmVwb3J0ZWQtYnk6IFhp
bmd5dSBKaW4gPHhpbmd5dWpAZ29vZ2xlLmNvbT4NCj4gRml4ZXM6IGE1ZDJkMjllMjRiZSAoImRt
YS1idWY6IGhlYXBzOiBNb3ZlIGhlYXAtaGVscGVyIGxvZ2ljIGludG8gdGhlIGNtYV9oZWFwIGlt
cGxlbWVudGF0aW9uIikNCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcgIyBBcHBsaWNhYmxl
ID49IDUuMTAuIE5lZWRzIGFkanVzdG1lbnRzIG9ubHkgZm9yIDUuMTAuDQo+IFNpZ25lZC1vZmYt
Ynk6IFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQo+IC0tLQ0KPiAgZHJpdmVy
cy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmMgfCAyICstDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1h
LWJ1Zi9oZWFwcy9jbWFfaGVhcC5jIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmMN
Cj4gaW5kZXggYzM4NDAwNGI5MThlLi45M2JlODhiODA1ZmUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZG1hLWJ1Zi9oZWFwcy9jbWFfaGVhcC5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFw
cy9jbWFfaGVhcC5jDQo+IEBAIC0xNjUsNyArMTY1LDcgQEAgc3RhdGljIHZtX2ZhdWx0X3QgY21h
X2hlYXBfdm1fZmF1bHQoc3RydWN0IHZtX2ZhdWx0ICp2bWYpDQo+ICAgICAgICAgc3RydWN0IHZt
X2FyZWFfc3RydWN0ICp2bWEgPSB2bWYtPnZtYTsNCj4gICAgICAgICBzdHJ1Y3QgY21hX2hlYXBf
YnVmZmVyICpidWZmZXIgPSB2bWEtPnZtX3ByaXZhdGVfZGF0YTsNCj4NCj4gLSAgICAgICBpZiAo
dm1mLT5wZ29mZiA+IGJ1ZmZlci0+cGFnZWNvdW50KQ0KPiArICAgICAgIGlmICh2bWYtPnBnb2Zm
ID49IGJ1ZmZlci0+cGFnZWNvdW50KQ0KPiAgICAgICAgICAgICAgICAgcmV0dXJuIFZNX0ZBVUxU
X1NJR0JVUzsNCg0KDQpUaGFua3MgZm9yIGZpeGluZyB0aGlzISAoQW5kIHRoYW5rcyB0byBYaW5n
eXUgSmluIGZvciBjYXRjaGluZyBpdCEpDQoNCkFja2VkLWJ5OiBKb2huIFN0dWx0eiA8anN0dWx0
ekBnb29nbGUuY29tPg0KDQp0aGFua3MNCi1qb2huDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
