Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E91A34C27
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Feb 2025 18:40:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E225C441C2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Feb 2025 17:40:09 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by lists.linaro.org (Postfix) with ESMTPS id 155C33F551
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Feb 2025 17:39:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=fooishbar.org header.s=google header.b=NHhFL2jh;
	spf=pass (lists.linaro.org: domain of daniel@fooishbar.org designates 209.85.160.170 as permitted sender) smtp.mailfrom=daniel@fooishbar.org;
	dmarc=none
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-471c8bcb4a9so5774261cf.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Feb 2025 09:39:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1739468385; x=1740073185; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=whhYbCC8Ye/92zXnbL6IJWDNwsx8j4boIogQLPts9MI=;
        b=NHhFL2jhReZ6PUO8BxAi0R8pxF1uPwU/YjehxL2cqa6R3Qj7ECtRTLdTGvqbzzmds6
         rE7jEECM1A5p+g347cUfDUFxNzH5E9ZDBByuZQSWqFQ1rwdQdSyygUcizxMA8i34djeO
         +OeJ/KfUMuDCe8Y0WEizXVCVTEVL89gp0cbtNw5LdxC3wOyy9m6is20Xo9ueWz6dHW9Z
         6P/tytVZD5S3W9Ecae/NgDG1s4QjhDCbx+uA2TCGp3WnH67mK38Rmcaw8swTIzWSUeO+
         us7szrb53dLValqKMYuFIXu1B3lZ4h1ksRsMRqmS+8gdvySL8A5S6UZl94QWmz0vVAk5
         ltcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739468385; x=1740073185;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=whhYbCC8Ye/92zXnbL6IJWDNwsx8j4boIogQLPts9MI=;
        b=Z5Us1OSaN/nDydLiX25UXfz/xdIcMJvowr2ykqu9RalOJj3GotEzWQlqD0YLwORswj
         geLGK3JUWCyrIekFq8z1suviHJndRzO+s3lxyXZuxLZzulQDCQNDkxxzu3ArIvfdUs8B
         7wfFQ/7wmzeoB8YGKVevksjFE6L3JPGVDNG+OcRxUfMWHvp/lHSvf02mpDey4PR1EkUg
         hRfSB9GLKncDTUsR2m8xJ5Q5E+/gunzpyaKGzPmJAvteg/WhfJjZ1O++zus+LhWDSoHB
         5Q0Pn89wHyLrJZsCbcxr1a6eMwVw9n/GZ251MYedWfiUV9QqgRYF032BnhQWzZi3gtSP
         N/Dw==
X-Forwarded-Encrypted: i=1; AJvYcCXYhHq+ahSsOA4GeG+mLnE6hzYQMWNIEVOoi+TdZjr/PcRq5VPtrXf7TpGD+p3LeuXTGV9ob9rsHrKerCWc@lists.linaro.org
X-Gm-Message-State: AOJu0Yypa+N5LOdMZuq9/vUEuSZzE5ln/QHMELrN1HMeP1n0T86f0n2+
	unPIgsbEgEfM3GnkTeO2nqPZPYcnoqi6K1Q0Mqvb2v9Ma3OxgYiPm/rdUZglbcJqVK/c5Or8VFg
	Qp4dFNJZOHJm3oZoZcR8nDbKYweswqObPPYhytg==
X-Gm-Gg: ASbGnctsTSU8vlFEOqzkR33oCTKUgLvHXOvgieZ96B7gVMGtv2CjMF8Krsk2xvc/UVJ
	OfN2rADl4SRzfaiwCxtaekVvk9Bwry1+zO7Y1ytFMLmGJez+oSoiwCTH/chf68K3TTA7cf10=
X-Google-Smtp-Source: AGHT+IGE9qUAgteAk42h8NRzlwUiEVQLmyQkmiwetNHn7TWQ4JRreBJYCr8hrD0N2jIsyDYrKQ939hR7SXW12F654hE=
X-Received: by 2002:a05:622a:418e:b0:471:bd5e:d5dd with SMTP id
 d75a77b69052e-471bd5ed804mr90077321cf.16.1739468385599; Thu, 13 Feb 2025
 09:39:45 -0800 (PST)
MIME-Version: 1.0
References: <20241217100809.3962439-1-jens.wiklander@linaro.org>
 <20250212205613.4400a888@collabora.com> <CAFA6WYOaGEPj0xNEDBCoEmjJreEHChjQ2hyXRJ_CYoGhiBonfw@mail.gmail.com>
 <20250213093557.278f5d19@collabora.com> <CAFA6WYOJkSRsH-15QdqXNMd08Q=Dg4NkRd1Cr9LXA+5nozTF6g@mail.gmail.com>
 <20250213134008.4cbef142@collabora.com> <CAPj87rM5Y=-Jgf4mwukicF6Yb-vccn2fpG2X1jNq0upH2+cAEQ@mail.gmail.com>
 <CAHUa44G9hw-z6wzxg=HkVAxPKEW1yES5JTEqRWMvJUJAtcUDkQ@mail.gmail.com>
In-Reply-To: <CAHUa44G9hw-z6wzxg=HkVAxPKEW1yES5JTEqRWMvJUJAtcUDkQ@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 13 Feb 2025 17:39:33 +0000
X-Gm-Features: AWEUYZlDafBpFokqUpKbJAhQu7Ep0JLs4xPUNmdO9fz5XX0E98BWFTHCpoumcPo
Message-ID: <CAPj87rPHnME5Osgnf5-FSAu22mDpLj=dzvhi_NqEcOwr1ThgGw@mail.gmail.com>
To: Jens Wiklander <jens.wiklander@linaro.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 155C33F551
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[fooishbar.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.170:from];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.160.170:from];
	DMARC_NA(0.00)[fooishbar.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,arm.com,google.com,amd.com,qti.qualcomm.com];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[fooishbar.org:+]
Message-ID-Hash: NJKCH6TMD5Q6CYZKCL5FCKOTNY7UCUW7
X-Message-ID-Hash: NJKCH6TMD5Q6CYZKCL5FCKOTNY7UCUW7
X-MailFrom: daniel@fooishbar.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Boris Brezillon <boris.brezillon@collabora.com>, Sumit Garg <sumit.garg@linaro.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Florent Tomasin <florent.tomasin@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/6] TEE subsystem for restricted dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NJKCH6TMD5Q6CYZKCL5FCKOTNY7UCUW7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIFRodSwgMTMgRmViIDIwMjUgYXQgMTU6NTcsIEplbnMgV2lrbGFuZGVyIDxqZW5z
Lndpa2xhbmRlckBsaW5hcm8ub3JnPiB3cm90ZToNCj4gT24gVGh1LCBGZWIgMTMsIDIwMjUgYXQg
MzowNeKAr1BNIERhbmllbCBTdG9uZSA8ZGFuaWVsQGZvb2lzaGJhci5vcmc+IHdyb3RlOg0KPiA+
IEJ1dCBqdXN0IGJlY2F1c2UgVEVFIGlzIG9uZSBnb29kIGJhY2tlbmQgaW1wbGVtZW50YXRpb24s
IGRvZXNuJ3QgbWVhbg0KPiA+IGl0IHNob3VsZCBiZSB0aGUgdXNlcnNwYWNlIEFCSS4gV2h5IHNo
b3VsZCB1c2Vyc3BhY2UgY2FyZSB0aGF0IFRFRSBoYXMNCj4gPiBtZWRpYXRlZCB0aGUgYWxsb2Nh
dGlvbiBpbnN0ZWFkIG9mIGl0IGJlaW5nIGEgcHJlZGVmaW5lZCByYW5nZSB3aXRoaW4NCj4gPiBE
VD8NCj4NCj4gVGhlIFRFRSBtYXkgdmVyeSB3ZWxsIHVzZSBhIHByZWRlZmluZWQgcmFuZ2UgdGhh
dCBwYXJ0IGlzIGFic3RyYWN0ZWQNCj4gd2l0aCB0aGUgaW50ZXJmYWNlLg0KDQpPZiBjb3Vyc2Uu
IEJ1dCB5b3UgY2FuIGFsc28gKGFuZCB0aGlzIGhhcyBiZWVuIHNoaXBwZWQgb24gcmVhbA0KZGV2
aWNlcykgaGFuZGxlIHRoaXMgd2l0aG91dCBhbnkgcGVyLWFsbG9jYXRpb24gVEVFIG5lZWRzIGJ5
IHNpbXBseQ0KYWxsb2NhdGluZyBmcm9tIGEgbWVtb3J5IHJhbmdlIHdoaWNoIGlzIHByZWRlZmlu
ZWQgd2l0aGluIERULg0KDQpGcm9tIHRoZSB1c2Vyc3BhY2UgcG9pbnQgb2Ygdmlldywgd2h5IHNo
b3VsZCB0aGVyZSBiZSBvbmUgQUJJIHRvDQphbGxvY2F0ZSBtZW1vcnkgZnJvbSBhIHByZWRlZmlu
ZWQgcmFuZ2Ugd2hpY2ggaXMgZGVsaXZlcmVkIGJ5IERUIHRvDQp0aGUga2VybmVsLCBhbmQgb25l
IEFCSSB0byBhbGxvY2F0ZSBtZW1vcnkgZnJvbSBhIHByZWRlZmluZWQgcmFuZ2UNCndoaWNoIGlz
IG1lZGlhdGVkIGJ5IFRFRT8NCg0KPiA+ICBXaGF0IGFkdmFudGFnZQ0KPiA+IGRvZXMgdXNlcnNw
YWNlIGdldCBmcm9tIGhhdmluZyB0byBoYXZlIGEgZGlmZmVyZW50IGNvZGVwYXRoIHRvIGdldCBh
DQo+ID4gZGlmZmVyZW50IGhhbmRsZSB0byBtZW1vcnk/IFdoYXQgYWJvdXQgeDg2Pw0KPiA+DQo+
ID4gSSB0aGluayB0aGlzIHByb3Bvc2FsIGlzIGxvb2tpbmcgYXQgaXQgZnJvbSB0aGUgd3Jvbmcg
ZGlyZWN0aW9uLg0KPiA+IEluc3RlYWQgb2Ygd29ya2luZyB1cHdhcmRzIGZyb20gdGhlIGltcGxl
bWVudGF0aW9uIHRvIHVzZXJzcGFjZSwgc3RhcnQNCj4gPiB3aXRoIHVzZXJzcGFjZSBhbmQgd29y
ayBkb3dud2FyZHMuIFRoZSBpbnRlcmVzdGluZyBwcm9wZXJ0eSB0byBmb2N1cw0KPiA+IG9uIGlz
IGFsbG9jYXRpbmcgbWVtb3J5LCBub3QgdGhhdCBFTDEgaXMgaW52b2x2ZWQgYmVoaW5kIHRoZSBz
Y2VuZXMuDQo+DQo+IEZyb20gd2hhdCBJJ3ZlIGdhdGhlcmVkIGZyb20gZWFybGllciBkaXNjdXNz
aW9ucywgaXQgd2Fzbid0IG11Y2ggb2YgYQ0KPiBwcm9ibGVtIGZvciB1c2Vyc3BhY2UgdG8gaGFu
ZGxlIHRoaXMuIElmIHRoZSBrZXJuZWwgd2VyZSB0byBwcm92aWRlIGl0DQo+IHZpYSBhIGRpZmZl
cmVudCBBQkksIGhvdyB3b3VsZCBpdCBiZSBlYXNpZXIgdG8gaW1wbGVtZW50IGluIHRoZQ0KPiBr
ZXJuZWw/IEkgdGhpbmsgd2UgbmVlZCBhbiBleGFtcGxlIHRvIHVuZGVyc3RhbmQgeW91ciBzdWdn
ZXN0aW9uLg0KDQpJdCBpcyBhIHByb2JsZW0gZm9yIHVzZXJzcGFjZSwgYmVjYXVzZSB3ZSBuZWVk
IHRvIGV4cG9zZSBhY2NlcHRhYmxlDQpwYXJhbWV0ZXJzIGZvciBhbGxvY2F0aW9uIHRocm91Z2gg
dGhlIGVudGlyZSBzdGFjay4gSWYgeW91IGxvb2sgYXQgdGhlDQpkbWFidWYgZG9jdW1lbnRhdGlv
biBpbiB0aGUga2VybmVsIGZvciBob3cgYnVmZmVycyBzaG91bGQgYmUgYWxsb2NhdGVkDQphbmQg
ZXhjaGFuZ2VkLCB5b3UgY2FuIHNlZSB0aGUgbmVnb3RpYXRpb24gZmxvdyBmb3IgbW9kaWZpZXJz
LiBUaGlzDQpwZXJtZWF0ZXMgdGhyb3VnaCBLTVMsIEVHTCwgVnVsa2FuLCBXYXlsYW5kLCBHU3Ry
ZWFtZXIsIGFuZCBtb3JlLg0KDQpTdGFuZGFyZGlzaW5nIG9uIGhlYXBzIGFsbG93cyB1cyB0byBh
ZGQgdGhvc2UgaW4gYSBzaW1pbGFyIHdheS4gSWYgd2UNCmhhdmUgdG8gYWRkIGRpZmZlcmVudCBh
bGxvY2F0aW9uIG1lY2hhbmlzbXMsIHRoZW4gdGhlIGNvbXBsZXhpdHkNCmluY3JlYXNlcywgcGVy
bWVhdGluZyBub3Qgb25seSBpbnRvIGFsbCB0aGUgZGlmZmVyZW50IHVzZXJzcGFjZSBBUElzLA0K
YnV0IGFsc28gaW50byB0aGUgZHJpdmVycyB3aGljaCBuZWVkIHRvIHN1cHBvcnQgZXZlcnkgZGlm
ZmVyZW50DQphbGxvY2F0aW9uIG1lY2hhbmlzbSBldmVuIGlmIHRoZXkgaGF2ZSBubyBvcGluaW9u
IG9uIGl0IC0gZS5nLiBNYWxpDQpkb2Vzbid0IGNhcmUgaW4gYW55IHdheSB3aGV0aGVyIHRoZSBh
bGxvY2F0aW9uIGNvbWVzIGZyb20gYSBoZWFwIG9yDQpURUUgb3IgQUNQSSBvciB3aGF0ZXZlciwg
aXQgY2FyZXMgb25seSB0aGF0IHRoZSBtZW1vcnkgaXMgcHJvdGVjdGVkLg0KDQpEb2VzIHRoYXQg
aGVscD8NCg0KQ2hlZXJzLA0KRGFuaWVsDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
