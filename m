Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F77B52A7C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Sep 2025 09:50:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5935745752
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Sep 2025 07:50:24 +0000 (UTC)
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	by lists.linaro.org (Postfix) with ESMTPS id 1139E44621
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Sep 2025 07:50:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=FBWEmFyK;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.161.42 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-6205e2b7a8fso201914eaf.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Sep 2025 00:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757577015; x=1758181815; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tZ6E6bW5eiC9q7CDA3LI31bAgUOE0PZhjrPZI2/QSuQ=;
        b=FBWEmFyKHpcmC3nvaeSEw/oJhfLEjlgeU7b01iSTXx14Z7sWo3uSdYdX1/+/RJ/gC2
         YWWfBY6jkzE9hgP5lu6G65YVee0nqh/AYr+CGaMIZ7C6lPLCUpDp8fqUa8MdANJvGeiq
         FxNY7YnhPho0YHwYzmHod6SYgbhdrOjRnfP1CICNlAfL4jnI77mTjk/SnMmahh/n5/22
         7y868RsOV+LQk/nlxaeXEO9FZzdtq+LkiC/FHGntclVPhqTZQAWPEptkaWwNJ5p2GxZw
         3grSWm5UJTIjyeiOpTt9jEOX6ZNr3Ilo9w7TyArZixU862bWT69hjnR6cNFxIYGKbzL5
         yTcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757577015; x=1758181815;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tZ6E6bW5eiC9q7CDA3LI31bAgUOE0PZhjrPZI2/QSuQ=;
        b=S0kEsrJR0L1B65CC371hMxUQfVoy1/UIRGhkT55yn9lp9CBChHVFyUJ+QGcZtEQdXm
         akGYlrkmjGkT+TmmvrgvTaRVqEZ4De5gIVpkYCzUFEaoDgBp1Fl53uNSG6d8Yt0BwHQw
         MFtUogEyqVLsLZSd6kEguoaWJAq27B40690rkNvAwq5LGoIOoUNz3CDOJvHLSXtUzKj6
         fURI4ZIYKLKwFTR6/TS9G9GpQlOvG805JeqsC5rYrPeCWCcTqjILJxjM5SDmyn7/4+nf
         gByxme0OrrHKq8e1SvTNKAHE/lLfwf7fz1iMoW9ECdFb3T9G8l4Da7XXLqTW6HwSal70
         6Beg==
X-Forwarded-Encrypted: i=1; AJvYcCVXVWiPzCL54xjdz2vs3dEVTZNc93uAP8WfztC39iXrYItVxBDge8bTLYA+C0RZrS44U0XITAJ2LgZFruNy@lists.linaro.org
X-Gm-Message-State: AOJu0YxhYHRehKHZNYsGJXjCGsqVHnuBqMFL4o7Kbao3rvdX353hvIQ3
	/Y5oeKwmuEpIlgUFENuk37nBrdPxFAZ2QhfZpay/qhbjRVh5SsyFMptJ5yWtwaHR7YJaX0hrZnn
	khGzVSEDNjqH1Bz1MpG6zm3Izuz34AGDquaOntIkiG4Ej
X-Gm-Gg: ASbGnctmw5JvlIdMhpGYXhEDsbOI0eZpCeqZejXoZlGzZwYj7T3ECIL427PcjyG0f9c
	2ws1ly9t6UACMIeOK/qiGrE2Zi87/sJltdd6wPd0yniol8medJ+CwvX8ZknhzMIMnft6OHyZ6JZ
	yte2mWhzj18M2/xKnKq1zewM5xAPdIc8qNZVmtDe1RObVdb+llXfZn7deGEF3Px/ktfriDAkKyO
	yhmvgTa
X-Google-Smtp-Source: AGHT+IHM+qomPa7mkwPaxbF4J0ZwMvmQZ4r3i08spiXwqRdColY0ofOiN+xC4zPpK9pKKDVK1an+zwdrKVe+3sc2KLA=
X-Received: by 2002:a05:6820:1518:b0:620:ea78:ceb4 with SMTP id
 006d021491bc7-6217897a730mr7686244eaf.0.1757577015334; Thu, 11 Sep 2025
 00:50:15 -0700 (PDT)
MIME-Version: 1.0
References: <20250813060339.2977604-1-jens.wiklander@linaro.org>
 <20250813060339.2977604-3-jens.wiklander@linaro.org> <aJ1-YpgvGt4_6CFU@sumit-X1>
 <CABdmKX2FPg+hO55qWndMajuWP0kZH=OWEh9v-d8aO6HQWyxJtQ@mail.gmail.com> <CAO_48GEqkf_Jm8kSTPEDZkZy-YmT56Zs1Jx9zCvzETPsCzrkEg@mail.gmail.com>
In-Reply-To: <CAO_48GEqkf_Jm8kSTPEDZkZy-YmT56Zs1Jx9zCvzETPsCzrkEg@mail.gmail.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Thu, 11 Sep 2025 09:50:04 +0200
X-Gm-Features: Ac12FXyvCWRnQD7Gsb8VWVWslCX8Upv9AarUZnTiiQT33HIlYHfy4GNTnaJlFIg
Message-ID: <CAHUa44HHSKwiBYPMSY5hj6wyWc9-uvtQVx+JLx4M5yjD5AwyTg@mail.gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1139E44621
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.161.42:from];
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
	DNSWL_BLOCKED(0.00)[209.85.161.42:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: LXZPQA6RKROOLTZJAK4MYBMSX4SL67SJ
X-Message-ID-Hash: LXZPQA6RKROOLTZJAK4MYBMSX4SL67SJ
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "T.J. Mercier" <tjmercier@google.com>, Sumit Garg <sumit.garg@kernel.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, robin.murphy@arm.com, Sumit Garg <sumit.garg@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v11 2/9] dma-buf: dma-heap: export declared functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LXZPQA6RKROOLTZJAK4MYBMSX4SL67SJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgU3VtaXQsDQoNCk9uIFRodSwgU2VwIDExLCAyMDI1IGF0IDk6MTXigK9BTSBTdW1pdCBTZW13
YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPiB3cm90ZToNCj4NCj4gSGVsbG8gSmVucywNCj4N
Cj4gT24gRnJpLCAxNSBBdWcgMjAyNSBhdCAwNTowMCwgVC5KLiBNZXJjaWVyIDx0am1lcmNpZXJA
Z29vZ2xlLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBPbiBXZWQsIEF1ZyAxMywgMjAyNSBhdCAxMTox
M+KAr1BNIFN1bWl0IEdhcmcgPHN1bWl0LmdhcmdAa2VybmVsLm9yZz4gd3JvdGU6DQo+ID4gPg0K
PiA+ID4gT24gV2VkLCBBdWcgMTMsIDIwMjUgYXQgMDg6MDI6NTFBTSArMDIwMCwgSmVucyBXaWts
YW5kZXIgd3JvdGU6DQo+ID4gPiA+IEV4cG9ydCB0aGUgZG1hLWJ1ZiBoZWFwIGZ1bmN0aW9ucyB0
byBhbGxvdyB0aGVtIHRvIGJlIHVzZWQgYnkgdGhlIE9QLVRFRQ0KPiA+ID4gPiBkcml2ZXIuIFRo
ZSBPUC1URUUgZHJpdmVyIHdhbnRzIHRvIHJlZ2lzdGVyIGFuZCBtYW5hZ2Ugc3BlY2lmaWMgc2Vj
dXJlDQo+ID4gPiA+IERNQSBoZWFwcyB3aXRoIGl0Lg0KPiBUaGFuayB5b3UgZm9yIHRoZSBzZXJp
ZXMuDQo+DQo+IENvdWxkIHlvdSBwbGVhc2UgdXNlIEVYUE9SVF9TWU1CT0xfR1BMX05TIGluc3Rl
YWQgb2YgRVhQT1JUX1NZTUJPTCBmb3IgdGhlc2U/DQoNClN1cmUsIHdoYXQgbmFtZXNwYWNlIGRv
IHlvdSB3YW50IGluIHRoZSBhcmd1bWVudCBmb3INCkVYUE9SVF9TWU1CT0xfR1BMX05TKCk/ICJE
TUFfQlVGIj8NCg0KPg0KPiBXaXRoIHRoYXQgY2hhbmdlLCBwbGVhc2UgZmVlbCBmcmVlIHRvIHVz
ZSBteQ0KPiBBY2tlZC1ieTogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4N
Cg0KVGhhbmtzLA0KSmVucw0KDQo+ID4gPiA+DQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEplbnMg
V2lrbGFuZGVyIDxqZW5zLndpa2xhbmRlckBsaW5hcm8ub3JnPg0KPiA+ID4gPiBSZXZpZXdlZC1i
eTogU3VtaXQgR2FyZyA8c3VtaXQuZ2FyZ0Bvc3MucXVhbGNvbW0uY29tPg0KPiA+ID4gPiAtLS0N
Cj4gPiA+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jIHwgMyArKysNCj4gPiA+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCj4gPiA+ID4NCj4gPiA+DQo+ID4gPiBDYW4g
d2UgZ2V0IGFuIGFjayBmcm9tIERNQWJ1ZiBtYWludGFpbmVycyBoZXJlPyBXaXRoIHRoYXQgd2Ug
c2hvdWxkIGJlDQo+ID4gPiBhYmxlIHRvIHF1ZXVlIHRoaXMgcGF0Y2gtc2V0IGZvciBsaW51eC1u
ZXh0IHRhcmdldHRpbmcgdGhlIDYuMTggbWVyZ2UNCj4gPiA+IHdpbmRvdy4NCj4gPiA+DQo+ID4g
PiAtU3VtaXQNCj4gPg0KPiA+IFJldmlld2VkLWJ5OiBULkouIE1lcmNpZXIgPHRqbWVyY2llckBn
b29nbGUuY29tPg0KPiA+DQo+ID4gU29ycnkgSSBoYXZlbid0IGJlZW4gYWJsZSB0byBwYXJ0aWNp
cGF0ZSBtdWNoIHVwc3RyZWFtIGxhdGVseS4NCj4gPiA+DQo+ID4gPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jDQo+
ID4gPiA+IGluZGV4IDNjYmU4N2Q0YTQ2NC4uY2RkZGYwZTI0ZGNlIDEwMDY0NA0KPiA+ID4gPiAt
LS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2Rt
YS1idWYvZG1hLWhlYXAuYw0KPiA+ID4gPiBAQCAtMjAyLDYgKzIwMiw3IEBAIHZvaWQgKmRtYV9o
ZWFwX2dldF9kcnZkYXRhKHN0cnVjdCBkbWFfaGVhcCAqaGVhcCkNCj4gPiA+ID4gIHsNCj4gPiA+
ID4gICAgICAgcmV0dXJuIGhlYXAtPnByaXY7DQo+ID4gPiA+ICB9DQo+ID4gPiA+ICtFWFBPUlRf
U1lNQk9MKGRtYV9oZWFwX2dldF9kcnZkYXRhKTsNCj4gPiA+ID4NCj4gPiA+ID4gIC8qKg0KPiA+
ID4gPiAgICogZG1hX2hlYXBfZ2V0X25hbWUgLSBnZXQgaGVhcCBuYW1lDQo+ID4gPiA+IEBAIC0y
MTQsNiArMjE1LDcgQEAgY29uc3QgY2hhciAqZG1hX2hlYXBfZ2V0X25hbWUoc3RydWN0IGRtYV9o
ZWFwICpoZWFwKQ0KPiA+ID4gPiAgew0KPiA+ID4gPiAgICAgICByZXR1cm4gaGVhcC0+bmFtZTsN
Cj4gPiA+ID4gIH0NCj4gPiA+ID4gK0VYUE9SVF9TWU1CT0woZG1hX2hlYXBfZ2V0X25hbWUpOw0K
PiA+ID4gPg0KPiA+ID4gPiAgLyoqDQo+ID4gPiA+ICAgKiBkbWFfaGVhcF9hZGQgLSBhZGRzIGEg
aGVhcCB0byBkbWFidWYgaGVhcHMNCj4gPiA+ID4gQEAgLTMwMyw2ICszMDUsNyBAQCBzdHJ1Y3Qg
ZG1hX2hlYXAgKmRtYV9oZWFwX2FkZChjb25zdCBzdHJ1Y3QgZG1hX2hlYXBfZXhwb3J0X2luZm8g
KmV4cF9pbmZvKQ0KPiA+ID4gPiAgICAgICBrZnJlZShoZWFwKTsNCj4gPiA+ID4gICAgICAgcmV0
dXJuIGVycl9yZXQ7DQo+ID4gPiA+ICB9DQo+ID4gPiA+ICtFWFBPUlRfU1lNQk9MKGRtYV9oZWFw
X2FkZCk7DQo+ID4gPiA+DQo+ID4gPiA+ICBzdGF0aWMgY2hhciAqZG1hX2hlYXBfZGV2bm9kZShj
b25zdCBzdHJ1Y3QgZGV2aWNlICpkZXYsIHVtb2RlX3QgKm1vZGUpDQo+ID4gPiA+ICB7DQo+ID4g
PiA+IC0tDQo+ID4gPiA+IDIuNDMuMA0KPiA+ID4gPg0KPg0KPiBCZXN0LA0KPiBTdW1pdC4NCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
