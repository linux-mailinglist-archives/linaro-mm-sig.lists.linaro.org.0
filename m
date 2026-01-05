Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0OaaMNQK4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:14:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A33A411784
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:14:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A95624490F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:14:11 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	by lists.linaro.org (Postfix) with ESMTPS id 357BD3F713
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Jan 2026 16:28:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=TZOWokDV;
	spf=pass (lists.linaro.org: domain of urezki@gmail.com designates 209.85.167.46 as permitted sender) smtp.mailfrom=urezki@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-596ba05aaecso48867e87.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 05 Jan 2026 08:28:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767630536; x=1768235336; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MhLaZEGztBaqdfRcf1ZLhhb1lILxqOMU/Yvm4+Hg7yU=;
        b=TZOWokDVqz7cdSZluU3g8gHMbQhzNkLD9wf+gRW7JsQRKYUdJCz0Hw1bnDsLAfmXIa
         RXN6R9n0kb+VzTXPoy+RgsDqMYe5ckzVUoyb/oqVr+FleuXA4V75CFznoEKpNzHMeDEe
         NoCNNmeR21IzCO7ZAcTDVV+2TAalQQE5rQHXrNcjSO9JAzHrU3wqXRySueVdQU8QzfSg
         0g6A26bTBaYOswIgqXGSn0Ywrle/4Z0qRdtASo7hNjgylrrr/ln9UcFwRHl4wl6E0uaw
         o//ymaZjLA/0QyugUUXWjQAOmQ6lVO59FuF4MJ+967pQrG8+sm8qjpx+T8bX5EugnBdl
         av/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767630536; x=1768235336;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MhLaZEGztBaqdfRcf1ZLhhb1lILxqOMU/Yvm4+Hg7yU=;
        b=M5rnawTlYBGqWUfI71kcgvFHTOn8mEVzFI2Itxjd9BkGgnfoA0yli7qwxwrIsITUIG
         1cQO8z6dlgJdF42Rap5B7lSlSx3E1PCNdmMCfsHmNETd94XwwOxziIhi/uLR2SimEgZA
         h3l19jNpXd1X+1ccnFkPin+ZsIGD9dOjqTbI7PbvkCj+Gy2eO1uDVwWiWa5JrKhXDTPZ
         thaY/5/WSxORmLIB4ReY34dM5fFmh5VKQlaFu6Yeqm2euwgnjmCy1qniMRXvE9NnOEnY
         ubVpfwh7Wsw8UjBIijJ9A2q0P57OMas3o829Lv0TVSVO09YtFkm+7ei9aI5TDJJW5c7K
         xzAw==
X-Forwarded-Encrypted: i=1; AJvYcCUU1B8aypqjNdt+PX5I52nzKxzLB8P9Y+7dn41Sr/OcA8mMh6j1Ajz5KaL4oHKxQGzjbSwR8VAvizRfPL9g@lists.linaro.org
X-Gm-Message-State: AOJu0YzNxN/f7HI9hqnOjYc1yAHWiY9akwHIubKwadfBeQsLk2pJLYkU
	6i+s2UEdMWT7M2LLFgDb8sWfiZIhB1vpoFBc8dQphErJcn6eftPHTohI
X-Gm-Gg: AY/fxX4HWJaK3cm5rnt55IrelkHassfbUD+h54MyblCl9h1zKCtKHYBm4itxO34/nJS
	zVwm2xWWPIMzeWVkqJbWIRYPjhW1Q+We9dHyoEPk4cLJ/csvND1R5qGCweYArF2bewHEl8zVATG
	SQOHO2vMbV4NBxU4yrokEFq8mGDrD7C+jghEogl+1ujxcPrIe7hLgNmV2JaWfH+bNaKFUnMeDSu
	oc7qZAKLpZak4c3x9bZfH8RN5rEypKnHAZsolpvXvdts2CInjVtpnK5+Cc6Eggdhu8Niy3XCYV0
	FRgD36bMvANUGuB1bA/fcf2ddHAkwXuwL8lnncRoxhnNaznWURpFXOU23A7rpd58QwUwP4Vr/Sn
	EjuJgjVgdOW9QYoc/3xbCm76RpzaMuM1iVrEUqpd95XgSz/Ii4thz
X-Google-Smtp-Source: AGHT+IEoZ87k72XOK4WRfNoEGxBoiDEdhg+qxrjQywDuv03+TjElLhMwviVR8rOvTsQRpLgtTWykmg==
X-Received: by 2002:ac2:4f0a:0:b0:59a:113a:f517 with SMTP id 2adb3069b0e04-59b6527a2afmr98478e87.7.1767630535563;
        Mon, 05 Jan 2026 08:28:55 -0800 (PST)
Received: from milan ([2001:9b1:d5a0:a500::24b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b655143b5sm5936e87.85.2026.01.05.08.28.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 08:28:54 -0800 (PST)
From: Uladzislau Rezki <urezki@gmail.com>
X-Google-Original-From: Uladzislau Rezki <urezki@milan>
Date: Mon, 5 Jan 2026 17:28:52 +0100
To: Barry Song <21cnbao@gmail.com>
Message-ID: <aVvmxGUp2l0Tavwb@milan>
References: <aUlC6N1jmDbMDPc5@milan>
 <20251223212336.36249-1-21cnbao@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251223212336.36249-1-21cnbao@gmail.com>
X-Spamd-Bar: ---
X-MailFrom: urezki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: U77ROTPOWKGCTRGB6QLUGDMXOGNSO5DP
X-Message-ID-Hash: U77ROTPOWKGCTRGB6QLUGDMXOGNSO5DP
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:05:12 +0000
CC: urezki@gmail.com, akpm@linux-foundation.org, david@kernel.org, dri-devel@lists.freedesktop.org, jstultz@google.com, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, mripard@kernel.org, sumit.semwal@linaro.org, v-songbaohua@oppo.com, zhengtangquan@oppo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] mm/vmalloc: map contiguous pages in batches for vmap() whenever possible
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U77ROTPOWKGCTRGB6QLUGDMXOGNSO5DP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.19 / 15.00];
	DATE_IN_PAST(1.00)[2423];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[urezki@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux-foundation.org,kernel.org,lists.freedesktop.org,google.com,lists.linaro.org,vger.kernel.org,kvack.org,linaro.org,oppo.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.256];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 9A33A411784
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCBEZWMgMjQsIDIwMjUgYXQgMTA6MjM6MzRBTSArMTMwMCwgQmFycnkgU29uZyB3cm90
ZToNCj4gPiA+IMKgLyoNCj4gPiA+IMKgICogdm1hcF9wYWdlc19yYW5nZV9ub2ZsdXNoIGlzIHNp
bWlsYXIgdG8gdm1hcF9wYWdlc19yYW5nZSwgYnV0IGRvZXMgbm90DQo+ID4gPiDCoCAqIGZsdXNo
IGNhY2hlcy4NCj4gPiA+IEBAIC02NTgsMjAgKzY3MiwzNSBAQCBpbnQgX192bWFwX3BhZ2VzX3Jh
bmdlX25vZmx1c2godW5zaWduZWQgbG9uZyBhZGRyLCB1bnNpZ25lZCBsb25nIGVuZCwNCj4gPiA+
DQo+ID4gPiDCoCDCoCDCoCBXQVJOX09OKHBhZ2Vfc2hpZnQgPCBQQUdFX1NISUZUKTsNCj4gPiA+
DQo+ID4gPiArIMKgIMKgIC8qDQo+ID4gPiArIMKgIMKgIMKgKiBGb3Igdm1hcCgpLCB1c2VycyBt
YXkgYWxsb2NhdGUgcGFnZXMgZnJvbSBoaWdoIG9yZGVycyBkb3duIHRvDQo+ID4gPiArIMKgIMKg
IMKgKiBvcmRlciAwLCB3aGlsZSBhbHdheXMgdXNpbmcgUEFHRV9TSElGVCBhcyB0aGUgcGFnZV9z
aGlmdC4NCj4gPiA+ICsgwqAgwqAgwqAqIFdlIGZpcnN0IGNoZWNrIHdoZXRoZXIgdGhlIGluaXRp
YWwgcGFnZSBpcyBhIGNvbXBvdW5kIHBhZ2UuIElmIHNvLA0KPiA+ID4gKyDCoCDCoCDCoCogdGhl
cmUgbWF5IGJlIGFuIG9wcG9ydHVuaXR5IHRvIGJhdGNoIG11bHRpcGxlIHBhZ2VzIHRvZ2V0aGVy
Lg0KPiA+ID4gKyDCoCDCoCDCoCovDQo+ID4gPiDCoCDCoCDCoCBpZiAoIUlTX0VOQUJMRUQoQ09O
RklHX0hBVkVfQVJDSF9IVUdFX1ZNQUxMT0MpIHx8DQo+ID4gPiAtIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIHBhZ2Vfc2hpZnQgPT0gUEFHRV9TSElGVCkNCj4gPiA+ICsgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgKHBhZ2Vfc2hpZnQgPT0gUEFHRV9TSElGVCAmJiAhUGFnZUNv
bXBvdW5kKHBhZ2VzWzBdKSkpDQo+ID4gPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCByZXR1cm4gdm1h
cF9zbWFsbF9wYWdlc19yYW5nZV9ub2ZsdXNoKGFkZHIsIGVuZCwgcHJvdCwgcGFnZXMpOw0KPiA+
IEhtLi4gSWYgZmlyc3QgZmV3IHBhZ2VzIGFyZSBvcmRlci0wIGFuZCB0aGUgcmVzdCBhcmUgY29t
cG91bmQNCj4gPiB0aGVuIHdlIGRvIG5vdGhpbmcuDQo+IA0KPiBOb3cgdGhlIGRtYS1idWYgaXMg
YWxsb2NhdGVkIGluIGRlc2NlbmRpbmcgb3JkZXIuIElmIHBhZ2UwDQo+IGlzIG5vdCBodWdlLCBw
YWdlMSB3aWxsIG5vdCBiZSBlaXRoZXIuIEhvd2V2ZXIsIEkgYWdyZWUgdGhhdA0KPiB3ZSBtYXkg
ZXh0ZW5kIHN1cHBvcnQgZm9yIHRoaXMgY2FzZS4NCj4gDQo+ID4NCj4gPiA+DQo+ID4gPiAtIMKg
IMKgIGZvciAoaSA9IDA7IGkgPCBucjsgaSArPSAxVSA8PCAocGFnZV9zaGlmdCAtIFBBR0VfU0hJ
RlQpKSB7DQo+ID4gPiArIMKgIMKgIGZvciAoaSA9IDA7IGkgPCBucjsgKSB7DQo+ID4gPiArIMKg
IMKgIMKgIMKgIMKgIMKgIHVuc2lnbmVkIGludCBzaGlmdCA9IHBhZ2Vfc2hpZnQ7DQo+ID4gPiDC
oCDCoCDCoCDCoCDCoCDCoCDCoCBpbnQgZXJyOw0KPiA+ID4NCj4gPiA+IC0gwqAgwqAgwqAgwqAg
wqAgwqAgZXJyID0gdm1hcF9yYW5nZV9ub2ZsdXNoKGFkZHIsIGFkZHIgKyAoMVVMIDw8IHBhZ2Vf
c2hpZnQpLA0KPiA+ID4gKyDCoCDCoCDCoCDCoCDCoCDCoCAvKg0KPiA+ID4gKyDCoCDCoCDCoCDC
oCDCoCDCoCDCoCogRm9yIHZtYXAoKSBjYXNlcywgcGFnZV9zaGlmdCBpcyBhbHdheXMgUEFHRV9T
SElGVCwgZXZlbg0KPiA+ID4gKyDCoCDCoCDCoCDCoCDCoCDCoCDCoCogaWYgdGhlIHBhZ2VzIGFy
ZSBwaHlzaWNhbGx5IGNvbnRpZ3VvdXMsIHRoZXkgbWF5IHN0aWxsDQo+ID4gPiArIMKgIMKgIMKg
IMKgIMKgIMKgIMKgKiBiZSBtYXBwZWQgaW4gYSBiYXRjaC4NCj4gPiA+ICsgwqAgwqAgwqAgwqAg
wqAgwqAgwqAqLw0KPiA+ID4gKyDCoCDCoCDCoCDCoCDCoCDCoCBpZiAocGFnZV9zaGlmdCA9PSBQ
QUdFX1NISUZUKQ0KPiA+ID4gKyDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBzaGlmdCAr
PSBnZXRfdm1hcF9iYXRjaF9vcmRlcihwYWdlcywgbnIgLSBpLCBpKTsNCj4gPiA+ICsgwqAgwqAg
wqAgwqAgwqAgwqAgZXJyID0gdm1hcF9yYW5nZV9ub2ZsdXNoKGFkZHIsIGFkZHIgKyAoMVVMIDw8
IHNoaWZ0KSwNCj4gPiA+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIHBhZ2VfdG9fcGh5cyhwYWdlc1tpXSksIHByb3QsDQo+ID4gPiAtIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHBhZ2Vf
c2hpZnQpOw0KPiA+ID4gKyDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCBzaGlmdCk7DQo+ID4gPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCBpZiAoZXJy
KQ0KPiA+ID4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgcmV0dXJuIGVycjsNCj4g
PiA+DQo+ID4gPiAtIMKgIMKgIMKgIMKgIMKgIMKgIGFkZHIgKz0gMVVMIDw8IHBhZ2Vfc2hpZnQ7
DQo+ID4gPiArIMKgIMKgIMKgIMKgIMKgIMKgIGFkZHIgKz0gMVVMIMKgPDwgc2hpZnQ7DQo+ID4g
PiArIMKgIMKgIMKgIMKgIMKgIMKgIGkgKz0gMVUgPDwgc2hpZnQ7DQo+ID4gPiDCoCDCoCDCoCB9
DQo+ID4gPg0KPiA+ID4gwqAgwqAgwqAgcmV0dXJuIDA7DQo+ID4gPg0KPiA+ID4gRG9lcyB0aGlz
IGxvb2sgY2xlYXJlcj8NCj4gPiA+DQpJIHRoaW5rIHNvLCBhdCBsZWFzdCB0aGUgcGxhY2U6DQoN
CjxzbmlwPg0KWyAgICAyLjk1OTAzMF0gT29wczogT29wczogMDAwMCBbIzY2XSBTTVAgTk9QVEkN
ClsgICAgMi45NjAwMDRdIENQVTogMCBVSUQ6IDAgUElEOiAwIENvbW06IHN3YXBwZXIvMCBOb3Qg
dGFpbnRlZCA2LjE4LjArICMyMjAgUFJFRU1QVChub25lKQ0KWyAgICAyLjk2MTc4MV0gSGFyZHdh
cmUgbmFtZTogUUVNVSBTdGFuZGFyZCBQQyAoaTQ0MEZYICsgUElJWCwgMTk5NiksIEJJT1MgMS4x
Ni4zLWRlYmlhbi0xLjE2LjMtMiAwNC8wMS8yMDE0DQpbICAgIDIuOTYzODcwXSBCVUc6IHVuYWJs
ZSB0byBoYW5kbGUgcGFnZSBmYXVsdCBmb3IgYWRkcmVzczogZmZmZmZmZmYzZmQ2ODExOA0KWyAg
ICAyLjk2NTM4M10gI1BGOiBzdXBlcnZpc29yIHJlYWQgYWNjZXNzIGluIGtlcm5lbCBtb2RlDQpb
ICAgIDIuOTY2NTMyXSAjUEY6IGVycm9yX2NvZGUoMHgwMDAwKSAtIG5vdC1wcmVzZW50IHBhZ2UN
ClsgICAgMi45Njc2ODJdIEJBRA0KPHNuaXA+DQoNCmJ1dCBpdCBpcyBicm9rZW4gZm9yIHN1cmU6
DQoNCmkgKz0gMVUgPDwgc2hpZnQgLSAiaSIgaXMgYW4gaW5kZXggaW4gdGhlIHBhZ2UgYXJyYXku
DQpGb3IgZXhhbXBsZSBpZiBvcmRlci0wIHlvdSBqdW1wIDQwOTYgaW5kaWNlcyBhaGVhZC4NCg0K
U2hvdWxkIGJlOiBpICs9IDFVIDw8IChzaGlmdCAtIFBBR0VfU0hJRlQpDQoNCnZtYXBfcGFnZV9y
YW5nZSgpIGRvZXMgZmx1c2hpbmcgYW5kIGl0IGhhcyBpbnN0cnVtZW50ZWQgS01TQU4gaW5zaWRl
Lg0KV2Ugc2hvdWxkIGZvbGxvdyBzYW1lIHNlbWFudGljLiBBbHNvIGl0IHVzZXMgaW9yZW1hcF9t
YXhfcGFnZV9zaGlmdCBhcw0KbWF4aW11bSBwYWdlIHNoaWZ0IHBvbGljeS4NCg0KLS0NClVsYWR6
aXNsYXUgUmV6a2kNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
