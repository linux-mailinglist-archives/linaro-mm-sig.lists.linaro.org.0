Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7769EAA990C
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 18:34:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9827A44B07
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 16:34:15 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id 2D8A244336
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 May 2025 16:34:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=TWqksJMn;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.54 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43ef83a6bfaso104465e9.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 05 May 2025 09:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746462841; x=1747067641; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cp9xG8IzZ6A+sCM3e//b/xF89Qt5DTbc6K0sQ70LgNM=;
        b=TWqksJMnLY3TWnMVHKET8yBUV9W2PvJy2r9v8uwHIhHmtuTg+xqE+IzAMqJUWiDcDl
         gBCAoXQwU8RTW6eqLEgXqkHKLUQcswCrwTji06rABIWdc5Kida8aocco3BAvmBjlea3z
         mFj7jYO08j4n0b7l70TxOEUvIH4CfE7OK3kl8mv3NnlbpN8761J1Ps8540ahluWNI56c
         FWGGBlzLiBHpvxXKd6VYH96J8dtv7QpTrk9QXrJyUb/EMs49fjdWXYcryQ8Gg4R4v2df
         qS6NwiYYSX1DbMTPNzrmMJ8HcPMRajs98Nr649DZPXJqSwhXsfSYCZLjggrJ5BYJrU/M
         YrlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746462841; x=1747067641;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cp9xG8IzZ6A+sCM3e//b/xF89Qt5DTbc6K0sQ70LgNM=;
        b=sR0Ys1nZT/ImbVTqpK4bpGkgcKgd4z3hdWJpvKKyA0cTFVZbOCRA4Jixyk5mvt/M0m
         s2zQ/CQmZbtOhUl1D39hLDrgvQ5pXwt683haIseE5k92e1hiv9Dqj6slMIWieCuG5fTk
         /b6OeaN0AHFtU6UHM+ZfuJ7iaTtE4fGQibv2dqvtRXyoLmCBA4lbNoE5KL4snCUIP0Vq
         yf6I5E8aRc7nSfq7Mo1wpcB4G6DHCVBJMUyzcuMC7gg0ODQm3MXeLVDrYTXFrIVsGZBR
         bHvYV4USs0tHjm4QmiPJzBhTuCdxRTpIG1lam7NvICORdZSuiLHIgmuxFjixPZyTZbTr
         gPgQ==
X-Forwarded-Encrypted: i=1; AJvYcCUtSnoFf2dIm8BR5/EmF5OVAWEPWTH3HetYu0zkUNrrvwOR2o0/KCDacs3B/k56ogpy2nBqJoFL1GSK00Tp@lists.linaro.org
X-Gm-Message-State: AOJu0Yw9NcvjA+dB3sIfsz3AMGkdvoIYhfQHoJ3V/TYtptzwRMbH9sGt
	UFfTnLeLxXqPkQu+aMP+qghAOHhl9pWbYO5ExbWVhh8TNdIdALgDx8vobuMmQEsJHyyr7TpyAdq
	NOdpTaU8ms2EV9ULvMdmIFdrwlbbqUZ+3XYIE
X-Gm-Gg: ASbGncsBGWy6IBR0Ugf9TWNYi7gRVnHg5PqY+LJXbiyEUug2kutWSO7itrP9HsWLEqE
	ZpNuovNMV9lTobFEowK2uVDpiF2Bdt5/fkkPoIBCIDB4a3ZgOwdZALbd5KXnzRdbmukPSmp+DYp
	8+3LGqkxCPrSUlhOup+a8D
X-Google-Smtp-Source: AGHT+IGQyGO5uVSmpnPnkE3FDZ4KT+CnyY7gWk8P1H5yWIU1LA4t6+ZiezZ9eO866m7rRnEE4b46YYgj28ToiihwpHE=
X-Received: by 2002:a05:600c:3b82:b0:439:9434:1b6c with SMTP id
 5b1f17b1804b1-441cf9b141dmr171795e9.3.1746462840937; Mon, 05 May 2025
 09:34:00 -0700 (PDT)
MIME-Version: 1.0
References: <20250504224149.1033867-1-tjmercier@google.com>
 <20250504224149.1033867-3-tjmercier@google.com> <26ca8ddf-0d78-462f-a47d-a1128b2e058f@amd.com>
In-Reply-To: <26ca8ddf-0d78-462f-a47d-a1128b2e058f@amd.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 5 May 2025 09:33:48 -0700
X-Gm-Features: ATxdqUHRGgaUPb2TsqMguMaRajHe7gmAlhGQ8JWKvVw_IFJV369f1ssTaaa65I4
Message-ID: <CABdmKX2iNk22h-KxUr4yvZO80yeRRjMfoC7yjiZ-aR_f1k402g@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2D8A244336
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.54:from];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,lwn.net,fomichev.me,fb.com];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.54:from];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: WLE2TXNUYHAF4D23YBRHS6GTEZD2U3P3
X-Message-ID-Hash: WLE2TXNUYHAF4D23YBRHS6GTEZD2U3P3
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, skhan@linuxfoundation.org, song@kernel.org, alexei.starovoitov@gmail.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, corbet@lwn.net, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/6] bpf: Add dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WLE2TXNUYHAF4D23YBRHS6GTEZD2U3P3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXkgNSwgMjAyNSBhdCA0OjE34oCvQU0gQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gT24gNS81LzI1IDAwOjQxLCBULkouIE1l
cmNpZXIgd3JvdGU6DQo+ID4gVGhlIGRtYWJ1ZiBpdGVyYXRvciB0cmF2ZXJzZXMgdGhlIGxpc3Qg
b2YgYWxsIERNQSBidWZmZXJzLg0KPiA+DQo+ID4gRE1BIGJ1ZmZlcnMgYXJlIHJlZmNvdW50ZWQg
dGhyb3VnaCB0aGVpciBhc3NvY2lhdGVkIHN0cnVjdCBmaWxlLiBBDQo+ID4gcmVmZXJlbmNlIGlz
IHRha2VuIG9uIGVhY2ggYnVmZmVyIGFzIHRoZSBsaXN0IGlzIGl0ZXJhdGVkIHRvIGVuc3VyZSBl
YWNoDQo+ID4gYnVmZmVyIHBlcnNpc3RzIGZvciB0aGUgZHVyYXRpb24gb2YgdGhlIGJwZiBwcm9n
cmFtIGV4ZWN1dGlvbiB3aXRob3V0DQo+ID4gaG9sZGluZyB0aGUgbGlzdCBtdXRleC4NCj4gPg0K
PiA+IFNpZ25lZC1vZmYtYnk6IFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQo+
ID4gLS0tDQo+ID4gIGtlcm5lbC9icGYvTWFrZWZpbGUgICAgICB8ICAgMyArDQo+ID4gIGtlcm5l
bC9icGYvZG1hYnVmX2l0ZXIuYyB8IDEzNCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysNCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMzcgaW5zZXJ0aW9ucygrKQ0KPiA+ICBj
cmVhdGUgbW9kZSAxMDA2NDQga2VybmVsL2JwZi9kbWFidWZfaXRlci5jDQo+ID4NCj4gPiBkaWZm
IC0tZ2l0IGEva2VybmVsL2JwZi9NYWtlZmlsZSBiL2tlcm5lbC9icGYvTWFrZWZpbGUNCj4gPiBp
bmRleCA3MDUwMmYwMzhiOTIuLjNhMzM1YzUwZTZlMyAxMDA2NDQNCj4gPiAtLS0gYS9rZXJuZWwv
YnBmL01ha2VmaWxlDQo+ID4gKysrIGIva2VybmVsL2JwZi9NYWtlZmlsZQ0KPiA+IEBAIC01Myw2
ICs1Myw5IEBAIG9iai0kKENPTkZJR19CUEZfU1lTQ0FMTCkgKz0gcmVsb19jb3JlLm8NCj4gPiAg
b2JqLSQoQ09ORklHX0JQRl9TWVNDQUxMKSArPSBidGZfaXRlci5vDQo+ID4gIG9iai0kKENPTkZJ
R19CUEZfU1lTQ0FMTCkgKz0gYnRmX3JlbG9jYXRlLm8NCj4gPiAgb2JqLSQoQ09ORklHX0JQRl9T
WVNDQUxMKSArPSBrbWVtX2NhY2hlX2l0ZXIubw0KPiA+ICtpZmVxICgkKENPTkZJR19ETUFfU0hB
UkVEX0JVRkZFUikseSkNCj4gPiArb2JqLSQoQ09ORklHX0JQRl9TWVNDQUxMKSArPSBkbWFidWZf
aXRlci5vDQo+ID4gK2VuZGlmDQo+ID4NCj4gPiAgQ0ZMQUdTX1JFTU9WRV9wZXJjcHVfZnJlZWxp
c3QubyA9ICQoQ0NfRkxBR1NfRlRSQUNFKQ0KPiA+ICBDRkxBR1NfUkVNT1ZFX2JwZl9scnVfbGlz
dC5vID0gJChDQ19GTEFHU19GVFJBQ0UpDQo+ID4gZGlmZiAtLWdpdCBhL2tlcm5lbC9icGYvZG1h
YnVmX2l0ZXIuYyBiL2tlcm5lbC9icGYvZG1hYnVmX2l0ZXIuYw0KPiA+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0DQo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi45Njg3NjJlMTFmNzMNCj4gPiAtLS0gL2Rl
di9udWxsDQo+ID4gKysrIGIva2VybmVsL2JwZi9kbWFidWZfaXRlci5jDQo+ID4gQEAgLTAsMCAr
MSwxMzQgQEANCj4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQ0K
PiA+ICsvKiBDb3B5cmlnaHQgKGMpIDIwMjUgR29vZ2xlIExMQyAqLw0KPiA+ICsjaW5jbHVkZSA8
bGludXgvYnBmLmg+DQo+ID4gKyNpbmNsdWRlIDxsaW51eC9idGZfaWRzLmg+DQo+ID4gKyNpbmNs
dWRlIDxsaW51eC9kbWEtYnVmLmg+DQo+ID4gKyNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4NCj4g
PiArI2luY2x1ZGUgPGxpbnV4L3NlcV9maWxlLmg+DQo+ID4gKw0KPiA+ICtCVEZfSURfTElTVF9T
SU5HTEUoYnBmX2RtYWJ1Zl9idGZfaWQsIHN0cnVjdCwgZG1hX2J1ZikNCj4gPiArREVGSU5FX0JQ
Rl9JVEVSX0ZVTkMoZG1hYnVmLCBzdHJ1Y3QgYnBmX2l0ZXJfbWV0YSAqbWV0YSwgc3RydWN0IGRt
YV9idWYgKmRtYWJ1ZikNCj4gPiArDQo+ID4gK3N0YXRpYyBzdHJ1Y3QgZG1hX2J1ZiAqZ2V0X25l
eHRfZG1hYnVmKHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQo+ID4gK3sNCj4gPiArICAgICBzdHJ1
Y3QgZG1hX2J1ZiAqcmV0ID0gTlVMTDsNCj4gPiArDQo+ID4gKyAgICAgLyoNCj4gPiArICAgICAg
KiBMb29rIGZvciB0aGUgZmlyc3QvbmV4dCBidWZmZXIgd2UgY2FuIG9idGFpbiBhIHJlZmVyZW5j
ZSB0by4NCj4gPiArICAgICAgKg0KPiA+ICsgICAgICAqIFRoZSBsaXN0IG11dGV4IGRvZXMgbm90
IHByb3RlY3QgYSBkbWFidWYncyByZWZjb3VudCwgc28gaXQgY2FuIGJlDQo+ID4gKyAgICAgICog
emVyb2VkIHdoaWxlIHdlIGFyZSBpdGVyYXRpbmcuIFdlIGNhbm5vdCBjYWxsIGdldF9kbWFfYnVm
KCkgc2luY2UgdGhlDQo+ID4gKyAgICAgICogY2FsbGVyIG9mIHRoaXMgcHJvZ3JhbSBtYXkgbm90
IGFscmVhZHkgb3duIGEgcmVmZXJlbmNlIHRvIHRoZSBidWZmZXIuDQo+ID4gKyAgICAgICovDQo+
ID4gKyAgICAgbXV0ZXhfbG9jaygmZG1hYnVmX2xpc3RfbXV0ZXgpOw0KPiA+ICsgICAgIGlmIChk
bWFidWYpIHsNCj4NCj4gVGhhdCBsb29rcyBsaWtlIHlvdSB0cnkgdG8gbWFuZ2xlIHRoZSBzdGFy
dCBhbmQgbmV4dCBmdW5jdGlvbmFsaXR5IGluIGp1c3Qgb25lIGZ1bmN0aW9uLg0KPg0KPiBJIHdv
dWxkIGp1c3QgaW5saW5lIHRoYXQgaW50byB0aGUgZG1hYnVmX2l0ZXJfc2VxX3N0YXJ0KCkgYW5k
IGRtYWJ1Zl9pdGVyX3NlcV9uZXh0KCkgZnVuY3Rpb25zLg0KDQpQcmltYXJpbHkgdGhpcyBpcyB0
byBzaGFyZSBiZXR3ZWVuIHRoZSBvcGVuIGNvZGVkIGl0ZXJhdG9yIChuZXh0DQpwYXRjaCkgYW5k
IHRoaXMgbm9ybWFsIGl0ZXJhdG9yIHNpbmNlIEkgZGlkbid0IHdhbnQgdG8gZHVwbGljYXRlIHRo
ZQ0Kc2FtZSBsaXN0IHRyYXZlcnNhbCBjb2RlIGFjcm9zcyBib3RoIG9mIHRoZW0uDQo+DQo+DQo+
ID4gKyAgICAgICAgICAgICBkbWFfYnVmX3B1dChkbWFidWYpOw0KPiA+ICsgICAgICAgICAgICAg
bGlzdF9mb3JfZWFjaF9lbnRyeV9jb250aW51ZShkbWFidWYsICZkbWFidWZfbGlzdCwgbGlzdF9u
b2RlKSB7DQo+DQo+IFRoYXQgeW91IGNhbiBwdXQgdGhlIERNQS1idWYgYW5kIHRoZW4gc3RpbGwg
dXNlcyBpdCBpbiBsaXN0X2Zvcl9lYWNoX2VudHJ5X2NvbnRpbnVlKCkgb25seSB3b3JrcyBiZWNh
dXNlIHRoZSBtdXRleCBpcyBsb2NrZWQgaW4gdGhlIGRlc3Ryb3kgcGF0aC4NCg0KWXVwLCB0aGlz
IHdhcyBkZWxpYmVyYXRlLg0KPg0KPg0KPiBJIHN0cm9uZ2x5IHN1Z2dlc3QgdG8ganVzdCBwdXQg
dGhvc2UgdHdvIGZ1bmN0aW9ucyBpbnRvIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgcmlnaHQg
bmV4dCB0byB0aGUgX19kbWFfYnVmX2RlYnVnZnNfbGlzdF9hZGQoKSBhbmQgX19kbWFfYnVmX2Rl
YnVnZnNfbGlzdF9kZWwoKSBmdW5jdGlvbnMuDQoNCkJ5IHR3byBmdW5jdGlvbnMsIHlvdSBtZWFu
IGEgZ2V0X2ZpcnN0X2RtYWJ1Zih2b2lkKSBhbmQgYQ0KZ2V0X25leHRfZG1hYnVmKHN0cnVjdCBk
bWFfYnVmKik/IFRvIG1ha2UgdGhlIGRtYV9idWZfcHV0KCkgY2FsbCBhDQpsaXR0bGUgbGVzcyBz
Y2FyeSBzaW5jZSBhbGwgdGhlIG11dGV4IG9wcyBhcmUgcmlnaHQgdGhlcmU/DQo+DQo+DQo+IEFw
YXJ0IGZyb20gdGhvc2Ugc3R5bGUgc3VnZ2VzdGlvbnMgbG9va3MgZ29vZCB0byBtZSBmcm9tIHRo
ZSB0ZWNobmljYWwgc2lkZSwgYnV0IEknbSBub3QgYW4gZXhwZXJ0IGZvciB0aGUgQlBGIHN0dWZm
Lg0KPg0KPiBSZWdhcmRzLA0KPiBDaHJpc3RpYW4uDQoNClRoYW5rcyBmb3IgeW91ciBjb21tZW50
cyBhbmQgcmV2aWV3cyENCg0KPiA+ICsgICAgICAgICAgICAgICAgICAgICBpZiAoZmlsZV9yZWZf
Z2V0KCZkbWFidWYtPmZpbGUtPmZfcmVmKSkgew0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHJldCA9IGRtYWJ1ZjsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBi
cmVhazsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgfQ0KPiA+ICsgICAgICAgICAgICAgfQ0K
PiA+ICsgICAgIH0gZWxzZSB7DQo+ID4gKyAgICAgICAgICAgICBsaXN0X2Zvcl9lYWNoX2VudHJ5
KGRtYWJ1ZiwgJmRtYWJ1Zl9saXN0LCBsaXN0X25vZGUpIHsNCj4gPiArICAgICAgICAgICAgICAg
ICAgICAgaWYgKGZpbGVfcmVmX2dldCgmZG1hYnVmLT5maWxlLT5mX3JlZikpIHsNCj4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICByZXQgPSBkbWFidWY7DQo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgYnJlYWs7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIH0NCj4g
PiArICAgICAgICAgICAgIH0NCj4gPiArICAgICB9DQo+ID4gKyAgICAgbXV0ZXhfdW5sb2NrKCZk
bWFidWZfbGlzdF9tdXRleCk7DQo+ID4gKyAgICAgcmV0dXJuIHJldDsNCj4gPiArfQ0KPiA+ICsN
Cj4gPiArc3RhdGljIHZvaWQgKmRtYWJ1Zl9pdGVyX3NlcV9zdGFydChzdHJ1Y3Qgc2VxX2ZpbGUg
KnNlcSwgbG9mZl90ICpwb3MpDQo+ID4gK3sNCj4gPiArICAgICBpZiAoKnBvcykNCj4gPiArICAg
ICAgICAgICAgIHJldHVybiBOVUxMOw0KPiA+ICsNCj4gPiArICAgICByZXR1cm4gZ2V0X25leHRf
ZG1hYnVmKE5VTEwpOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICtzdGF0aWMgdm9pZCAqZG1hYnVmX2l0
ZXJfc2VxX25leHQoc3RydWN0IHNlcV9maWxlICpzZXEsIHZvaWQgKnYsIGxvZmZfdCAqcG9zKQ0K
PiA+ICt7DQo+ID4gKyAgICAgc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiA9IHY7DQo+ID4gKw0KPiA+
ICsgICAgICsrKnBvczsNCj4gPiArDQo+ID4gKyAgICAgcmV0dXJuIGdldF9uZXh0X2RtYWJ1Zihk
bWFidWYpOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICtzdHJ1Y3QgYnBmX2l0ZXJfX2RtYWJ1ZiB7DQo+
ID4gKyAgICAgX19icGZfbWRfcHRyKHN0cnVjdCBicGZfaXRlcl9tZXRhICosIG1ldGEpOw0KPiA+
ICsgICAgIF9fYnBmX21kX3B0cihzdHJ1Y3QgZG1hX2J1ZiAqLCBkbWFidWYpOw0KPiA+ICt9Ow0K
PiA+ICsNCj4gPiArc3RhdGljIGludCBfX2RtYWJ1Zl9zZXFfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUg
KnNlcSwgdm9pZCAqdiwgYm9vbCBpbl9zdG9wKQ0KPiA+ICt7DQo+ID4gKyAgICAgc3RydWN0IGJw
Zl9pdGVyX21ldGEgbWV0YSA9IHsNCj4gPiArICAgICAgICAgICAgIC5zZXEgPSBzZXEsDQo+ID4g
KyAgICAgfTsNCj4gPiArICAgICBzdHJ1Y3QgYnBmX2l0ZXJfX2RtYWJ1ZiBjdHggPSB7DQo+ID4g
KyAgICAgICAgICAgICAubWV0YSA9ICZtZXRhLA0KPiA+ICsgICAgICAgICAgICAgLmRtYWJ1ZiA9
IHYsDQo+ID4gKyAgICAgfTsNCj4gPiArICAgICBzdHJ1Y3QgYnBmX3Byb2cgKnByb2cgPSBicGZf
aXRlcl9nZXRfaW5mbygmbWV0YSwgaW5fc3RvcCk7DQo+ID4gKw0KPiA+ICsgICAgIGlmIChwcm9n
KQ0KPiA+ICsgICAgICAgICAgICAgcmV0dXJuIGJwZl9pdGVyX3J1bl9wcm9nKHByb2csICZjdHgp
Ow0KPiA+ICsNCj4gPiArICAgICByZXR1cm4gMDsNCj4gPiArfQ0KPiA+ICsNCj4gPiArc3RhdGlj
IGludCBkbWFidWZfaXRlcl9zZXFfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKnNlcSwgdm9pZCAqdikN
Cj4gPiArew0KPiA+ICsgICAgIHJldHVybiBfX2RtYWJ1Zl9zZXFfc2hvdyhzZXEsIHYsIGZhbHNl
KTsNCj4gPiArfQ0KPiA+ICsNCj4gPiArc3RhdGljIHZvaWQgZG1hYnVmX2l0ZXJfc2VxX3N0b3Ao
c3RydWN0IHNlcV9maWxlICpzZXEsIHZvaWQgKnYpDQo+ID4gK3sNCj4gPiArICAgICBzdHJ1Y3Qg
ZG1hX2J1ZiAqZG1hYnVmID0gdjsNCj4gPiArDQo+ID4gKyAgICAgaWYgKGRtYWJ1ZikNCj4gPiAr
ICAgICAgICAgICAgIGRtYV9idWZfcHV0KGRtYWJ1Zik7DQo+ID4gK30NCj4gPiArDQo+ID4gK3N0
YXRpYyBjb25zdCBzdHJ1Y3Qgc2VxX29wZXJhdGlvbnMgZG1hYnVmX2l0ZXJfc2VxX29wcyA9IHsN
Cj4gPiArICAgICAuc3RhcnQgID0gZG1hYnVmX2l0ZXJfc2VxX3N0YXJ0LA0KPiA+ICsgICAgIC5u
ZXh0ICAgPSBkbWFidWZfaXRlcl9zZXFfbmV4dCwNCj4gPiArICAgICAuc3RvcCAgID0gZG1hYnVm
X2l0ZXJfc2VxX3N0b3AsDQo+ID4gKyAgICAgLnNob3cgICA9IGRtYWJ1Zl9pdGVyX3NlcV9zaG93
LA0KPiA+ICt9Ow0KPiA+ICsNCj4gPiArc3RhdGljIHZvaWQgYnBmX2l0ZXJfZG1hYnVmX3Nob3df
ZmRpbmZvKGNvbnN0IHN0cnVjdCBicGZfaXRlcl9hdXhfaW5mbyAqYXV4LA0KPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IHNlcV9maWxlICpzZXEpDQo+ID4g
K3sNCj4gPiArICAgICBzZXFfcHV0cyhzZXEsICJkbWFidWYgaXRlclxuIik7DQo+ID4gK30NCj4g
PiArDQo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgYnBmX2l0ZXJfc2VxX2luZm8gZG1hYnVmX2l0
ZXJfc2VxX2luZm8gPSB7DQo+ID4gKyAgICAgLnNlcV9vcHMgICAgICAgICAgICAgICAgPSAmZG1h
YnVmX2l0ZXJfc2VxX29wcywNCj4gPiArICAgICAuaW5pdF9zZXFfcHJpdmF0ZSAgICAgICA9IE5V
TEwsDQo+ID4gKyAgICAgLmZpbmlfc2VxX3ByaXZhdGUgICAgICAgPSBOVUxMLA0KPiA+ICsgICAg
IC5zZXFfcHJpdl9zaXplICAgICAgICAgID0gMCwNCj4gPiArfTsNCj4gPiArDQo+ID4gK3N0YXRp
YyBzdHJ1Y3QgYnBmX2l0ZXJfcmVnIGJwZl9kbWFidWZfcmVnX2luZm8gPSB7DQo+ID4gKyAgICAg
LnRhcmdldCAgICAgICAgICAgICAgICAgPSAiZG1hYnVmIiwNCj4gPiArICAgICAuZmVhdHVyZSAg
ICAgICAgICAgICAgICA9IEJQRl9JVEVSX1JFU0NIRUQsDQo+ID4gKyAgICAgLnNob3dfZmRpbmZv
ICAgICAgICAgICAgPSBicGZfaXRlcl9kbWFidWZfc2hvd19mZGluZm8sDQo+ID4gKyAgICAgLmN0
eF9hcmdfaW5mb19zaXplICAgICAgPSAxLA0KPiA+ICsgICAgIC5jdHhfYXJnX2luZm8gICAgICAg
ICAgID0gew0KPiA+ICsgICAgICAgICAgICAgeyBvZmZzZXRvZihzdHJ1Y3QgYnBmX2l0ZXJfX2Rt
YWJ1ZiwgZG1hYnVmKSwNCj4gPiArICAgICAgICAgICAgICAgUFRSX1RPX0JURl9JRF9PUl9OVUxM
IH0sDQo+ID4gKyAgICAgfSwNCj4gPiArICAgICAuc2VxX2luZm8gICAgICAgICAgICAgICA9ICZk
bWFidWZfaXRlcl9zZXFfaW5mbywNCj4gPiArfTsNCj4gPiArDQo+ID4gK3N0YXRpYyBpbnQgX19p
bml0IGRtYWJ1Zl9pdGVyX2luaXQodm9pZCkNCj4gPiArew0KPiA+ICsgICAgIGJwZl9kbWFidWZf
cmVnX2luZm8uY3R4X2FyZ19pbmZvWzBdLmJ0Zl9pZCA9IGJwZl9kbWFidWZfYnRmX2lkWzBdOw0K
PiA+ICsgICAgIHJldHVybiBicGZfaXRlcl9yZWdfdGFyZ2V0KCZicGZfZG1hYnVmX3JlZ19pbmZv
KTsNCj4gPiArfQ0KPiA+ICsNCj4gPiArbGF0ZV9pbml0Y2FsbChkbWFidWZfaXRlcl9pbml0KTsN
Cj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
