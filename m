Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 201AEA90EF6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Apr 2025 00:52:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 10BA3441DD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Apr 2025 22:52:08 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id C17AE441DD
	for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Apr 2025 22:51:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=thA5hbtv;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.53 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43d5f10e1aaso25685e9.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Apr 2025 15:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744843911; x=1745448711; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xgiFznxyXwNZAjYFXBtqbEchRNoGqLP4Udb3wMlePFc=;
        b=thA5hbtvSMmjrAQHCIpPUX0KAcIawsQvlxqdPIbo0VkMku4dOjtMzE0aIZP0otCoBk
         oL1nW2U3ZPW6wqHsOW93d79NvfHLU95j7hBtB6z+YH4skix/fRyxlsJIzeEQ6mCZRNU5
         QXI5Qh1AupiWcQZZGBGPj6u8KoKLg69mKBMIJdpkhGXY/pOHE107m04i/KgcbB9y6WFK
         AL/YMgi/SHY9paK7098qCr/iPdc9HVbORkg8NEYeshjY5pBBH8ASYWNuNdECNQih6C1F
         7w35zqqZiUVSF2EhZGusBBqcbEehQbIgm7Dlq3iqQeQsNe2Mxe4kt38aE53nSzjoaBmS
         MBKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744843911; x=1745448711;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xgiFznxyXwNZAjYFXBtqbEchRNoGqLP4Udb3wMlePFc=;
        b=Z8rCa+jFcEEFniOLmchomS9dajq5rL3CgkYJygqkB2UTyT8zCAcl+HGFdoSD69w5Lw
         XhXSGiHkYD7Bi8wpWqZWaSYWuQTOyfc5w5J/8mmyd5Gvl5YDmhpxjbS43wglP5R16sjC
         a/RwKjJo0Uzyn9it5WwBQTunJSSJ41aweMYz2XHgLXlqIGgihrrxrc1VPHbXEsgz6LjQ
         kRdoS9ZRkdP4ftSah9OiIRPLQyCWknzgWMMm2i5ksoR9i+QEH/MokB2beqPRkua05UjS
         7LO6uE4G3AGDF7WPd/V/+OUDSo0fo5tHEpkQaF2HJ9Bhf3MlXK+hhUHAsXp1qXIzwjj6
         rs+A==
X-Forwarded-Encrypted: i=1; AJvYcCUapIl6z0urbX/igXENcjJfrsZ6/aa17cd+rjpkg0s1YI9VO6iHEsgJ6Z5fs7oNy1bMUp7jPncZrUPibtcf@lists.linaro.org
X-Gm-Message-State: AOJu0Yyn4u2VizBnO30+SYVg9CsCdyPm1f6tviopQ8kx483kDpN2jnn2
	Ior6bEReIR/zB0pDyL0FU+r8liJtRoZFsTEFIpdOGjShYkVOKk+X/v9PjU/5Zy21ikYhAyoGBST
	OsBX/8r0oiFWM7HG3aLPVC2T3l0IxQ+CuPxRc
X-Gm-Gg: ASbGnctCmRdhlHc0C6v8Uz+tZ1G082xuWB+ZqO3r5I/AiY0mqprO2G6hJFYjGccmujt
	Y+qu81v97a6QH/AI3zj/DhQwLvRqYkoVn3IW1mmsF6e9DaBn2uCumJgmzi8wH/lDeAkZYSxogfH
	j3xDT/ZSjZHfIAVPZpDG72SmxYZrqyyqZeNKcsSGWeSlEzXQIP7pwTsIRaIc4Nkw==
X-Google-Smtp-Source: AGHT+IHXWGWfGEo9AOua5ZBzOd3bdHf6i/F7EC52V5Mq1yV8M20CMUTcOJBN7M+4okB7URR+SAXHkZhutXlJ3SZFaXo=
X-Received: by 2002:a05:600c:3509:b0:43b:b106:bb1c with SMTP id
 5b1f17b1804b1-44062a3ef31mr505705e9.0.1744843910585; Wed, 16 Apr 2025
 15:51:50 -0700 (PDT)
MIME-Version: 1.0
References: <20250414225227.3642618-1-tjmercier@google.com>
 <20250414225227.3642618-3-tjmercier@google.com> <CAPhsuW6sgGvjeAcciskmGO7r6+eeDo_KVS3y7C8fCDPptzCebw@mail.gmail.com>
In-Reply-To: <CAPhsuW6sgGvjeAcciskmGO7r6+eeDo_KVS3y7C8fCDPptzCebw@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 16 Apr 2025 15:51:38 -0700
X-Gm-Features: ATxdqUF2F5Lgo5RIa4ABADC_SqcPejYG0M9lcwCAu9guCcJWCuAb8fIDqfWHFPg
Message-ID: <CABdmKX0bgxZFYuvQvQPK0AnAHEE3FebY_eA1+Vo=ScH1MbfzMg@mail.gmail.com>
To: Song Liu <song@kernel.org>
X-Rspamd-Queue-Id: C17AE441DD
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[209.85.128.53:from];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,lwn.net,gmail.com,fomichev.me,fb.com];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[25];
	DNSWL_BLOCKED(0.00)[209.85.128.53:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DWL_DNSWL_BLOCKED(0.00)[google.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.53:from];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: O5M7WOQ7BIU6HOJFOYPZ6EZUTIPCHBXD
X-Message-ID-Hash: O5M7WOQ7BIU6HOJFOYPZ6EZUTIPCHBXD
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, skhan@linuxfoundation.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, corbet@lwn.net, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/4] bpf: Add dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/O5M7WOQ7BIU6HOJFOYPZ6EZUTIPCHBXD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBBcHIgMTYsIDIwMjUgYXQgMzowMuKAr1BNIFNvbmcgTGl1IDxzb25nQGtlcm5lbC5v
cmc+IHdyb3RlOg0KPg0KPiBPbiBNb24sIEFwciAxNCwgMjAyNSBhdCAzOjUz4oCvUE0gVC5KLiBN
ZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+IFsuLi5dDQo+ID4gKw0KPiA+
ICtCVEZfSURfTElTVF9HTE9CQUxfU0lOR0xFKGJwZl9kbWFidWZfYnRmX2lkLCBzdHJ1Y3QsIGRt
YV9idWYpDQo+ID4gK0RFRklORV9CUEZfSVRFUl9GVU5DKGRtYWJ1Ziwgc3RydWN0IGJwZl9pdGVy
X21ldGEgKm1ldGEsIHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQo+ID4gKw0KPiA+ICtzdGF0aWMg
dm9pZCAqZG1hYnVmX2l0ZXJfc2VxX3N0YXJ0KHN0cnVjdCBzZXFfZmlsZSAqc2VxLCBsb2ZmX3Qg
KnBvcykNCj4gPiArew0KPiA+ICsgICAgICAgc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwgKnJldCA9
IE5VTEw7DQo+ID4gKw0KPiA+ICsgICAgICAgaWYgKCpwb3MpIHsNCj4gPiArICAgICAgICAgICAg
ICAgKnBvcyA9IDA7DQo+ID4gKyAgICAgICAgICAgICAgIHJldHVybiBOVUxMOw0KPiA+ICsgICAg
ICAgfQ0KPiA+ICsgICAgICAgLyogTG9vayBmb3IgdGhlIGZpcnN0IGJ1ZmZlciB3ZSBjYW4gb2J0
YWluIGEgcmVmZXJlbmNlIHRvLg0KPiA+ICsgICAgICAgICogVGhlIGxpc3QgbXV0ZXggZG9lcyBu
b3QgcHJvdGVjdCBhIGRtYWJ1ZidzIHJlZmNvdW50LCBzbyBpdCBjYW4gYmUNCj4gPiArICAgICAg
ICAqIHplcm9lZCB3aGlsZSB3ZSBhcmUgaXRlcmF0aW5nLiBUaGVyZWZvcmUgd2UgY2Fubm90IGNh
bGwgZ2V0X2RtYV9idWYoKQ0KPiA+ICsgICAgICAgICogc2luY2UgdGhlIGNhbGxlciBvZiB0aGlz
IHByb2dyYW0gbWF5IG5vdCBhbHJlYWR5IG93biBhIHJlZmVyZW5jZSB0bw0KPiA+ICsgICAgICAg
ICogdGhlIGJ1ZmZlci4NCj4gPiArICAgICAgICAqLw0KPiA+ICsgICAgICAgbXV0ZXhfbG9jaygm
ZG1hYnVmX2RlYnVnZnNfbGlzdF9tdXRleCk7DQo+ID4gKyAgICAgICBsaXN0X2Zvcl9lYWNoX2Vu
dHJ5KGRtYWJ1ZiwgJmRtYWJ1Zl9kZWJ1Z2ZzX2xpc3QsIGxpc3Rfbm9kZSkgew0KPiA+ICsgICAg
ICAgICAgICAgICBpZiAoZmlsZV9yZWZfZ2V0KCZkbWFidWYtPmZpbGUtPmZfcmVmKSkgew0KPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgIHJldCA9IGRtYWJ1ZjsNCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICBicmVhazsNCj4gPiArICAgICAgICAgICAgICAgfQ0KPiA+ICsgICAgICAgfQ0K
PiA+ICsgICAgICAgbXV0ZXhfdW5sb2NrKCZkbWFidWZfZGVidWdmc19saXN0X211dGV4KTsNCj4N
Cj4gSUlVQywgdGhlIGl0ZXJhdG9yIHNpbXBseSB0cmF2ZXJzZXMgZWxlbWVudHMgaW4gYSBsaW5r
ZWQgbGlzdC4gSSBmZWVsIGl0IGlzDQo+IGFuIG92ZXJraWxsIHRvIGltcGxlbWVudCBhIG5ldyBC
UEYgaXRlcmF0b3IgZm9yIGl0Lg0KDQpMaWtlIG90aGVyIEJQRiBpdGVyYXRvcnMgc3VjaCBhcyBr
bWVtX2NhY2hlX2l0ZXIgb3IgdGFza19pdGVyLg0KQ2dyb3VwX2l0ZXIgaXRlcmF0ZXMgdHJlZXMg
aW5zdGVhZCBvZiBsaXN0cy4gVGhpcyBpcyBpdGVyYXRpbmcgb3Zlcg0Ka2VybmVsIG9iamVjdHMg
anVzdCBsaWtlIHRoZSBkb2NzIHNheSwgIkEgQlBGIGl0ZXJhdG9yIGlzIGEgdHlwZSBvZg0KQlBG
IHByb2dyYW0gdGhhdCBhbGxvd3MgdXNlcnMgdG8gaXRlcmF0ZSBvdmVyIHNwZWNpZmljIHR5cGVz
IG9mIGtlcm5lbA0Kb2JqZWN0cyIuIE1vcmUgY29tcGxpY2F0ZWQgaXRlcmF0aW9uIHNob3VsZCBu
b3QgYmUgYSByZXF1aXJlbWVudCBoZXJlLg0KDQo+IE1heWJlIHdlIHNpbXBseQ0KPiB1c2UgZGVi
dWdnaW5nIHRvb2xzIGxpa2UgY3Jhc2ggb3IgZHJnbiBmb3IgdGhpcz8gVGhlIGFjY2VzcyB3aXRo
DQo+IHRoZXNlIHRvb2xzIHdpbGwgbm90IGJlIHByb3RlY3RlZCBieSB0aGUgbXV0ZXguIEJ1dCBm
cm9tIG15IHBlcnNvbmFsDQo+IGV4cGVyaWVuY2UsIHRoaXMgaXMgbm90IGEgYmlnIGlzc3VlIGZv
ciB1c2VyIHNwYWNlIGRlYnVnZ2luZyB0b29scy4NCg0KZHJnbiBpcyAqd2F5KiB0b28gc2xvdywg
YW5kIGV2ZW4gaWYgaXQgd2VyZW4ndCB0aGUgZGVwZW5kZW5jaWVzIGZvcg0KcnVubmluZyBpdCBh
cmVuJ3QgYXZhaWxhYmxlLiBjcmFzaCBuZWVkcyBkZWJ1ZyBzeW1ib2xzIHdoaWNoIGFsc28NCmFy
ZW4ndCBhdmFpbGFibGUgb24gdXNlciBidWlsZHMuIFRoaXMgaXMgbm90IGp1c3QgZm9yIG1hbnVh
bA0KZGVidWdnaW5nLCBpdCdzIGZvciByZXBvcnRpbmcgbWVtb3J5IHVzZSBpbiBwcm9kdWN0aW9u
LiBPciBhbnl0aGluZw0KZWxzZSBzb21lb25lIG1pZ2h0IGNhcmUgdG8gZXh0cmFjdCBsaWtlIGF0
dGFjaG1lbnQgaW5mbyBvciByZWZjb3VudHMuDQoNCj4gVGhhbmtzLA0KPiBTb25nDQo+DQo+DQo+
ID4gKw0KPiA+ICsgICAgICAgcmV0dXJuIHJldDsNCj4gPiArfQ0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
