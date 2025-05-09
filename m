Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 07908AB1FE6
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 10 May 2025 00:28:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 19E6045F73
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 May 2025 22:28:23 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by lists.linaro.org (Postfix) with ESMTPS id 93C7641111
	for <linaro-mm-sig@lists.linaro.org>; Fri,  9 May 2025 22:28:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=zpUDjF0Q;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.52 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43d5f10e1aaso18805e9.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 09 May 2025 15:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746829689; x=1747434489; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Dwe+AkRWKyTQFcGk+FB1loDELsepTcogcqqbMFr0lI=;
        b=zpUDjF0Q2f0SFnNehODFK7l+HmYHiR0xwXBq7/ohHAVG8PN/+tdMpekXCsl5s2upYd
         yljqN7hpBtKvSpE8ozpVhvYW1BGJiUEBhd3nquHjRtO4R7wL5BflRFWdIMexd6hbrY1R
         bKXXIbNKKOWFozpe4+gOtTv7gfAuaSSr4FpDYKlaWBxfCOOt4Dt+Sx/Abn9HYnjFkGbY
         wfGmT8HY3ZxBVck4IlQefqfhahs8y03zBRmEACnTTSCr4Am6nO5+kel3DPGB0u9VZeui
         4t116D2ZcWzohSO6cJIi/46+4nx75hjmuZ5xFj4/mkAJKJBY5YDF5qNR/nqu+ZAKqrKy
         Ky2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746829689; x=1747434489;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Dwe+AkRWKyTQFcGk+FB1loDELsepTcogcqqbMFr0lI=;
        b=JtZg4hvGxj9i33yIf3LEWSXR4ik77PgR74a2FwGCFGtX9zjIK0jOUQQNrz0NqRAzFu
         1TroEL5CBfo9Cf62rEmAQdLdNI5uIDOQYdsWNh4/to24mp6AzlcbBOXnRSoe49RRsiGd
         MuZjL6PdjrVbqcvvKLU6y4WrwhuB5OdGLlxFMCs1J6NpD/5BrmWGJLqtXQv1lt0spnUL
         U59Y9OKuh6eR16m+mUmdue7Vzo2uXeCGCRUveOyqns1ahnpMJpleZgSE8zPKhMtKuimi
         bMzA/buKXcXuiZ1g+gI7hAQK/GKPFc9bph6tcN/ECgSWZd6x6kZb42g7KX3Gc+OH8UVR
         oj6w==
X-Forwarded-Encrypted: i=1; AJvYcCV9SJSmSAspx13/3Q9hvIPsQiOxwNCW2xECgNuWVH4PzgNFWTbGhweV1aIbOEjofJHf/3X3zWIz4n1ozavi@lists.linaro.org
X-Gm-Message-State: AOJu0Yz/gQ+J/WJ8m4dKII6Q2a5tCDnj5RskUDRPlPusaUE/r7Sw72rn
	ATV15pIO4rGE94HH5IBShQNW+ZV2mmihkL3hgnmanANfUgBR2/cZ/n2Ppj83Nsu2X1hSdRglVsc
	a/dq8I3Mbd1bIzaLAfAv2pIR4RgtA8jqjPlIT
X-Gm-Gg: ASbGnctP3aSBHNfaH8Vm0/lTfVBM0xw8w1gV5A2mztgbhYDKl3+arcufe6R4eKrAV8m
	PSt20wORKycvM9TOM9d3MH5/7saTY3cVRTphHoXEL18dCLT0gDRY6UEPgbqcWfQAe1IG+yqIrS4
	NYOuAd7efPVi6RW5tq6BK8UtppjXF1q+A=
X-Google-Smtp-Source: AGHT+IGvqHCr2YbTyc+Q5mGzfoBCTKlc5wlIEM2vVFXqFenxVP+WaJU85XX6Sq5GSXEM+agSTCbYVlJfJ7nbfIdFhI8=
X-Received: by 2002:a05:600c:5009:b0:43d:5b3a:18cc with SMTP id
 5b1f17b1804b1-442de0efd25mr426825e9.2.1746829689429; Fri, 09 May 2025
 15:28:09 -0700 (PDT)
MIME-Version: 1.0
References: <20250508182025.2961555-1-tjmercier@google.com>
 <20250508182025.2961555-6-tjmercier@google.com> <CAPhsuW5WOmyfPqBc_Hn7ApGWP_2uz_cJwyaDWF_VwiHJu9s_1A@mail.gmail.com>
 <CABdmKX2h5cGjNbJshGkQ+2XJ7eOnM+VfbmVr5Pj5c0qfxQA-qg@mail.gmail.com> <CAPhsuW7BM=X06Tr+HURsCbD8LwAO=Fdu+ZfKDy6RNK=UNNC1Rg@mail.gmail.com>
In-Reply-To: <CAPhsuW7BM=X06Tr+HURsCbD8LwAO=Fdu+ZfKDy6RNK=UNNC1Rg@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 9 May 2025 15:27:54 -0700
X-Gm-Features: AX0GCFuz9iFkCIfsshnA0MUw61-2gqEtE-ai4BVujTpqsH3eB8SQA_jIOEXe8bw
Message-ID: <CABdmKX3LMJLTZN8-x8jFAM8p58pg-6P5-B=mHBf98_uAVtxxwQ@mail.gmail.com>
To: Song Liu <song@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 93C7641111
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.52:from];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DNSWL_BLOCKED(0.00)[209.85.128.52:from];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,fomichev.me,fb.com];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DWL_DNSWL_NONE(0.00)[google.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: NHGL4YJOG3IUK2D3DRVVKL5C3PS33STN
X-Message-ID-Hash: NHGL4YJOG3IUK2D3DRVVKL5C3PS33STN
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, skhan@linuxfoundation.org, alexei.starovoitov@gmail.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH bpf-next v4 5/5] selftests/bpf: Add test for open coded dmabuf_iter
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NHGL4YJOG3IUK2D3DRVVKL5C3PS33STN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBNYXkgOSwgMjAyNSBhdCAyOjU44oCvUE0gU29uZyBMaXUgPHNvbmdAa2VybmVsLm9y
Zz4gd3JvdGU6DQo+DQo+IE9uIEZyaSwgTWF5IDksIDIwMjUgYXQgMjo0M+KAr1BNIFQuSi4gTWVy
Y2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+IHdyb3RlOg0KPiA+DQo+IFsuLi5dDQo+ID4gPg0K
PiA+ID4gUGVyc29uYWxseSwgSSB3b3VsZCBwcmVmZXIgd2UganVzdCBtZXJnZSBhbGwgdGhlIGxv
Z2ljIG9mDQo+ID4gPiBjcmVhdGVfdWRtYWJ1ZigpIGFuZCBjcmVhdGVfc3lzX2hlYXBfZG1hYnVm
KCkNCj4gPiA+IGludG8gY3JlYXRlX3Rlc3RfYnVmZmVycygpLg0KPiA+DQo+ID4gVGhhdCdzIGEg
bG90IG9mIGRpZmZlcmVudCBzdHVmZiB0byBwdXQgaW4gb25lIHBsYWNlLiBIb3cgYWJvdXQNCj4g
PiByZXR1cm5pbmcgZmlsZSBkZXNjcmlwdG9ycyBmcm9tIHRoZSBidWZmZXIgY3JlYXRlIGZ1bmN0
aW9ucyB3aGlsZQ0KPiA+IGhhdmluZyB0aGVtIGNsZWFuIHVwIGFmdGVyIHRoZW1zZWx2ZXM6DQo+
DQo+IEkgZG8gbGlrZSB0aGlzIHZlcnNpb24gYmV0dGVyLiBTb21lIG5pdHBpY2tzIHRob3VnaC4N
Cj4NCj4gPg0KPiA+IC1zdGF0aWMgaW50IG1lbWZkLCB1ZG1hYnVmOw0KPiA+ICtzdGF0aWMgaW50
IHVkbWFidWY7DQo+DQo+IEFib3V0IHRoaXMsIGFuZCAuLi4NCj4NCj4gPiAgc3RhdGljIGNvbnN0
IGNoYXIgdWRtYWJ1Zl90ZXN0X2J1ZmZlcl9uYW1lW0RNQV9CVUZfTkFNRV9MRU5dID0NCj4gPiAi
dWRtYWJ1Zl90ZXN0X2J1ZmZlcl9mb3JfaXRlciI7DQo+ID4gIHN0YXRpYyBzaXplX3QgdWRtYWJ1
Zl90ZXN0X2J1ZmZlcl9zaXplOw0KPiA+ICBzdGF0aWMgaW50IHN5c2hlYXBfZG1hYnVmOw0KPiA+
ICBzdGF0aWMgY29uc3QgY2hhciBzeXNoZWFwX3Rlc3RfYnVmZmVyX25hbWVbRE1BX0JVRl9OQU1F
X0xFTl0gPQ0KPiA+ICJzeXNoZWFwX3Rlc3RfYnVmZmVyX2Zvcl9pdGVyIjsNCj4gPiAgc3RhdGlj
IHNpemVfdCBzeXNoZWFwX3Rlc3RfYnVmZmVyX3NpemU7DQo+ID4NCj4gPiAtc3RhdGljIGludCBj
cmVhdGVfdWRtYWJ1ZihpbnQgbWFwX2ZkKQ0KPiA+ICtzdGF0aWMgaW50IGNyZWF0ZV91ZG1hYnVm
KHZvaWQpDQo+ID4gIHsNCj4gPiAgICAgICAgIHN0cnVjdCB1ZG1hYnVmX2NyZWF0ZSBjcmVhdGU7
DQo+ID4gLSAgICAgICBpbnQgZGV2X3VkbWFidWY7DQo+ID4gLSAgICAgICBib29sIGYgPSBmYWxz
ZTsNCj4gPiArICAgICAgIGludCBkZXZfdWRtYWJ1ZiwgbWVtZmQsIHVkbWFidWY7DQo+IC4uIGhl
cmUuDQo+DQo+IEl0IGlzIG5vdCBpZGVhbCB0byBoYXZlIGEgZ2xvYmFsIHVkbWFidWYgYW5kIGEg
bG9jYWwgdWRtYWJ1Zi4NCj4gSWYgd2Ugd2FudCB0aGUgZ2xvYmFsIHZlcnNpb24sIGxldCdzIHJl
bmFtZSB0aGUgbG9jYWwgb25lLg0KDQpPayBsZXQgbWUgY2hhbmdlIHVwIHRoZSBuYW1lIG9mIHRo
ZSBhbGlhc2luZyB2YXJpYWJsZSB0byBsb2NhbF91ZG1hYnVmLg0KDQo+IFsuLi5dDQo+DQo+ID4N
Cj4gPiAgc3RhdGljIGludCBjcmVhdGVfdGVzdF9idWZmZXJzKGludCBtYXBfZmQpDQo+ID4gIHsN
Cj4gPiAtICAgICAgIGludCByZXQ7DQo+ID4gKyAgICAgICBib29sIGYgPSBmYWxzZTsNCj4gPiAr
DQo+ID4gKyAgICAgICB1ZG1hYnVmID0gY3JlYXRlX3VkbWFidWYoKTsNCj4gPiArICAgICAgIHN5
c2hlYXBfZG1hYnVmID0gY3JlYXRlX3N5c19oZWFwX2RtYWJ1ZigpOw0KPiA+DQo+ID4gLSAgICAg
ICByZXQgPSBjcmVhdGVfdWRtYWJ1ZihtYXBfZmQpOw0KPiA+IC0gICAgICAgaWYgKHJldCkNCj4g
PiAtICAgICAgICAgICAgICAgcmV0dXJuIHJldDsNCj4gPiArICAgICAgIGlmICh1ZG1hYnVmIDwg
MCB8fCBzeXNoZWFwX2RtYWJ1ZiA8IDApDQo+ID4gKyAgICAgICAgICAgICAgIHJldHVybiAtMTsN
Cj4NCj4gV2UgYWxzbyBuZWVkIGRlc3Ryb3lfdGVzdF9idWZmZXJzKCkgb24gdGhlIGVycm9yIHBh
dGggaGVyZSwNCj4gb3IgYXQgdGhlIGNhbGxlci4NCg0KVGhlIGNhbGxlciBkb2VzIGN1cnJlbnRs
eSBjaGVjayB0byBkZWNpZGUgaWYgaXQgc2hvdWxkIGJvdGhlciBydW5uaW5nDQp0aGUgdGVzdHMg
b3Igbm90LCBhbmQgY2FsbHMgZGVzdHJveV90ZXN0X2J1ZmZlcnMoKSBpZiBub3QuDQoNCj4gPiAt
ICAgICAgIHJldHVybiBjcmVhdGVfc3lzX2hlYXBfZG1hYnVmKG1hcF9mZCk7DQo+ID4gKyAgICAg
ICByZXR1cm4gYnBmX21hcF91cGRhdGVfZWxlbShtYXBfZmQsIHVkbWFidWZfdGVzdF9idWZmZXJf
bmFtZSwNCj4gPiAmZiwgQlBGX0FOWSkgfHwNCj4gPiArICAgICAgICAgICAgICBicGZfbWFwX3Vw
ZGF0ZV9lbGVtKG1hcF9mZCwgc3lzaGVhcF90ZXN0X2J1ZmZlcl9uYW1lLA0KPiA+ICZmLCBCUEZf
QU5ZKTsNCj4gPiAgfQ0KPiA+DQo+ID4gIHN0YXRpYyB2b2lkIGRlc3Ryb3lfdGVzdF9idWZmZXJz
KHZvaWQpDQo+ID4gIHsNCj4gPiAgICAgICAgIGNsb3NlKHVkbWFidWYpOw0KPiA+IC0gICAgICAg
Y2xvc2UobWVtZmQpOw0KPiA+ICAgICAgICAgY2xvc2Uoc3lzaGVhcF9kbWFidWYpOw0KPg0KPiBG
b3IgdGhlIHR3byBnbG9iYWwgZmRzLCBsZXQncyByZXNldCB0aGVtIHRvIC0xIHJpZ2h0IGFmdGVy
IGNsb3NlKCkuDQo+DQo+IFRoYW5rcywNCj4gU29uZw0KDQpXaWxsIGRvLCB0aGFua3MuDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
