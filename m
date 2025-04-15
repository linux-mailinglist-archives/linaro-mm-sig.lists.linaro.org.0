Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1606EA8A9AE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 22:57:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E569D4480A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 20:57:31 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id AB28144131
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Apr 2025 20:57:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=f5Gpkbwu;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.51 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43ef83a6bfaso5025e9.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Apr 2025 13:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744750636; x=1745355436; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uztEYCXIvwAqBo9EVY+2Bc2ZaaRmX1aT5eydd4qFLW0=;
        b=f5GpkbwuNmhFabxAwgjD/LytGvBAzdiCeUvoXLLdBst3vwwsmKOKpd8q4zUq2TFshN
         WtSSxFrNmfEx1bIc9b7mAs0yINZWfj38oXW3hIpvGrTc3ybe7qf2Zp+J2PbP+EbWjg5z
         +Wc5djztdi5K6tyjU8divehafroDN8YoMWaQ0/bTh+3jDx4Dy2RTx+kfHCSK+bjdXIhl
         xQ7wXLPDAltAan4I9HtArkg7t+1Hc00uKo4CEF41jO5naBpA2jk55GDx0yxj1WsilhYo
         CWvqKASyflwSRmSOcNNGsDLpb1iaLlR1stzQ8Re/Ay4v8dj1enWIH3V3zWOPjdaFAlyU
         tv1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744750636; x=1745355436;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uztEYCXIvwAqBo9EVY+2Bc2ZaaRmX1aT5eydd4qFLW0=;
        b=bfMDw4CsaRwQfLCsAhf4LXUJyVTDO1fO3yx9fTS3UsWfHSFkk1/me6IAIghW7ZXOWM
         C+veQLrudCf6yLDLFGQznjx4NoxMM87Gnuk1XBp6N4Ol84h+s/bIPMULApykdDbkyiIA
         Q0/sn/shNzYbLJ4WNpqFt1ZlFBNK8k9m671C9UelBbZhoCV4wyMDYFWSbp25D7D98sTr
         EZN4CSEdJ7+nflACj9onh2CpeCg/Ea1/RSWcOAAxWoEbEWlGaSZVp6WTV1MxYeKZsM2L
         xmr8jfN49DGgrAdx47TY8GhxiGTjbf6dUDohRonqolm7WHIPW7XgBr/uAlt8U/takPfj
         JZNg==
X-Forwarded-Encrypted: i=1; AJvYcCUqkWpFYzEPyq0FJo01ziOlvvxAR7S8p57rs2LHFNC8N0LK2CeIczGOfIvzRaKZ0JaqGJZlZqc4GaLhPtil@lists.linaro.org
X-Gm-Message-State: AOJu0Yx48A7rDzeFk/RFBRMlTo0SVUVaDqASo4Ng0ingUiQLhAV2OeOc
	+nZ/ZYP96wA7UYGeUlWMzVX4oXfg/qriMrTPCTDWvnffmmc4eIE7CMyawnOwRL/+DSpTQEojdro
	RCTciYO4DU9yzxIkju6QrTOOGVlhzNc78Gm5J
X-Gm-Gg: ASbGncvtzmN8k4+N0Wv57dwdK5GB9dS7n50GdsvN0SU8aj8Ua9xXVAbzkhRRzuEREbc
	7ocwDzmSUH51piiHygcArHLXSnvIuKX04zLU7Jj6NQPwuwGxKaH3nevXo0Hezp3MaJDB+Grfqf9
	M+q7qVMvIek3vnWekOkpI0FcnTk6ZKirW6LADd5tiTbEoU4ld4B6Rv
X-Google-Smtp-Source: AGHT+IGXD1VxTGyGvWZV4CehXI+QLZxEMIErZViq4RxE7yiw+R8JJCPy5nW28NNv/NwEDI4yCJEpKavgYMSn7I/9ZYo=
X-Received: by 2002:a05:600c:12c8:b0:439:8f59:2c56 with SMTP id
 5b1f17b1804b1-4405a159a48mr207845e9.2.1744750635333; Tue, 15 Apr 2025
 13:57:15 -0700 (PDT)
MIME-Version: 1.0
References: <20250415171954.3970818-1-jyescas@google.com>
In-Reply-To: <20250415171954.3970818-1-jyescas@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 15 Apr 2025 13:57:03 -0700
X-Gm-Features: ATxdqUEYkJHID5PFTCgbNHb3ti1GO56rHU_cmcbEsJdS2z-qA1eNXNoty6ETrDs
Message-ID: <CABdmKX3Ht=bCcPFxK5mGX2qD4riXQ7Ucw6H_-+1PupXy-1ABGQ@mail.gmail.com>
To: Juan Yescas <jyescas@google.com>
X-Rspamd-Queue-Id: AB28144131
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.128.51:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.51:from];
	URIBL_BLOCKED(0.00)[mail.gmail.com:mid,mail-wm1-f51.google.com:helo,mail-wm1-f51.google.com:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[209.85.128.51:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: JZJPMUH37TYIL7WJ5QLTG5ETZBW2E5OT
X-Message-ID-Hash: JZJPMUH37TYIL7WJ5QLTG5ETZBW2E5OT
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, baohua@kernel.org, dmitry.osipenko@collabora.com, jaewon31.kim@samsung.com, Guangming.Cao@mediatek.com, surenb@google.com, kaleshsingh@google.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: Set allocation orders for larger page sizes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JZJPMUH37TYIL7WJ5QLTG5ETZBW2E5OT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBcHIgMTUsIDIwMjUgYXQgMTA6MjDigK9BTSBKdWFuIFllc2NhcyA8anllc2Nhc0Bn
b29nbGUuY29tPiB3cm90ZToNCj4NCj4gVGhpcyBjaGFuZ2Ugc2V0cyB0aGUgYWxsb2NhdGlvbiBv
cmRlcnMgZm9yIHRoZSBkaWZmZXJlbnQgcGFnZSBzaXplcw0KPiAoNGssIDE2aywgNjRrKSBiYXNl
ZCBvbiBQQUdFX1NISUZULiBCZWZvcmUgdGhpcyBjaGFuZ2UsIHRoZSBvcmRlcnMNCj4gZm9yIGxh
cmdlIHBhZ2Ugc2l6ZXMgd2VyZSBjYWxjdWxhdGVkIGluY29ycmVjdGx5LCB0aGlzIGNhdXNlZCBz
eXN0ZW0NCj4gaGVhcCB0byBhbGxvY2F0ZSBmcm9tIDIlIHRvIDQlIG1vcmUgbWVtb3J5IG9uIDE2
S2lCIHBhZ2Ugc2l6ZSBrZXJuZWxzLg0KPg0KPiBUaGlzIGNoYW5nZSB3YXMgdGVzdGVkIG9uIDRr
LzE2ayBwYWdlIHNpemUga2VybmVscy4NCj4NCj4gU2lnbmVkLW9mZi1ieTogSnVhbiBZZXNjYXMg
PGp5ZXNjYXNAZ29vZ2xlLmNvbT4NCg0KSSB0aGluayAiZG1hLWJ1Zjogc3lzdGVtX2hlYXA6IiB3
b3VsZCBiZSBiZXR0ZXIgZm9yIHRoZSBzdWJqZWN0IHNpbmNlDQp0aGlzIGlzIHNwZWNpZmljIHRv
IHRoZSBzeXN0ZW0gaGVhcC4NCg0KV291bGQgeW91IG1pbmQgY2xlYW5pbmcgdXAgdGhlIGV4dHJh
IHNwYWNlIG9uIGxpbmUgMzIxIHRvbz8NCkBAIC0zMTgsNyArMzE4LDcgQEAgc3RhdGljIHN0cnVj
dCBwYWdlDQoqYWxsb2NfbGFyZ2VzdF9hdmFpbGFibGUodW5zaWduZWQgbG9uZyBzaXplLA0KICAg
ICAgICBpbnQgaTsNCg0KICAgICAgICBmb3IgKGkgPSAwOyBpIDwgTlVNX09SREVSUzsgaSsrKSB7
DQotICAgICAgICAgICAgICAgaWYgKHNpemUgPCAgKFBBR0VfU0laRSA8PCBvcmRlcnNbaV0pKQ0K
KyAgICAgICAgICAgICAgIGlmIChzaXplIDwgKFBBR0VfU0laRSA8PCBvcmRlcnNbaV0pKQ0KDQpX
aXRoIHRoYXQsDQpSZXZpZXdlZC1ieTogVC5KLiBNZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNv
bT4NCg0KRml4ZXM6IGQ5NjNhYjBmMTVmYiAoImRtYS1idWY6IHN5c3RlbV9oZWFwOiBBbGxvY2F0
ZSBoaWdoZXIgb3JkZXINCnBhZ2VzIGlmIGF2YWlsYWJsZSIpIGlzIGFsc28gcHJvYmFibHkgYSBn
b29kIGlkZWEuDQoNCj4gLS0tDQo+ICBkcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAu
YyB8IDkgKysrKysrKystDQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVt
X2hlYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jDQo+IGluZGV4IDI2
ZDVkYzg5ZWExNi4uNTQ2NzRjMDJkY2I0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYv
aGVhcHMvc3lzdGVtX2hlYXAuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVt
X2hlYXAuYw0KPiBAQCAtNTAsOCArNTAsMTUgQEAgc3RhdGljIGdmcF90IG9yZGVyX2ZsYWdzW10g
PSB7SElHSF9PUkRFUl9HRlAsIEhJR0hfT1JERVJfR0ZQLCBMT1dfT1JERVJfR0ZQfTsNCj4gICAq
IHRvIG1hdGNoIHdpdGggdGhlIHNpemVzIG9mdGVuIGZvdW5kIGluIElPTU1Vcy4gVXNpbmcgb3Jk
ZXIgNCBwYWdlcyBpbnN0ZWFkDQo+ICAgKiBvZiBvcmRlciAwIHBhZ2VzIGNhbiBzaWduaWZpY2Fu
dGx5IGltcHJvdmUgdGhlIHBlcmZvcm1hbmNlIG9mIG1hbnkgSU9NTVVzDQo+ICAgKiBieSByZWR1
Y2luZyBUTEIgcHJlc3N1cmUgYW5kIHRpbWUgc3BlbnQgdXBkYXRpbmcgcGFnZSB0YWJsZXMuDQo+
ICsgKg0KPiArICogTm90ZTogV2hlbiB0aGUgb3JkZXIgaXMgMCwgdGhlIG1pbmltdW0gYWxsb2Nh
dGlvbiBpcyBQQUdFX1NJWkUuIFRoZSBwb3NzaWJsZQ0KPiArICogcGFnZSBzaXplcyBmb3IgQVJN
IGRldmljZXMgY291bGQgYmUgNEssIDE2SyBhbmQgNjRLLg0KPiAgICovDQo+IC1zdGF0aWMgY29u
c3QgdW5zaWduZWQgaW50IG9yZGVyc1tdID0gezgsIDQsIDB9Ow0KPiArI2RlZmluZSBPUkRFUl8x
TSAoMjAgLSBQQUdFX1NISUZUKQ0KPiArI2RlZmluZSBPUkRFUl82NEsgKDE2IC0gUEFHRV9TSElG
VCkNCj4gKyNkZWZpbmUgT1JERVJfRk9SX1BBR0VfU0laRSAoMCkNCj4gK3N0YXRpYyBjb25zdCB1
bnNpZ25lZCBpbnQgb3JkZXJzW10gPSB7T1JERVJfMU0sIE9SREVSXzY0SywgT1JERVJfRk9SX1BB
R0VfU0laRX07DQo+ICsNCj4gICNkZWZpbmUgTlVNX09SREVSUyBBUlJBWV9TSVpFKG9yZGVycykN
Cj4NCj4gIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKmR1cF9zZ190YWJsZShzdHJ1Y3Qgc2dfdGFi
bGUgKnRhYmxlKQ0KPiAtLQ0KPiAyLjQ5LjAuNjA0LmdmZjFmOWNhOTQyLWdvb2cNCj4NCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
