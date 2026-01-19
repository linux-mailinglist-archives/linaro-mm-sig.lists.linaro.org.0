Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA21D3A9F8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 14:10:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B26DD3F7FD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 13:10:30 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by lists.linaro.org (Postfix) with ESMTPS id 7FFA13F6B6
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 13:10:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=jE3t+xKf;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.218.50 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b87124c6295so589587166b.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 05:10:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768828223; x=1769433023; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K1MPZnZ8koQKv01vcxXzQIb9F3ndZB6UBQVxaX9WgFU=;
        b=jE3t+xKf2e10QkLI5qUEQXFL6DMsCKyMbPTwV7mivP8HBp2Xj/CR+K4iT8So+lzZPy
         2A28LIR2eRUgYdaQUbYbO4cyCgnKe1QBnC8+1kcflohwXUpBFWTNR8g7RHgX7IJrzULf
         uUZV+Ahht/oAYK/VjwTNAR+fnrVy3VBBK1eZ6trw6Dgmyw1FFGgufnyaknmcsceqPnns
         M/1PYFVSKkO7Lz00h2y2lOF93IJTIDSh0TdSvXzrdTt3ewNCQ/8rSOM7QHgwDLz02cNd
         fy/0/+qLLJZru8H8X/J+egHMg/iRM+KSWUa/u05xR08bQ0iwj0/hHcuGjRMaEUFygd+g
         XUXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768828223; x=1769433023;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=K1MPZnZ8koQKv01vcxXzQIb9F3ndZB6UBQVxaX9WgFU=;
        b=b0vKl5QqRk/UVq8yQoyTHNa+lgmviO7P1mJuRxMFdgopyB515yFitdROy5pcZF4vsM
         UD4rRfnvlbfxSBt5kwyFQFtCIf64y4imKIj1gEZLgOInW9zxQSOs1gSvWsrEFVaYSB4K
         dH0gaH2dTtXnsfbSrjvOwRH/6Pgc9tWah9ZCpo1izzWwO+fIE28y+CSUrPeoARTQspB8
         7d0s5AgpX2fswjAGtZhoDXyeXOYUZc/OLOpSLrGKDQl48itjmjeRIXzoChJpj/urxQAc
         EyKHnA6Yz3uBY5mq6Puo2rlu5Gl5OYOM9m1eXY7D/1hJxtrkbdReSvaaf71Cb6h5oPc8
         usiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWu1QyQ/aykFsK62KoUhglUWqJ06h46c8vXOU8erut3yBSM1sfI1zn1WgCTlb9sdmCAzeGS12lcgRDUbV/B@lists.linaro.org
X-Gm-Message-State: AOJu0YwQD5wkULN6CJtzkdCT3a409IQRRShkzbVmI4uujmsvHk22IPZ3
	4L2ZRk9wOfjcC6HPW/v3ANX5beMj5+98q+5/Rl8cVSiweoMS4aaphknffywWBZR4IhcoKHisWeH
	rMkz8WtVQ0HFZIHFB+jQuIoSGND5dv6MzHkeJ1hc4P5pf
X-Gm-Gg: AY/fxX6GEfP9yHBRLFZUe1/vrwNBPLv9OQKKZSwAbEXYPQdQx1FBSbHbF20QchUKPVS
	mgwfgmylYGRf/aCkuzTVxv1+X1Br7tpIpYV6103OcoD4J293L7dlF3TEPPVyBuavm/Zx1osaC6s
	f4R/yZpjZNvnzUPk0CDnQCUMEcRFGfgs8z0izq9blFpKzbqvSGcHCF6as09/QoNCzve3HDqO91H
	F32rtCf1M/ScCGAFcs+ORuzro3vveUOaQ9TxkeBAtq4yIJiUjbNEHhxrKq4hgO1+XYnK7shZui9
	bGHL8OkAiMrW3rJgAActNrRnwd8=
X-Received: by 2002:a17:907:9713:b0:b76:f090:777b with SMTP id
 a640c23a62f3a-b8792f683f7mr935886366b.22.1768828223465; Mon, 19 Jan 2026
 05:10:23 -0800 (PST)
MIME-Version: 1.0
References: <20260116-dmabuf-heap-system-memcg-v3-0-ecc6b62cc446@redhat.com>
 <20260116-dmabuf-heap-system-memcg-v3-1-ecc6b62cc446@redhat.com>
 <CABdmKX1ZCkF2N1Esi6Uo=jK=soXZe_eWhSSxHtMTcRWs-ZUYog@mail.gmail.com> <c3d66415-0e2e-4945-917f-4c47f16bf743@amd.com>
In-Reply-To: <c3d66415-0e2e-4945-917f-4c47f16bf743@amd.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Mon, 19 Jan 2026 18:40:12 +0530
X-Gm-Features: AZwV_QiZpslj_Ee2HW4MjCooEBtBdxf_RatAeMZm3MxIfz-ec0_Zxj32USNQwfc
Message-ID: <CAO_48GE5F=_8s8vJfOy0x-FQj++=BZ_rf1yiNa3hyFj+aUzLLA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Queue-Id: 7FFA13F6B6
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.50:from];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	DWL_DNSWL_BLOCKED(0.00)[linaro.org:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 36IMCUUYCOB3Z3425L27UCLOGS7364RL
X-Message-ID-Hash: 36IMCUUYCOB3Z3425L27UCLOGS7364RL
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "T.J. Mercier" <tjmercier@google.com>, Eric Chanudet <echanude@redhat.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Maxime Ripard <mripard@redhat.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/2] dma-buf: heaps: add parameter to account allocations using cgroup
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/36IMCUUYCOB3Z3425L27UCLOGS7364RL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpPbiBNb24sIDE5IEphbiAyMDI2IGF0IDE1OjE5LCBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBPbiAxLzE2LzI2
IDIzOjM2LCBULkouIE1lcmNpZXIgd3JvdGU6DQo+ID4gT24gRnJpLCBKYW4gMTYsIDIwMjYgYXQg
MTI6MDbigK9QTSBFcmljIENoYW51ZGV0IDxlY2hhbnVkZUByZWRoYXQuY29tPiB3cm90ZToNCj4g
Pj4NCj4gPj4gQWRkIGEgcGFyYW1ldGVyIHRvIGVuYWJsZSBkbWEtYnVmIGhlYXBzIGFsbG9jYXRp
b24gYWNjb3VudGluZyB1c2luZw0KPiA+PiBjZ3JvdXAgZm9yIGhlYXBzIHRoYXQgaW1wbGVtZW50
IGl0LiBJdCBpcyBkaXNhYmxlZCBieSBkZWZhdWx0IGFzIGRvaW5nDQo+ID4+IHNvIGluY3VycyBj
YXZlYXRzIGJhc2VkIG9uIGhvdyBtZW1jZyBjdXJyZW50bHkgYWNjb3VudHMgZm9yIHNoYXJlZA0K
PiA+PiBidWZmZXJzLg0KPiA+Pg0KPiA+PiBTaWduZWQtb2ZmLWJ5OiBFcmljIENoYW51ZGV0IDxl
Y2hhbnVkZUByZWRoYXQuY29tPg0KPiA+DQo+ID4gUmV2aWV3ZWQtYnk6IFQuSi4gTWVyY2llciA8
dGptZXJjaWVyQGdvb2dsZS5jb20+DQo+DQo+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpMR1RNIGFzIHdlbGwuDQo+DQo+IFNob3VsZCBJ
IHB1c2ggdGhhdCBpbnRvIGRybS1taXNjLW5leHQgb3IgZG9lcyBhbnlib2R5IGVsc2UgaGFzIGNv
bW1pdCBhY2Nlc3M/DQo+DQpJIHdpbGwgcHVzaCBpdCB0byBkcm0tbWlzYy1uZXh0IHRvbmlnaHQu
IFRoYW5rcyBmb3IgeW91ciByZXZpZXchDQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCg0KQmVz
dCwNClN1bWl0Lg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
