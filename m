Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uAlFOu1mC2qnHAUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 21:22:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8BF572D36
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 21:22:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5BFE4406F3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 19:22:20 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id 04D093F829
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 19:22:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b="gVWag/yt";
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.46 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-48d1c670255so815e9.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 12:22:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779132128; cv=none;
        d=google.com; s=arc-20240605;
        b=flNBYwvSXNe6xnOanqepTPNVkK/7B8wbOJhFtUUBa3EoLlHm4FP+DX23sWh53GmbiD
         ILNY7wGo5f1AF+5Xu0z7gw/HVLOQcnJLAQZ8fDQ0m0xs32EHPUPtkoP3YmcqOKBGARl5
         6lRQRGRWbhgO/2AxeuiLWeyPS5uWT+gsKYKODPtUo4XvrGfduU2/x3vbX7DzQSUABfhd
         kU6vNsl7qGmFRCDjHGjx5Ed/S1d8y0eqGssmsRbgf8m7AfAz5h6rybjXUG3VgdI6Yyu+
         gLnJn757jfjlOqOhd4/nmzlw8Obawio8myETs3Iwvl3/BvoVMAFhqux4m2s08DmWJKGx
         5K9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=tamJOUr/gFpbNHYCsIZYX+iIMAFW5aR8+J/DZkkw+Z4=;
        fh=LmH6fK2HfYALc8rMjzNS8tF73DF3ojVo/QquRYU7wmE=;
        b=SfQehDFqdfIHrwBE0005CErlDiVRBg3x+MT8WeWVY42leYDcagd7m6LOfnbnbThF04
         LkwAlTXT2gpqPDUwkis/LHdcFbDHtncG6KIR3JXRUy0As7pW+92UnMWkkr9u1Z+qZsYv
         Dk4svJRCp8zQF24p+zrUmKZfnrfwOSu8X173yNk8YQSPe3ukrOsBx7d6slkDbbr0zunH
         pgQZwCC3AtbXjaj/oXjhBEH26GxMyIlwCcIAO9kwquSXb1NGqdSf2xXZEJbT4dH9+W2b
         /TrsPixmCCqRKW18looMwNT0esp6Iady2R0vESPdOloo6u8TVSC0d4pCY3XeEB//VrZk
         2yrQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1779132128; x=1779736928; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tamJOUr/gFpbNHYCsIZYX+iIMAFW5aR8+J/DZkkw+Z4=;
        b=gVWag/ytR6V5A2lCSqten+XCR2W+7+7EDaBeAmpEsqo9/gBr01T2xe1GL2PTmegTeN
         mWto1fx9Pc3JFxYOqxVOK5LJHNiXl42hkJAENHbGEK5yvnzPKsQCvZpCnuH9SXKCwWBC
         SqN6O8zfJjLRWlcXoVczvSRf9kl4cv5VKtUfghDpQDeuraJnmE9Kfp+Xqmzzkii1V3AG
         mivgJ45mBmN66/4yfENur5YoApUJ+5pCnT4a1/PJRJwRWv0qb7eyLLPay4sLfajrhhDf
         LGBSMTS2RDkc37msc5i74q7QisbJMo9ANifFNJ6kMu4KZJ1h1//DzgARVm2jdGl3nRin
         JNzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779132128; x=1779736928;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tamJOUr/gFpbNHYCsIZYX+iIMAFW5aR8+J/DZkkw+Z4=;
        b=dciinMHQUhmYcUTkjNFm+PA+QGa2+27Yhd0AaWxYIDzkuwLqGu/gktRzNq9Imw7UQb
         Q2E3GiNvJlBigJWJr/56YCC3Xlst0jEEKDP/BbLhjmB4USxypF6dBf/4DRF3yGzJMCHv
         oTAC2PT7jl3QsJwdOKEcMBKOeZX6jNtAw++X9t17hflFom46vDpW5CLTkWBF0UtxhrJN
         2hZ4Ojllt1+UVMe5UHfxbz5tBlrtFv8iRiGhahB5VPotufUDhB/FUcqgU17C8JJPxyZJ
         ozy42D0ESveqzaMnucBq0pTqQlFeFBzk3OdPi749RpAjafx3notVC4wb7vwR76Vo3+gm
         4RdQ==
X-Forwarded-Encrypted: i=1; AFNElJ9Qann+U01WBGJNjOktg7Q0DY0xN3lXT9Zo04PsK2Mn2AvtL170zTe312Q4mYWuVhJORc2KQypjWpzulmhf@lists.linaro.org
X-Gm-Message-State: AOJu0YyF+2xI4jmKSkmovrE4VLJcBqytUf7TT//eC1JPGMjxC2Vy0kOb
	iXy5gpVS84nPeNHdWoa9TkJfKaZlf9LXTMO6shZHCFWhkrSPDuiThmLTSmVaZOJRWBxn9GYYIwj
	RuPP/6xYrynT/su9N5rivlDGPTSRvRkyfuFIbVsIo
X-Gm-Gg: Acq92OHkhi0vqg26KNoajHW1T8qecEpyCkp91gjlACe71mImLus5x/65jsLqKBQqYK/
	5v544vcAeL187O6nq+5Jv5GubUTXebLZ5+WPX3hwY8JkJ+mENTNOYzpjux2xbin/WcS8+UgWcNH
	llyJonDWp40m11hYRkXo4nWRLG83cV0xzP/K4OgWvrm1i1IxC8f8V1bfFIZGV236osAb+3w7xPV
	CtP0nsJHxQU6kUH7SVX2YGxyA2rlbyltg0QZHFiGr4b6TVuhg7hDqRHY+Bbu7BFeMdI2P+qRQU1
	6Hx2e+qWtY9RD2fKJ5gzMqXoBlfwiB2MTpSoc37y+/sQy72k
X-Received: by 2002:a05:600c:6299:b0:483:6a76:11a6 with SMTP id
 5b1f17b1804b1-48ffd84253emr3382295e9.5.1779132127442; Mon, 18 May 2026
 12:22:07 -0700 (PDT)
MIME-Version: 1.0
References: <afXGeq1AvqFY76MY@stanley.mountain> <agsrBPXYXA2vZgj1@willie-the-truck>
In-Reply-To: <agsrBPXYXA2vZgj1@willie-the-truck>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 18 May 2026 12:21:55 -0700
X-Gm-Features: AVHnY4IaFTCEtAbkOTHrQii7e8-AzKA2Ul7h3BwOA0peBU4GDfj3y7WV26rf3CU
Message-ID: <CABdmKX0hPe7itx4orMAx2Q6EQa+A4uL6yFa4in7q3vHRBQRn1w@mail.gmail.com>
To: Will Deacon <will@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: ZDIZV6OT7ZEHWYGHQYXFX7LFLF7JUL6K
X-Message-ID-Hash: ZDIZV6OT7ZEHWYGHQYXFX7LFLF7JUL6K
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Dan Carpenter <error27@gmail.com>, jstultz@google.com, Catalin Marinas <catalin.marinas@arm.com>, linux-mm@kvack.org, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [bug report] dma-buf: heaps: Rework heap allocation hooks to return struct dma_buf instead of fd
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZDIZV6OT7ZEHWYGHQYXFX7LFLF7JUL6K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,google.com,arm.com,kvack.org,linaro.org,lists.freedesktop.org,lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: 6F8BF572D36
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBNYXkgMTgsIDIwMjYgYXQgODowNuKAr0FNIFdpbGwgRGVhY29uIDx3aWxsQGtlcm5l
bC5vcmc+IHdyb3RlOg0KPg0KPiBPbiBTYXQsIE1heSAwMiwgMjAyNiBhdCAxMjo0MDoxMFBNICsw
MzAwLCBEYW4gQ2FycGVudGVyIHdyb3RlOg0KPiA+IEknbSBub3Qgc3VyZSBleGFjdGx5IHdobyB0
byByZXBvcnQgdGhpcyBidWcgdG9vLiAgUHJvYmFibHkgdGhlIG1tDQo+ID4gZGV2cz8NCj4NCj4g
W0FkZGluZyBKb2huIGFuZCBUSiwgaW4gY2FzZSB0aGV5IGFyZSBpbnRlcmVzdGVkIC8gYWJsZSB0
byBoZWxwXQ0KPg0KPiBXaWxsDQo+DQo+IChvcmlnaW5hbCByZXBvcnQgZm9sbG93cykNCj4NCj4g
PiAgICAgICBkcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYzo0OTkgc3lzdGVtX2hl
YXBfYWxsb2NhdGUoKQ0KPiA+ICAgICAgIHdhcm46IHBhc3NpbmcgcG9zaXRpdmUgZXJyb3IgY29k
ZSAnczMybWluLSgtMSksMScgdG8gJ0VSUl9QVFInDQo+ID4NCj4gPiBkcml2ZXJzL2RtYS1idWYv
aGVhcHMvc3lzdGVtX2hlYXAuYw0KPiA+ICAgICA0NTkgICAgICAgICBpZiAoY2Nfc2hhcmVkKSB7
DQo+ID4gICAgIDQ2MCAgICAgICAgICAgICAgICAgZm9yX2VhY2hfc2d0YWJsZV9zZyh0YWJsZSwg
c2csIGkpIHsNCj4gPiAgICAgNDYxICAgICAgICAgICAgICAgICAgICAgICAgIHJldCA9IHN5c3Rl
bV9oZWFwX3NldF9wYWdlX2RlY3J5cHRlZChzZ19wYWdlKHNnKSk7DQo+ID4gICAgIDQ2MiAgICAg
ICAgICAgICAgICAgICAgICAgICBpZiAocmV0KQ0KPiA+ICAgICA0NjMgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBnb3RvIGZyZWVfcGFnZXM7DQo+ID4NCj4gPiBJdCBraW5kIG9mIGxv
b2tzIGxpa2Ugc3lzdGVtX2hlYXBfc2V0X3BhZ2VfZGVjcnlwdGVkKCkgY2FuIHJldHVybiAxLg0K
PiA+DQo+ID4gICAgIDQ2NCAgICAgICAgICAgICAgICAgfQ0KPiA+ICAgICA0NjUgICAgICAgICB9
DQo+ID4gICAgIDQ2Ng0KPiA+ICAgICA0NjcgICAgICAgICAvKiBjcmVhdGUgdGhlIGRtYWJ1ZiAq
Lw0KPiA+ICAgICA0NjggICAgICAgICBleHBfaW5mby5leHBfbmFtZSA9IGRtYV9oZWFwX2dldF9u
YW1lKGhlYXApOw0KPiA+ICAgICA0NjkgICAgICAgICBleHBfaW5mby5vcHMgPSAmc3lzdGVtX2hl
YXBfYnVmX29wczsNCj4gPiAgICAgNDcwICAgICAgICAgZXhwX2luZm8uc2l6ZSA9IGJ1ZmZlci0+
bGVuOw0KPiA+ICAgICA0NzEgICAgICAgICBleHBfaW5mby5mbGFncyA9IGZkX2ZsYWdzOw0KPiA+
ICAgICA0NzIgICAgICAgICBleHBfaW5mby5wcml2ID0gYnVmZmVyOw0KPiA+ICAgICA0NzMgICAg
ICAgICBkbWFidWYgPSBkbWFfYnVmX2V4cG9ydCgmZXhwX2luZm8pOw0KPiA+ICAgICA0NzQgICAg
ICAgICBpZiAoSVNfRVJSKGRtYWJ1ZikpIHsNCj4gPiAgICAgNDc1ICAgICAgICAgICAgICAgICBy
ZXQgPSBQVFJfRVJSKGRtYWJ1Zik7DQo+ID4gICAgIDQ3NiAgICAgICAgICAgICAgICAgZ290byBm
cmVlX3BhZ2VzOw0KPiA+ICAgICA0NzcgICAgICAgICB9DQo+ID4gICAgIDQ3OCAgICAgICAgIHJl
dHVybiBkbWFidWY7DQo+ID4gICAgIDQ3OQ0KPiA+ICAgICA0ODAgZnJlZV9wYWdlczoNCj4gPiAg
ICAgNDgxICAgICAgICAgZm9yX2VhY2hfc2d0YWJsZV9zZyh0YWJsZSwgc2csIGkpIHsNCj4gPiAg
ICAgNDgyICAgICAgICAgICAgICAgICBzdHJ1Y3QgcGFnZSAqcCA9IHNnX3BhZ2Uoc2cpOw0KPiA+
ICAgICA0ODMNCj4gPiAgICAgNDg0ICAgICAgICAgICAgICAgICAvKg0KPiA+ICAgICA0ODUgICAg
ICAgICAgICAgICAgICAqIEludGVudGlvbmFsbHkgbGVhayBwYWdlcyB0aGF0IGNhbm5vdCBiZSBy
ZS1lbmNyeXB0ZWQNCj4gPiAgICAgNDg2ICAgICAgICAgICAgICAgICAgKiB0byBwcmV2ZW50IHNo
YXJlZCBtZW1vcnkgZnJvbSBiZWluZyByZXVzZWQuDQo+ID4gICAgIDQ4NyAgICAgICAgICAgICAg
ICAgICovDQo+ID4gICAgIDQ4OCAgICAgICAgICAgICAgICAgaWYgKGJ1ZmZlci0+Y2Nfc2hhcmVk
ICYmDQo+ID4gICAgIDQ4OSAgICAgICAgICAgICAgICAgICAgIHN5c3RlbV9oZWFwX3NldF9wYWdl
X2VuY3J5cHRlZChwKSkNCj4gPiAgICAgNDkwICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRp
bnVlOw0KPiA+ICAgICA0OTEgICAgICAgICAgICAgICAgIF9fZnJlZV9wYWdlcyhwLCBjb21wb3Vu
ZF9vcmRlcihwKSk7DQo+ID4gICAgIDQ5MiAgICAgICAgIH0NCj4gPiAgICAgNDkzICAgICAgICAg
c2dfZnJlZV90YWJsZSh0YWJsZSk7DQo+ID4gICAgIDQ5NCBmcmVlX2J1ZmZlcjoNCj4gPiAgICAg
NDk1ICAgICAgICAgbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKHBhZ2UsIHRtcF9wYWdlLCAmcGFn
ZXMsIGxydSkNCj4gPiAgICAgNDk2ICAgICAgICAgICAgICAgICBfX2ZyZWVfcGFnZXMocGFnZSwg
Y29tcG91bmRfb3JkZXIocGFnZSkpOw0KPiA+ICAgICA0OTcgICAgICAgICBrZnJlZShidWZmZXIp
Ow0KPiA+ICAgICA0OTgNCj4gPiAtLT4gNDk5ICAgICAgICAgcmV0dXJuIEVSUl9QVFIocmV0KTsN
Cj4gPiAgICAgNTAwIH0NCj4gPg0KPiA+IFRoZSBwcm9ibGVtIGlzIHRoYXQgYWRkX3RvX3BhZ2Vt
YXAoKSByZXR1cm5zIFBNX0VORF9PRl9CVUZGRVIgKDEpDQo+ID4gd2hpY2ggaXMgdXNlZCBieSBw
YWdlbWFwX3JlYWQoKSBhbmQgbm93aGVyZSBlbHNlLiAgVGhlIGNhbGwgdHJlZQ0KPiA+IGlzOg0K
PiA+DQo+ID4gc3lzdGVtX2hlYXBfYWxsb2NhdGUoKQ0KPiA+IHN5c3RlbV9oZWFwX3NldF9wYWdl
X2RlY3J5cHRlZCgpDQo+ID4gc2V0X21lbW9yeV9kZWNyeXB0ZWQoKQ0KPiA+IHJlYWxtX3NldF9t
ZW1vcnlfZGVjcnlwdGVkKCkNCj4gPiBfX3NldF9tZW1vcnlfZW5jX2RlYygpDQo+ID4gX19jaGFu
Z2VfbWVtb3J5X2NvbW1vbigpDQo+ID4gdXBkYXRlX3JhbmdlX3Byb3QoKQ0KPiA+IHdhbGtfa2Vy
bmVsX3BhZ2VfdGFibGVfcmFuZ2VfbG9ja2xlc3MoKQ0KPiA+IHdhbGtfcGdkX3JhbmdlKCkNCj4g
PiBwYWdlbWFwX3B0ZV9ob2xlKCkNCg0KVGhpcyBkb2Vzbid0IGxvb2sgcmlnaHQgdG8gbWUuIHVw
ZGF0ZV9yYW5nZV9wcm90IGlzIGluIGFybTY0IGFyY2gNCmNvZGUuIEl0IHVzZXMgdGhlIGFybTY0
IHBhZ2VhdHRyX29wcyB3aGljaCBkb2VzIG5vdCBwcm92aWRlIGEgcHRlX2hvbGUNCm9wLiBTbyB3
YWxrX3BnZF9yYW5nZSBzaG91bGQgbmV2ZXIgY2FsbCBvcHMtPnB0X2hvbGUuDQoNCj4gPiBhZGRf
dG9fcGFnZW1hcCgpDQo+ID4NCj4gPiBUaGlzIGNvZGUgc2VlbXMgc29ydCBvZiBvbGQgYW5kIEkg
Z3Vlc3Mgbm8gb25lIGhhcyByZXBvcnRlZCB0aGUgYnVnDQo+ID4gc28gbWF5YmUgaXQncyBhIGZh
bHNlIHBvc2l0aXZlLCBidXQgaXQgZmVlbHMgbGlrZSBpdCdzIGFza2luZyBmb3INCj4gPiBwcm9i
bGVtcyB0byByZXR1cm4gdGhlIFBNX0VORF9PRl9CVUZGRVIuICBUaGVyZSBhcmVuJ3QgYW55IGNv
bW1lbnRzDQo+ID4gb24gYW55IG9mIHRob3NlIGZ1bmN0aW9ucyBhYm92ZSBleHBsYWluaW5nIHdo
YXQgcmV0dXJuIHZhbHVlcyBhcmUNCj4gPiBleHBlY3RlZC4NCj4gPg0KPiA+IFRoaXMgZW1haWwg
aXMgYSBmcmVlIHNlcnZpY2UgZnJvbSB0aGUgU21hdGNoLUNJIHByb2plY3QgW3NtYXRjaC5zZi5u
ZXRdLg0KPiA+DQo+ID4gcmVnYXJkcywNCj4gPiBkYW4gY2FycGVudGVyDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
