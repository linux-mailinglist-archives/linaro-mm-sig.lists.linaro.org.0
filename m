Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC98C952FC
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 30 Nov 2025 18:40:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7161E3F858
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 30 Nov 2025 17:40:36 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id A4C263F702
	for <linaro-mm-sig@lists.linaro.org>; Sun, 30 Nov 2025 17:40:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="BT2zD1q/";
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.48 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4779e2ac121so195325e9.1
        for <linaro-mm-sig@lists.linaro.org>; Sun, 30 Nov 2025 09:40:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764524417; x=1765129217; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L4Na1WnWt98FnIwMW2cXnPG9QEtYrpTgxkwDunJeAk8=;
        b=BT2zD1q/a8zQMgsAWvDHWaNZJNSftCAHinHDaQa9+m/1gOODYYAnJitsongE7hHlRE
         a/hziR1SlS+86oG6PMIzCyH1Ka8CEGCUmAcgaF1gA4YEq/w27z+vXNhpHN5vKYO9z2J7
         wKHcqI2r0SqhBCZf2iHE4LovwUW0nlw9I4micYKCSrc6/QsDkiVAbFp0YH2xM+dqTp1Z
         GRx+jv0L2T0e+ZMmQXVOnunSpZYNvnwjHPZvnCjbUfb0pPGxDhzKhiBpmdResoKtj7Vc
         9h6ZqEcnBtfV7ZZXVFc99P0alOE3Ut53b7SG0fXeu0R7pZdfqi0rQmThwPny0MehUfRr
         X9Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764524417; x=1765129217;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=L4Na1WnWt98FnIwMW2cXnPG9QEtYrpTgxkwDunJeAk8=;
        b=o00vgjePmjfBy5Fj8y+22PKN/u7oJoHUfwA5Qwd+LDqfszEqe7LZR6PlrkvKBMhwVm
         pKCcV883F1eMTTG2rsSKQNvnuDduTsNpbfBPD0fpK0LxZnZbpSsR32V0MaiCpuTINH12
         vwUs3YAazRA8c43TNDl/41P/K5DdD+2ImHaMCA4arbEn79cY3FPeWLNA9F8t08DlxBd0
         np3xWLCE3kpse6XC7nG8qxt0m8+m8qgt8WM3LT3f5g7Svg2H9hUw5ZVpPdg6vhU9X4HB
         rjZUe9bChfszbd0tLpa19xcJT5rC5XRanqch4+cZHSPLUfKWodjCkHw/CJRIiZhv43qF
         DLpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWjqoEEjzmlGkDhI501pWu1oaivMsCXLRpuxK5/wXv4djH+I/iJTwNJAZ4YT7jRdMyJhCLyWUICbRIbw9lv@lists.linaro.org
X-Gm-Message-State: AOJu0Yy9DSA9WmIKm+QHNYsEv612kFkdZuNfx17urL8gLIFbH2bUO0co
	bD1klPvt1fPyDcgtkOztzQTOch424xIe9ANe7Lb34NP/suDhmnAMiiFJVqWsgux2Itwv2vLSiHN
	+u7FJl7wbFMcO7o+hXC6+jUKVyur/NEfYpM/Oqv0C
X-Gm-Gg: ASbGncvu0ACmorifuen8SqJR8xe7qK9rC2P7aRyRcPF7YhSz8LnQjnwHhd7Ji5jUbKO
	2cKAzBN36z7WpZ1cPa7RwMz1Lx3YB7U3W5SzR3IxgCh48BfzrlEeLMtQj91e6NCsRYXTJTwaAje
	SqpAHeWhIm8kFsqzS1MKodRHtFj3bvfs8coMcJEOWhncR0RNK6tfBVoh5fQtcaX2XCx14wVfD0v
	nsrdZcnBqY8/CWeFpSvij/HnyFJJFbHtGClu35z5g6LZncJrzXt7uPBS4RrBUPMLNQK2KzgIiQa
	TU1/AbuJMzhCSivJPI+ftt+ibHlTopuK7Yl4f77Cpd16qbIan1szHUUqMvpiXQ==
X-Google-Smtp-Source: AGHT+IHlTVz7wW8BG+EB/zJr/z7m4Wjnt3IV1uAh9XtpVidYWPvE2DdOvZABmgAV2wINgEeD93te3ZXLwt2sI23wYH8=
X-Received: by 2002:a05:600d:104:b0:477:86fd:fb1b with SMTP id
 5b1f17b1804b1-47910a0f7cdmr1051315e9.11.1764524417540; Sun, 30 Nov 2025
 09:40:17 -0800 (PST)
MIME-Version: 1.0
References: <20251130-dma-buf-heap-clear-page-v1-1-a8dcea2a88ee@linaro.org>
In-Reply-To: <20251130-dma-buf-heap-clear-page-v1-1-a8dcea2a88ee@linaro.org>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Sun, 30 Nov 2025 09:40:05 -0800
X-Gm-Features: AWmQ_blosOa_VWvpKHaVXV4SgNmym-5ipECN2hZ2hHZsTsjHR9HcSCxA6X756f0
Message-ID: <CABdmKX3-jP7s5CCGeHc8Gz-mHBEwob983KXMcRmrTfpZz6d=Rg@mail.gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.48:from];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A4C263F702
X-Spamd-Bar: ----
Message-ID-Hash: 4OQSYBRQ2NWQPXI7QMCIWKV4KP42GJTM
X-Message-ID-Hash: 4OQSYBRQ2NWQPXI7QMCIWKV4KP42GJTM
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: Clear CMA pages with clear_page()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4OQSYBRQ2NWQPXI7QMCIWKV4KP42GJTM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU3VuLCBOb3YgMzAsIDIwMjUgYXQgMjo1NOKAr0FNIExpbnVzIFdhbGxlaWogPGxpbnVzLndh
bGxlaWpAbGluYXJvLm9yZz4gd3JvdGU6DQo+DQo+IGNsZWFyX3BhZ2UoKSB0cmFuc2xhdGVzIGlu
dG8gbWVtc2V0KCpwLCAwLCBQQUdFX1NJWkUpIG9uIHNvbWUNCj4gYXJjaGl0ZWN0dXJlcywgYnV0
IG9uIHRoZSBtYWpvciBhcmNoaXRlY3R1cmVzIGl0IHdpbGwgY2FsbA0KPiBhbiBvcHRpbWl6ZWQg
YXNzZW1ibHkgc25pcHBldCBzbyB1c2UgdGhpcyBpbnN0ZWFkIG9mIG9wZW4NCj4gY29kaW5nIGEg
bWVtc2V0KCkuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxl
aWpAbGluYXJvLm9yZz4NCg0KUmV2aWV3ZWQtYnk6IFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdv
b2dsZS5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2RtYS1idWYvaGVhcHMvY21hX2hlYXAuYyB8
IDIgKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0K
Pg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmMgYi9kcml2
ZXJzL2RtYS1idWYvaGVhcHMvY21hX2hlYXAuYw0KPiBpbmRleCAwZGYwMDcxMTE5NzUuLjllYWZm
ODAwNTBmMiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmMN
Cj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmMNCj4gQEAgLTMxNSw3ICsz
MTUsNyBAQCBzdGF0aWMgc3RydWN0IGRtYV9idWYgKmNtYV9oZWFwX2FsbG9jYXRlKHN0cnVjdCBk
bWFfaGVhcCAqaGVhcCwNCj4gICAgICAgICAgICAgICAgIHdoaWxlIChucl9jbGVhcl9wYWdlcyA+
IDApIHsNCj4gICAgICAgICAgICAgICAgICAgICAgICAgdm9pZCAqdmFkZHIgPSBrbWFwX2xvY2Fs
X3BhZ2UocGFnZSk7DQo+DQo+IC0gICAgICAgICAgICAgICAgICAgICAgIG1lbXNldCh2YWRkciwg
MCwgUEFHRV9TSVpFKTsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgY2xlYXJfcGFnZSh2YWRk
cik7DQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGt1bm1hcF9sb2NhbCh2YWRkcik7DQo+ICAg
ICAgICAgICAgICAgICAgICAgICAgIC8qDQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAqIEF2
b2lkIHdhc3RpbmcgdGltZSB6ZXJvaW5nIG1lbW9yeSBpZiB0aGUgcHJvY2Vzcw0KPg0KPiAtLS0N
Cj4gYmFzZS1jb21taXQ6IDNhODY2MDg3ODgzOWZhYWRiNGYxYTZkZDcyYzMxNzljMWRmNTY3ODcN
Cj4gY2hhbmdlLWlkOiAyMDI1MTEyOS1kbWEtYnVmLWhlYXAtY2xlYXItcGFnZS0yNDhiYjIzNmU0
YzQNCj4NCj4gQmVzdCByZWdhcmRzLA0KPiAtLQ0KPiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxs
ZWlqQGxpbmFyby5vcmc+DQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
