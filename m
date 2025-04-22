Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E6EBDA97A90
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Apr 2025 00:37:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D42F345933
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Apr 2025 22:37:13 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	by lists.linaro.org (Postfix) with ESMTPS id 30EB3448A4
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Apr 2025 22:37:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=Y95jpfHx;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.208.170 as permitted sender) smtp.mailfrom=jstultz@google.com
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-30c0517142bso47251411fa.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Apr 2025 15:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1745361419; x=1745966219; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CYnsLlC0NFMYuF8GmCOmo6AutxjaiqbjJEuB9kEX76M=;
        b=Y95jpfHxNTAGS34hPIY4HWvF+mVtKfAghqKJEcI8Xu40XDXwntEk7q3k2nYfswf9MS
         h8WQ0QfZA6y0g1ZuIW3z4YcgQjnFUILL3cMM1YbwgYrA3XFixR5lEf68QTCEo0q04xcx
         Fu6svEHeBdkB5tQMyLTMB6k5WopSrljUzxJZAWoDf3VHiyVvcoTHI9gfbLAGonOrX28X
         mOpBKHJmJgZyPN6H5rLFBEPROYGSp6/3yZ92Ghud0P0yy639Rur0y9QR09fVQ3E/+KbK
         MMlP+0MQqfooTwIpXzvuqGrTru0tSTPAzxfBRkoS4hFXzEVJ1mbnWpLPZH8ZLxgKd5AD
         mctw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745361419; x=1745966219;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CYnsLlC0NFMYuF8GmCOmo6AutxjaiqbjJEuB9kEX76M=;
        b=kR+CM1aVWkcc4Idp6vlLoxMm3SMk/WUNDZKbYZ97c20STb8AJRfEWDk67lh4C8/8A+
         q8XwNRpFLMSQl6939lphnToron0MGqa3DfB38CCVsYIkmUriRxIdn7lp1MiLiA5J8X3H
         eojQlwCjFdDdMh4XRAN85ZMB+Ty+jNc6ixnKuAocVOs+7QqxW6vItMWiYYH7GiOfrOVg
         KsPEHNOYCfzQAYX88swquCy8zDmp5bDozqJysRsucnVgdpwIbt2LZ0KUrVLhnM8t8dp5
         N0UgEPzURb6WOLzlGYK4ToFJDctsBEebaCQcbJjAW2teQt01hz07rSql7bq1MCKT/jBE
         np3Q==
X-Forwarded-Encrypted: i=1; AJvYcCWp2ff0cRocipjG/xLah0FklCHzM0QdPoOXCT6m6CMD4Zvn3l4nIY5T9zQQTqQnhdkFY0wrqceWzhPtjl2/@lists.linaro.org
X-Gm-Message-State: AOJu0YzAjTWVOVwUTaRAGBQnOfEQIwyzAhLe7oP2kvXDEWCNiYX3bXpg
	v8S2JvceREBp6syWgWcM4IpIDlBxrAsHVmsNuVCZS5RRra/C6I8bx0hq+srfH1X1IE9ia+PCP1J
	ks59KTOjcgNOLVvYsOqyAG05PxR6VRQqBHMw=
X-Gm-Gg: ASbGncuVx74dV1hzrKp93Ig2pcD7C3dXo9pdyjNyyDOPN+FRXBYYVjqk5mEIhAY+C/G
	YpvwaW1VT3XG1ApdEQ4Xg7/UyfpVkRhP9g6KJy2p8vMWRutYZ8hFZjN1cqOFwONBuGhcfwKia8k
	hJVjFUu79L+TvX2IYl//3xaWovifSC3FnzXVAA3Jx8wmQFjKJhYA==
X-Google-Smtp-Source: AGHT+IE3IEPCCgB0bt/uCVYonB/YsmX9MsBR2/QB63vrorCHbNSrdpM99e+NYH8FchPivlBNMzAKqKtWDNa/LnKLgF4=
X-Received: by 2002:a05:651c:2226:b0:30d:c534:692 with SMTP id
 38308e7fff4ca-31090554d22mr52580801fa.29.1745361418655; Tue, 22 Apr 2025
 15:36:58 -0700 (PDT)
MIME-Version: 1.0
References: <20250422191939.555963-1-jkangas@redhat.com> <20250422191939.555963-3-jkangas@redhat.com>
In-Reply-To: <20250422191939.555963-3-jkangas@redhat.com>
From: John Stultz <jstultz@google.com>
Date: Tue, 22 Apr 2025 15:36:45 -0700
X-Gm-Features: ATxdqUHUf8NvYK-aLnI2B4TJfd1jaEQSDfLR3dMFnq6KQaAqiJ29RDdXxafUgSE
Message-ID: <CANDhNCpbX1718t2gH3LULL=RDxfxh+uCJNF4jJH0sbpLMK=oWA@mail.gmail.com>
To: Jared Kangas <jkangas@redhat.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 30EB3448A4
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.97 / 15.00];
	BAYES_HAM(-2.97)[99.88%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.208.170:from];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.170:from];
	DWL_DNSWL_BLOCKED(0.00)[google.com:dkim];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 4CVWAWGXFCDD2EMDVU3IMHKFDEQSKVME
X-Message-ID-Hash: 4CVWAWGXFCDD2EMDVU3IMHKFDEQSKVME
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, tjmercier@google.com, christian.koenig@amd.com, mripard@kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/2] dma-buf: heaps: Give default CMA heap a fixed name
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4CVWAWGXFCDD2EMDVU3IMHKFDEQSKVME/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBcHIgMjIsIDIwMjUgYXQgMTI6MTnigK9QTSBKYXJlZCBLYW5nYXMgPGprYW5nYXNA
cmVkaGF0LmNvbT4gd3JvdGU6DQo+DQo+IFRoZSBDTUEgaGVhcCdzIG5hbWUgaW4gZGV2dG1wZnMg
Y2FuIHZhcnkgZGVwZW5kaW5nIG9uIGhvdyB0aGUgaGVhcCBpcw0KPiBkZWZpbmVkLiBJdHMgbmFt
ZSBkZWZhdWx0cyB0byAicmVzZXJ2ZWQiLCBidXQgaWYgYSBDTUEgYXJlYSBpcyBkZWZpbmVkDQo+
IGluIHRoZSBkZXZpY2V0cmVlLCB0aGUgaGVhcCB0YWtlcyBvbiB0aGUgZGV2aWNldHJlZSBub2Rl
J3MgbmFtZSwgc3VjaCBhcw0KPiAiZGVmYXVsdC1wb29sIiBvciAibGludXgsY21hIi4gVG8gc2lt
cGxpZnkgbmFtaW5nLCBqdXN0IG5hbWUgaXQNCj4gImRlZmF1bHRfY21hIiwgYW5kIGtlZXAgYSBs
ZWdhY3kgbm9kZSBpbiBwbGFjZSBiYWNrZWQgYnkgdGhlIHNhbWUNCj4gdW5kZXJseWluZyBzdHJ1
Y3R1cmUgZm9yIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5Lg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBK
YXJlZCBLYW5nYXMgPGprYW5nYXNAcmVkaGF0LmNvbT4NCg0KT25jZSBhZ2FpbiwgdGhhbmtzIGZv
ciB3b3JraW5nIG91dCBob3cgdG8gaW1wcm92ZSB0aGUgc3RhbmRhcmQgbmFtaW5nDQp3aGlsZSBr
ZWVwaW5nIGNvbXBhdGliaWxpdHkuDQoNCkkgZG8gc3RpbGwgaG9wZSB3ZSBjYW4gZ2V0IHRvIHRo
ZSBwb2ludCB3aGVyZSBvdGhlciBjbWEgcmVnaW9ucyBjYW4gYmUNCnJlZ2lzdGVyZWQgYXMgaGVh
cHMgd2l0aCB1bmlxdWUvcHVycG9zZS1zcGVjaWZpYyBuYW1lcywgYnV0IEkgY2FuIHNlZQ0KaGF2
aW5nIGEgc3RhbmRhcmQgbmFtZSBmb3IgdGhlIGRlZmF1bHQgcmVnaW9uIGlzIGEgbmljZSBpbXBy
b3ZlbWVudC4NCg0KQWNrZWQtYnk6IEpvaG4gU3R1bHR6IDxqc3R1bHR6QGdvb2dsZS5jb20+DQoN
CnRoYW5rcw0KLWpvaG4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
