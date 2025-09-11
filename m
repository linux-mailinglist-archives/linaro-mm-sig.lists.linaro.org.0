Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBE8B52B00
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Sep 2025 10:00:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1EE2E45F8B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Sep 2025 08:00:58 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by lists.linaro.org (Postfix) with ESMTPS id 31840443C0
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Sep 2025 08:00:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=iLoZ3O4n;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.218.50 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-afcb7ace3baso68926866b.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Sep 2025 01:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757577647; x=1758182447; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p1PODi6H2K7+3LlGxoQuwHZt3UE/qkC9ZdWrwkyFJNM=;
        b=iLoZ3O4nUhySe/QnVv0PVJDuKKaQ49+dDvBc0HO0PPFPnLCKuHI6Jedm5vpa4yWsWb
         5ts/r1ulIT94ol0mx4API1DqP9p7wirL5h4e7G79BbkheFNjgox1aGAP09aJNJbYRnD9
         VxQGT84T0sD9vk/7bprcCtV6yUDLkjgr0notlxhntBSE7N4bLNykoBH+IItev6wXXC9q
         69Hoxnb6S1V+uiOpJvyrtbzJhUs3npYx+k0Lm+Na/wCx2J3TUTX/FxD4gFHxdWiTwWrS
         p84OHxLn9julfsQVjNXYu/boQeSvio2Af3emBCxRsg/GlItzt7O01G9fqqm4JG7xY0v+
         /DSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757577647; x=1758182447;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p1PODi6H2K7+3LlGxoQuwHZt3UE/qkC9ZdWrwkyFJNM=;
        b=F3Wb3wPufcQzyNip7gc+YSxTDjgXKn8TIMtF8xa/v/OSlnrBkKrUbgExh4w1yFyd2R
         Nbc1LhW7f+I8vYCEnHZ7f6BvHGtG6gv2rPuggCJu0JmiZhHaC6JXICGQlbYJ3MpJI2ne
         uv2gcykSvwv5+ZQA5xuFlMHi4TcFoMzPJPKX5W2SOLxXZh2DxCuFUOcdQ4gFurUGv/Y8
         rgqXIb9nRnrhHDXy7foHI9DxjxQrTPiLJ8A65XgU7B0I+47YPtA2gzAzqO1a4+7qRuX1
         szuFmdOJp1tffmKo1kJCMZmy6UyVnlMwnrV2TjLm3zJpaCu5EC55tLNvob3mFCKR2JLU
         99rw==
X-Forwarded-Encrypted: i=1; AJvYcCUjcDOZS0HYC868lv2UTVZDMxUo30npsfcoF9uAqSYy7GNrJn8lBDSh0UBBkX3lKhpKGvH3xM2pqXxlh3sY@lists.linaro.org
X-Gm-Message-State: AOJu0Yx3/H8NoAb3tugRrN7J8ylIhWMutcIYubiRDyN0rcvQscwB/5da
	A9caNzgjEa5oZCErWZ/1h8KtW09urDjvThqW9ZiCkJEHmmIz4FiJS+q3s+JeZ29DGTeQEo6uk0J
	UEk1hz9t3lnwD3TX+0dwrzIHkXrgfAnqg39iQh7sdyAQR
X-Gm-Gg: ASbGncsOpqtOy4zbFufpUBmgal8D1+YIt1xgeOIdNqNOheQHdp2FNPWYm5XNp8hiSB4
	Ck78nOCbXPKb8i1UjzG8Utafz+cr80gL8U63KY/FJGWyynejqQByMLgpezUZXCsB+MKnLyay7m2
	7XFSjcU9LbCteVDkLj4iECpm0GoflQYhcdjeyQHUdAnol89uGGi7dswsIwD0JNAzy//e319zkU5
	dHX0QM1+Yw+HPtROihBDKCJSBPkuNHcmnV5DvFNykuI7OL0oQ==
X-Google-Smtp-Source: AGHT+IGzEzYwQLiPc3IcgYMCTY8qsO9y3WwakWS4JOu30bLWGh1BqDh6LLf50f7d7Tw863clhJFa4G2RQKg6ioIUUPY=
X-Received: by 2002:a17:907:d16:b0:b04:568b:8a42 with SMTP id
 a640c23a62f3a-b04b14bbbf0mr1838289166b.29.1757577646906; Thu, 11 Sep 2025
 01:00:46 -0700 (PDT)
MIME-Version: 1.0
References: <20250813060339.2977604-1-jens.wiklander@linaro.org>
 <20250813060339.2977604-3-jens.wiklander@linaro.org> <aJ1-YpgvGt4_6CFU@sumit-X1>
 <CABdmKX2FPg+hO55qWndMajuWP0kZH=OWEh9v-d8aO6HQWyxJtQ@mail.gmail.com>
 <CAO_48GEqkf_Jm8kSTPEDZkZy-YmT56Zs1Jx9zCvzETPsCzrkEg@mail.gmail.com> <CAHUa44HHSKwiBYPMSY5hj6wyWc9-uvtQVx+JLx4M5yjD5AwyTg@mail.gmail.com>
In-Reply-To: <CAHUa44HHSKwiBYPMSY5hj6wyWc9-uvtQVx+JLx4M5yjD5AwyTg@mail.gmail.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 11 Sep 2025 13:30:35 +0530
X-Gm-Features: Ac12FXxwSUSxE1PNcza1ZTKnBgiGX0FqXLDfvqSE4P5WPQr00OaAEtYCSrcigho
Message-ID: <CAO_48GE=FHaNzybUxjY=igyOO1oasKb9yu_yAjJEdjTQXicaJA@mail.gmail.com>
To: Jens Wiklander <jens.wiklander@linaro.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 31840443C0
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.50:from];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[google.com,kernel.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,collabora.com,arm.com,qti.qualcomm.com,ffwll.ch,fooishbar.org,linaro.org,oss.qualcomm.com];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.218.50:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: 7272EEUO2OAIWSHOVYNZWSK4TOD56ILQ
X-Message-ID-Hash: 7272EEUO2OAIWSHOVYNZWSK4TOD56ILQ
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "T.J. Mercier" <tjmercier@google.com>, Sumit Garg <sumit.garg@kernel.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, robin.murphy@arm.com, Sumit Garg <sumit.garg@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v11 2/9] dma-buf: dma-heap: export declared functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7272EEUO2OAIWSHOVYNZWSK4TOD56ILQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSmVucywNCg0KT24gVGh1LCAxMSBTZXB0IDIwMjUgYXQgMTM6MjAsIEplbnMgV2lrbGFuZGVy
IDxqZW5zLndpa2xhbmRlckBsaW5hcm8ub3JnPiB3cm90ZToNCj4NCj4gSGkgU3VtaXQsDQo+DQo+
IE9uIFRodSwgU2VwIDExLCAyMDI1IGF0IDk6MTXigK9BTSBTdW1pdCBTZW13YWwgPHN1bWl0LnNl
bXdhbEBsaW5hcm8ub3JnPiB3cm90ZToNCj4gPg0KPiA+IEhlbGxvIEplbnMsDQo+ID4NCj4gPiBP
biBGcmksIDE1IEF1ZyAyMDI1IGF0IDA1OjAwLCBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29n
bGUuY29tPiB3cm90ZToNCj4gPiA+DQo+ID4gPiBPbiBXZWQsIEF1ZyAxMywgMjAyNSBhdCAxMTox
M+KAr1BNIFN1bWl0IEdhcmcgPHN1bWl0LmdhcmdAa2VybmVsLm9yZz4gd3JvdGU6DQo+ID4gPiA+
DQo+ID4gPiA+IE9uIFdlZCwgQXVnIDEzLCAyMDI1IGF0IDA4OjAyOjUxQU0gKzAyMDAsIEplbnMg
V2lrbGFuZGVyIHdyb3RlOg0KPiA+ID4gPiA+IEV4cG9ydCB0aGUgZG1hLWJ1ZiBoZWFwIGZ1bmN0
aW9ucyB0byBhbGxvdyB0aGVtIHRvIGJlIHVzZWQgYnkgdGhlIE9QLVRFRQ0KPiA+ID4gPiA+IGRy
aXZlci4gVGhlIE9QLVRFRSBkcml2ZXIgd2FudHMgdG8gcmVnaXN0ZXIgYW5kIG1hbmFnZSBzcGVj
aWZpYyBzZWN1cmUNCj4gPiA+ID4gPiBETUEgaGVhcHMgd2l0aCBpdC4NCj4gPiBUaGFuayB5b3Ug
Zm9yIHRoZSBzZXJpZXMuDQo+ID4NCj4gPiBDb3VsZCB5b3UgcGxlYXNlIHVzZSBFWFBPUlRfU1lN
Qk9MX0dQTF9OUyBpbnN0ZWFkIG9mIEVYUE9SVF9TWU1CT0wgZm9yIHRoZXNlPw0KPg0KPiBTdXJl
LCB3aGF0IG5hbWVzcGFjZSBkbyB5b3Ugd2FudCBpbiB0aGUgYXJndW1lbnQgZm9yDQo+IEVYUE9S
VF9TWU1CT0xfR1BMX05TKCk/ICJETUFfQlVGIj8NCg0KSSB0aGluayAiRE1BX0JVRl9IRUFQIiBt
YXkgYmUgYmV0dGVyPw0KPg0KPiA+DQo+ID4gV2l0aCB0aGF0IGNoYW5nZSwgcGxlYXNlIGZlZWwg
ZnJlZSB0byB1c2UgbXkNCj4gPiBBY2tlZC1ieTogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxA
bGluYXJvLm9yZz4NCj4NCj4gVGhhbmtzLA0KPiBKZW5zDQo+DQo+ID4gPiA+ID4NCj4gPiA+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBKZW5zIFdpa2xhbmRlciA8amVucy53aWtsYW5kZXJAbGluYXJvLm9y
Zz4NCj4gPiA+ID4gPiBSZXZpZXdlZC1ieTogU3VtaXQgR2FyZyA8c3VtaXQuZ2FyZ0Bvc3MucXVh
bGNvbW0uY29tPg0KPiA+ID4gPiA+IC0tLQ0KPiA+ID4gPiA+ICBkcml2ZXJzL2RtYS1idWYvZG1h
LWhlYXAuYyB8IDMgKysrDQo+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KykNCj4gPiA+ID4gPg0KPiA+ID4gPg0KPiA+ID4gPiBDYW4gd2UgZ2V0IGFuIGFjayBmcm9tIERN
QWJ1ZiBtYWludGFpbmVycyBoZXJlPyBXaXRoIHRoYXQgd2Ugc2hvdWxkIGJlDQo+ID4gPiA+IGFi
bGUgdG8gcXVldWUgdGhpcyBwYXRjaC1zZXQgZm9yIGxpbnV4LW5leHQgdGFyZ2V0dGluZyB0aGUg
Ni4xOCBtZXJnZQ0KPiA+ID4gPiB3aW5kb3cuDQo+ID4gPiA+DQo+ID4gPiA+IC1TdW1pdA0KPiA+
ID4NCj4gPiA+IFJldmlld2VkLWJ5OiBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29t
Pg0KPiA+ID4NCj4gPiA+IFNvcnJ5IEkgaGF2ZW4ndCBiZWVuIGFibGUgdG8gcGFydGljaXBhdGUg
bXVjaCB1cHN0cmVhbSBsYXRlbHkuDQo+ID4gPiA+DQo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMNCj4g
PiA+ID4gPiBpbmRleCAzY2JlODdkNGE0NjQuLmNkZGRmMGUyNGRjZSAxMDA2NDQNCj4gPiA+ID4g
PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYw0KPiA+ID4gPiA+ICsrKyBiL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtaGVhcC5jDQo+ID4gPiA+ID4gQEAgLTIwMiw2ICsyMDIsNyBAQCB2b2lk
ICpkbWFfaGVhcF9nZXRfZHJ2ZGF0YShzdHJ1Y3QgZG1hX2hlYXAgKmhlYXApDQo+ID4gPiA+ID4g
IHsNCj4gPiA+ID4gPiAgICAgICByZXR1cm4gaGVhcC0+cHJpdjsNCj4gPiA+ID4gPiAgfQ0KPiA+
ID4gPiA+ICtFWFBPUlRfU1lNQk9MKGRtYV9oZWFwX2dldF9kcnZkYXRhKTsNCj4gPiA+ID4gPg0K
PiA+ID4gPiA+ICAvKioNCj4gPiA+ID4gPiAgICogZG1hX2hlYXBfZ2V0X25hbWUgLSBnZXQgaGVh
cCBuYW1lDQo+ID4gPiA+ID4gQEAgLTIxNCw2ICsyMTUsNyBAQCBjb25zdCBjaGFyICpkbWFfaGVh
cF9nZXRfbmFtZShzdHJ1Y3QgZG1hX2hlYXAgKmhlYXApDQo+ID4gPiA+ID4gIHsNCj4gPiA+ID4g
PiAgICAgICByZXR1cm4gaGVhcC0+bmFtZTsNCj4gPiA+ID4gPiAgfQ0KPiA+ID4gPiA+ICtFWFBP
UlRfU1lNQk9MKGRtYV9oZWFwX2dldF9uYW1lKTsNCj4gPiA+ID4gPg0KPiA+ID4gPiA+ICAvKioN
Cj4gPiA+ID4gPiAgICogZG1hX2hlYXBfYWRkIC0gYWRkcyBhIGhlYXAgdG8gZG1hYnVmIGhlYXBz
DQo+ID4gPiA+ID4gQEAgLTMwMyw2ICszMDUsNyBAQCBzdHJ1Y3QgZG1hX2hlYXAgKmRtYV9oZWFw
X2FkZChjb25zdCBzdHJ1Y3QgZG1hX2hlYXBfZXhwb3J0X2luZm8gKmV4cF9pbmZvKQ0KPiA+ID4g
PiA+ICAgICAgIGtmcmVlKGhlYXApOw0KPiA+ID4gPiA+ICAgICAgIHJldHVybiBlcnJfcmV0Ow0K
PiA+ID4gPiA+ICB9DQo+ID4gPiA+ID4gK0VYUE9SVF9TWU1CT0woZG1hX2hlYXBfYWRkKTsNCj4g
PiA+ID4gPg0KPiA+ID4gPiA+ICBzdGF0aWMgY2hhciAqZG1hX2hlYXBfZGV2bm9kZShjb25zdCBz
dHJ1Y3QgZGV2aWNlICpkZXYsIHVtb2RlX3QgKm1vZGUpDQo+ID4gPiA+ID4gIHsNCj4gPiA+ID4g
PiAtLQ0KPiA+ID4gPiA+IDIuNDMuMA0KPiA+ID4gPiA+DQo+ID4NCj4gPiBCZXN0LA0KPiA+IFN1
bWl0Lg0KDQoNCg0KLS0gDQpUaGFua3MgYW5kIHJlZ2FyZHMsDQoNClN1bWl0IFNlbXdhbCAoaGUg
LyBoaW0pDQpTZW5pb3IgVGVjaCBMZWFkIC0gQW5kcm9pZCwgUGxhdGZvcm1zIGFuZCBWaXJ0dWFs
aXNhdGlvbg0KTGluYXJvLm9yZyDilIIgQXJtIFNvbHV0aW9ucyBhdCBMaWdodCBTcGVlZA0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
