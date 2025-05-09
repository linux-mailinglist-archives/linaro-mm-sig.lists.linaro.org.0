Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B5CAB1F37
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 May 2025 23:43:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 480DC45F58
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 May 2025 21:43:36 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by lists.linaro.org (Postfix) with ESMTPS id A710A43B97
	for <linaro-mm-sig@lists.linaro.org>; Fri,  9 May 2025 21:43:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=0EOWe2Vp;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.52 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43cfe808908so19835e9.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 09 May 2025 14:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746827002; x=1747431802; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fZfju7WUz5Yl04mbuyXvvdOSNmKPyLT8Rq8aUyjFmsM=;
        b=0EOWe2Vp1+Fvsy6y4BrNVJmWIJGjcAz1qTNiW5RL+uvaqYQAbLxDQN8N2aKMQr2lgH
         MR767rO31AVtGbb3bvuVqUOmkakdMFaolSBjC5/Xf5p1HFi39wcXAl4zbCMe7z88d6z1
         dV4zoSRzYYqPrbp+ly57BQRtIWc2QWODY9SJy6pWuNdGKmu5Iyv79iYa1niipbKzyrBh
         UQ+AhOtjxLNP6RSb2fMQdAAPtOrJgRK/U46h2XD296BwbpEuEwUFl+Rf7h0Wxr4bbjed
         xCOFBTUcjxxQlHl0toVS8mjgne07V5eHG1YuGeAw3phQWX5ty9z04AxoX5xPyg9oExgT
         GYtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746827002; x=1747431802;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fZfju7WUz5Yl04mbuyXvvdOSNmKPyLT8Rq8aUyjFmsM=;
        b=Y6vae0ctPAWjZB4yinSmqbXm85otPsfY6xXBia+84qcQ7AKJXqQP54893j9BLU2lHb
         LNsRPSg8NAFsnKcw7JSKnCRXdm1lqbuUXTLVtuu82ogW6/iwi1PDubo63O53srYJaX6P
         u0bZAvZH1qhzyTtL41N6zdJqkEnz/ov7KrPxsTFZT2OJp8GXvOTbfSRYOgrLyg99SBfV
         +xwfmJNJFNrDYdhq/00HANcPdXB23k2e4MHciPU/ppHAmeqtJRljFgD9plkCRhHmqBzu
         vhS6a8ohLfhBum30kNlB+/Jrr0mZjjRNslF8ZBe2I3tYGlmGN4F5BgH/YwUlXx+7gf7E
         ryUw==
X-Forwarded-Encrypted: i=1; AJvYcCXRJutNHZ7Yrs4JymbukV99XAaAr7sQb/kwwnU4jSKlbYB687dCksjFkszdyt0GoI+yXupGC8bSojc0OeFu@lists.linaro.org
X-Gm-Message-State: AOJu0YyT1SjOOxLPKua/vpROvn2n7BrshMUk7uhJpWyU4Cuk3FVIvMoz
	5Qigc1gCUOAycUrz875URzvwG15wyoVENJvirgY2DyWCIdHETcF7g7C3ykOP8D8Qoe6Zv9eRer6
	jBKfnyyhvF3RtdJrXeR0b7hy65kfgFS6Pzxqh
X-Gm-Gg: ASbGnctc+dI77BWC2NzxENvuqVMsPP/Pi4eCCRvMLR/iNhubA07WG4rSNdjYY3QiVFc
	ljSSmNnIKmMzHm4Mx8pLI+S6jQWsmIUH3DPwRtWb5MWzcqD5Q2jpqltP48GJc9tOIfjzOso4+BM
	rB9FkDNFot/tmvZmr35iQjbqweZqweUCo=
X-Google-Smtp-Source: AGHT+IEsv5HI2i1ZZ/585hqiXPrI+miXZcW/PcnQi9f4aA5/TPapqTvWiJ8fo1Pxmugr4vWjKMzxQzqUzh4HLjZ9xoE=
X-Received: by 2002:a05:600c:6058:b0:441:d438:1c1f with SMTP id
 5b1f17b1804b1-442e03adbdemr15755e9.7.1746827001461; Fri, 09 May 2025 14:43:21
 -0700 (PDT)
MIME-Version: 1.0
References: <20250508182025.2961555-1-tjmercier@google.com>
 <20250508182025.2961555-6-tjmercier@google.com> <CAPhsuW5WOmyfPqBc_Hn7ApGWP_2uz_cJwyaDWF_VwiHJu9s_1A@mail.gmail.com>
In-Reply-To: <CAPhsuW5WOmyfPqBc_Hn7ApGWP_2uz_cJwyaDWF_VwiHJu9s_1A@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 9 May 2025 14:43:09 -0700
X-Gm-Features: AX0GCFvkQQHihmvnaG3BMibV3EQ_CyOSSZ1huizs69M9NO065M7pYtXEQ0sH-Zc
Message-ID: <CABdmKX2h5cGjNbJshGkQ+2XJ7eOnM+VfbmVr5Pj5c0qfxQA-qg@mail.gmail.com>
To: Song Liu <song@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A710A43B97
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
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
	DWL_DNSWL_BLOCKED(0.00)[google.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,fomichev.me,fb.com];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[209.85.128.52:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: VFJMM3XR3HO2LEJAGYUA2K6PNERHRHZ6
X-Message-ID-Hash: VFJMM3XR3HO2LEJAGYUA2K6PNERHRHZ6
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, skhan@linuxfoundation.org, alexei.starovoitov@gmail.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH bpf-next v4 5/5] selftests/bpf: Add test for open coded dmabuf_iter
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VFJMM3XR3HO2LEJAGYUA2K6PNERHRHZ6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBNYXkgOSwgMjAyNSBhdCAxMTo0NuKAr0FNIFNvbmcgTGl1IDxzb25nQGtlcm5lbC5v
cmc+IHdyb3RlOg0KPg0KPiBPbiBUaHUsIE1heSA4LCAyMDI1IGF0IDExOjIx4oCvQU0gVC5KLiBN
ZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBVc2UgdGhlIHNh
bWUgdGVzdCBidWZmZXJzIGFzIHRoZSB0cmFkaXRpb25hbCBpdGVyYXRvciBhbmQgYSBuZXcgQlBG
IG1hcA0KPiA+IHRvIHZlcmlmeSB0aGUgdGVzdCBidWZmZXJzIGNhbiBiZSBmb3VuZCB3aXRoIHRo
ZSBvcGVuIGNvZGVkIGRtYWJ1Zg0KPiA+IGl0ZXJhdG9yLg0KPg0KPiBUaGUgd2F5IHdlIHNwbGl0
IDQvNSBhbmQgNS81IG1ha2VzIHRoZSBjb2RlIHRyaWNrZXIgdG8gZm9sbG93LiBJIGd1ZXNzDQo+
IHRoZSBtb3RpdmF0aW9uIGlzIHRvIGJhY2sgcG9ydCBkZWZhdWx0IGl0ZXIgYWxvbmcgdG8gb2xk
ZXIga2VybmVscy4gQnV0IEkNCj4gdGhpbmsgd2UgY2FuIHN0aWxsIG1ha2UgdGhlIGNvZGUgY2xl
YW5lci4NCj4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFQuSi4gTWVyY2llciA8dGptZXJjaWVy
QGdvb2dsZS5jb20+DQo+ID4gLS0tDQo+IFsuLi5dDQo+DQo+ID4NCj4gPiAtc3RhdGljIGludCBj
cmVhdGVfdWRtYWJ1Zih2b2lkKQ0KPiA+ICtzdGF0aWMgaW50IGNyZWF0ZV91ZG1hYnVmKGludCBt
YXBfZmQpDQo+ID4gIHsNCj4gPiAgICAgICAgIHN0cnVjdCB1ZG1hYnVmX2NyZWF0ZSBjcmVhdGU7
DQo+ID4gICAgICAgICBpbnQgZGV2X3VkbWFidWY7DQo+ID4gKyAgICAgICBib29sIGYgPSBmYWxz
ZTsNCj4gPg0KPiA+ICAgICAgICAgdWRtYWJ1Zl90ZXN0X2J1ZmZlcl9zaXplID0gMTAgKiBnZXRw
YWdlc2l6ZSgpOw0KPiA+DQo+ID4gQEAgLTYzLDEwICs2NCwxMCBAQCBzdGF0aWMgaW50IGNyZWF0
ZV91ZG1hYnVmKHZvaWQpDQo+ID4gICAgICAgICBpZiAoIUFTU0VSVF9PSyhpb2N0bCh1ZG1hYnVm
LCBETUFfQlVGX1NFVF9OQU1FX0IsIHVkbWFidWZfdGVzdF9idWZmZXJfbmFtZSksICJuYW1lIikp
DQo+ID4gICAgICAgICAgICAgICAgIHJldHVybiAxOw0KPiA+DQo+ID4gLSAgICAgICByZXR1cm4g
MDsNCj4gPiArICAgICAgIHJldHVybiBicGZfbWFwX3VwZGF0ZV9lbGVtKG1hcF9mZCwgdWRtYWJ1
Zl90ZXN0X2J1ZmZlcl9uYW1lLCAmZiwgQlBGX0FOWSk7DQo+DQo+IFdlIGRvbid0IHJlYWxseSBu
ZWVkIHRoaXMgYnBmX21hcF91cGRhdGVfZWxlbSgpIGluc2lkZQ0KPiBjcmVhdGVfdWRtYWJ1Zigp
LCByaWdodD8NCj4NCj4gPiAgfQ0KPiA+DQo+ID4gLXN0YXRpYyBpbnQgY3JlYXRlX3N5c19oZWFw
X2RtYWJ1Zih2b2lkKQ0KPiA+ICtzdGF0aWMgaW50IGNyZWF0ZV9zeXNfaGVhcF9kbWFidWYoaW50
IG1hcF9mZCkNCj4gPiAgew0KPiA+ICAgICAgICAgc3lzaGVhcF90ZXN0X2J1ZmZlcl9zaXplID0g
MjAgKiBnZXRwYWdlc2l6ZSgpOw0KPiA+DQo+ID4gQEAgLTc3LDYgKzc4LDcgQEAgc3RhdGljIGlu
dCBjcmVhdGVfc3lzX2hlYXBfZG1hYnVmKHZvaWQpDQo+ID4gICAgICAgICAgICAgICAgIC5oZWFw
X2ZsYWdzID0gMCwNCj4gPiAgICAgICAgIH07DQo+ID4gICAgICAgICBpbnQgaGVhcF9mZCwgcmV0
Ow0KPiA+ICsgICAgICAgYm9vbCBmID0gZmFsc2U7DQo+ID4NCj4gPiAgICAgICAgIGlmICghQVNT
RVJUX0xFKHNpemVvZihzeXNoZWFwX3Rlc3RfYnVmZmVyX25hbWUpLCBETUFfQlVGX05BTUVfTEVO
LCAiTkFNRVRPT0xPTkciKSkNCj4gPiAgICAgICAgICAgICAgICAgcmV0dXJuIDE7DQo+ID4gQEAg
LTk1LDE4ICs5NywxOCBAQCBzdGF0aWMgaW50IGNyZWF0ZV9zeXNfaGVhcF9kbWFidWYodm9pZCkN
Cj4gPiAgICAgICAgIGlmICghQVNTRVJUX09LKGlvY3RsKHN5c2hlYXBfZG1hYnVmLCBETUFfQlVG
X1NFVF9OQU1FX0IsIHN5c2hlYXBfdGVzdF9idWZmZXJfbmFtZSksICJuYW1lIikpDQo+ID4gICAg
ICAgICAgICAgICAgIHJldHVybiAxOw0KPiA+DQo+ID4gLSAgICAgICByZXR1cm4gMDsNCj4gPiAr
ICAgICAgIHJldHVybiBicGZfbWFwX3VwZGF0ZV9lbGVtKG1hcF9mZCwgc3lzaGVhcF90ZXN0X2J1
ZmZlcl9uYW1lLCAmZiwgQlBGX0FOWSk7DQo+DQo+IFNhbWUgZm9yIHRoaXMgYnBmX21hcF91cGRh
dGVfZWxlbSgpLCB3ZSBjYW4gY2FsbCB0aGlzIGRpcmVjdGx5IGZyb20NCj4gY3JlYXRlX3Rlc3Rf
YnVmZmVycygpLg0KPg0KPiA+ICB9DQo+ID4NCj4gPiAtc3RhdGljIGludCBjcmVhdGVfdGVzdF9i
dWZmZXJzKHZvaWQpDQo+ID4gK3N0YXRpYyBpbnQgY3JlYXRlX3Rlc3RfYnVmZmVycyhpbnQgbWFw
X2ZkKQ0KPiA+ICB7DQo+ID4gICAgICAgICBpbnQgcmV0Ow0KPiA+DQo+ID4gLSAgICAgICByZXQg
PSBjcmVhdGVfdWRtYWJ1ZigpOw0KPiA+ICsgICAgICAgcmV0ID0gY3JlYXRlX3VkbWFidWYobWFw
X2ZkKTsNCj4gPiAgICAgICAgIGlmIChyZXQpDQo+ID4gICAgICAgICAgICAgICAgIHJldHVybiBy
ZXQ7DQo+ID4NCj4gPiAtICAgICAgIHJldHVybiBjcmVhdGVfc3lzX2hlYXBfZG1hYnVmKCk7DQo+
ID4gKyAgICAgICByZXR1cm4gY3JlYXRlX3N5c19oZWFwX2RtYWJ1ZihtYXBfZmQpOw0KPg0KPiBQ
ZXJzb25hbGx5LCBJIHdvdWxkIHByZWZlciB3ZSBqdXN0IG1lcmdlIGFsbCB0aGUgbG9naWMgb2YN
Cj4gY3JlYXRlX3VkbWFidWYoKSBhbmQgY3JlYXRlX3N5c19oZWFwX2RtYWJ1ZigpDQo+IGludG8g
Y3JlYXRlX3Rlc3RfYnVmZmVycygpLg0KDQpUaGF0J3MgYSBsb3Qgb2YgZGlmZmVyZW50IHN0dWZm
IHRvIHB1dCBpbiBvbmUgcGxhY2UuIEhvdyBhYm91dA0KcmV0dXJuaW5nIGZpbGUgZGVzY3JpcHRv
cnMgZnJvbSB0aGUgYnVmZmVyIGNyZWF0ZSBmdW5jdGlvbnMgd2hpbGUNCmhhdmluZyB0aGVtIGNs
ZWFuIHVwIGFmdGVyIHRoZW1zZWx2ZXM6DQoNCi1zdGF0aWMgaW50IG1lbWZkLCB1ZG1hYnVmOw0K
K3N0YXRpYyBpbnQgdWRtYWJ1ZjsNCiBzdGF0aWMgY29uc3QgY2hhciB1ZG1hYnVmX3Rlc3RfYnVm
ZmVyX25hbWVbRE1BX0JVRl9OQU1FX0xFTl0gPQ0KInVkbWFidWZfdGVzdF9idWZmZXJfZm9yX2l0
ZXIiOw0KIHN0YXRpYyBzaXplX3QgdWRtYWJ1Zl90ZXN0X2J1ZmZlcl9zaXplOw0KIHN0YXRpYyBp
bnQgc3lzaGVhcF9kbWFidWY7DQogc3RhdGljIGNvbnN0IGNoYXIgc3lzaGVhcF90ZXN0X2J1ZmZl
cl9uYW1lW0RNQV9CVUZfTkFNRV9MRU5dID0NCiJzeXNoZWFwX3Rlc3RfYnVmZmVyX2Zvcl9pdGVy
IjsNCiBzdGF0aWMgc2l6ZV90IHN5c2hlYXBfdGVzdF9idWZmZXJfc2l6ZTsNCg0KLXN0YXRpYyBp
bnQgY3JlYXRlX3VkbWFidWYoaW50IG1hcF9mZCkNCitzdGF0aWMgaW50IGNyZWF0ZV91ZG1hYnVm
KHZvaWQpDQogew0KICAgICAgICBzdHJ1Y3QgdWRtYWJ1Zl9jcmVhdGUgY3JlYXRlOw0KLSAgICAg
ICBpbnQgZGV2X3VkbWFidWY7DQotICAgICAgIGJvb2wgZiA9IGZhbHNlOw0KKyAgICAgICBpbnQg
ZGV2X3VkbWFidWYsIG1lbWZkLCB1ZG1hYnVmOw0KDQogICAgICAgIHVkbWFidWZfdGVzdF9idWZm
ZXJfc2l6ZSA9IDEwICogZ2V0cGFnZXNpemUoKTsNCg0KICAgICAgICBpZiAoIUFTU0VSVF9MRShz
aXplb2YodWRtYWJ1Zl90ZXN0X2J1ZmZlcl9uYW1lKSwNCkRNQV9CVUZfTkFNRV9MRU4sICJOQU1F
VE9PTE9ORyIpKQ0KLSAgICAgICAgICAgICAgIHJldHVybiAxOw0KKyAgICAgICAgICAgICAgIHJl
dHVybiAtMTsNCg0KICAgICAgICBtZW1mZCA9IG1lbWZkX2NyZWF0ZSgibWVtZmRfdGVzdCIsIE1G
RF9BTExPV19TRUFMSU5HKTsNCiAgICAgICAgaWYgKCFBU1NFUlRfT0tfRkQobWVtZmQsICJtZW1m
ZF9jcmVhdGUiKSkNCi0gICAgICAgICAgICAgICByZXR1cm4gMTsNCisgICAgICAgICAgICAgICBy
ZXR1cm4gLTE7DQoNCiAgICAgICAgaWYgKCFBU1NFUlRfT0soZnRydW5jYXRlKG1lbWZkLCB1ZG1h
YnVmX3Rlc3RfYnVmZmVyX3NpemUpLCAiZnRydW5jYXRlIikpDQotICAgICAgICAgICAgICAgcmV0
dXJuIDE7DQorICAgICAgICAgICAgICAgZ290byBjbG9zZV9tZW1mZDsNCg0KICAgICAgICBpZiAo
IUFTU0VSVF9PSyhmY250bChtZW1mZCwgRl9BRERfU0VBTFMsIEZfU0VBTF9TSFJJTkspLCAic2Vh
bCIpKQ0KLSAgICAgICAgICAgICAgIHJldHVybiAxOw0KKyAgICAgICAgICAgICAgIGdvdG8gY2xv
c2VfbWVtZmQ7DQoNCiAgICAgICAgZGV2X3VkbWFidWYgPSBvcGVuKCIvZGV2L3VkbWFidWYiLCBP
X1JET05MWSk7DQogICAgICAgIGlmICghQVNTRVJUX09LX0ZEKGRldl91ZG1hYnVmLCAib3BlbiB1
ZG1hYnVmIikpDQotICAgICAgICAgICAgICAgcmV0dXJuIDE7DQorICAgICAgICAgICAgICAgZ290
byBjbG9zZV9tZW1mZDsNCg0KICAgICAgICBjcmVhdGUubWVtZmQgPSBtZW1mZDsNCiAgICAgICAg
Y3JlYXRlLmZsYWdzID0gVURNQUJVRl9GTEFHU19DTE9FWEVDOw0KQEAgLTU5LDE1ICs1OCwyMSBA
QCBzdGF0aWMgaW50IGNyZWF0ZV91ZG1hYnVmKGludCBtYXBfZmQpDQogICAgICAgIHVkbWFidWYg
PSBpb2N0bChkZXZfdWRtYWJ1ZiwgVURNQUJVRl9DUkVBVEUsICZjcmVhdGUpOw0KICAgICAgICBj
bG9zZShkZXZfdWRtYWJ1Zik7DQogICAgICAgIGlmICghQVNTRVJUX09LX0ZEKHVkbWFidWYsICJ1
ZG1hYnVmX2NyZWF0ZSIpKQ0KLSAgICAgICAgICAgICAgIHJldHVybiAxOw0KKyAgICAgICAgICAg
ICAgIGdvdG8gY2xvc2VfbWVtZmQ7DQoNCiAgICAgICAgaWYgKCFBU1NFUlRfT0soaW9jdGwodWRt
YWJ1ZiwgRE1BX0JVRl9TRVRfTkFNRV9CLA0KdWRtYWJ1Zl90ZXN0X2J1ZmZlcl9uYW1lKSwgIm5h
bWUiKSkNCi0gICAgICAgICAgICAgICByZXR1cm4gMTsNCisgICAgICAgICAgICAgICBnb3RvIGNs
b3NlX3VkbWFidWY7DQorDQorICAgICAgIHJldHVybiB1ZG1hYnVmOw0KDQotICAgICAgIHJldHVy
biBicGZfbWFwX3VwZGF0ZV9lbGVtKG1hcF9mZCwgdWRtYWJ1Zl90ZXN0X2J1ZmZlcl9uYW1lLA0K
JmYsIEJQRl9BTlkpOw0KK2Nsb3NlX3VkbWFidWY6DQorICAgICAgIGNsb3NlKHVkbWFidWYpOw0K
K2Nsb3NlX21lbWZkOg0KKyAgICAgICBjbG9zZShtZW1mZCk7DQorICAgICAgIHJldHVybiAtMTsN
CiB9DQoNCi1zdGF0aWMgaW50IGNyZWF0ZV9zeXNfaGVhcF9kbWFidWYoaW50IG1hcF9mZCkNCitz
dGF0aWMgaW50IGNyZWF0ZV9zeXNfaGVhcF9kbWFidWYodm9pZCkNCiB7DQogICAgICAgIHN5c2hl
YXBfdGVzdF9idWZmZXJfc2l6ZSA9IDIwICogZ2V0cGFnZXNpemUoKTsNCg0KQEAgLTc4LDQzICs4
Myw0NiBAQCBzdGF0aWMgaW50IGNyZWF0ZV9zeXNfaGVhcF9kbWFidWYoaW50IG1hcF9mZCkNCiAg
ICAgICAgICAgICAgICAuaGVhcF9mbGFncyA9IDAsDQogICAgICAgIH07DQogICAgICAgIGludCBo
ZWFwX2ZkLCByZXQ7DQotICAgICAgIGJvb2wgZiA9IGZhbHNlOw0KDQogICAgICAgIGlmICghQVNT
RVJUX0xFKHNpemVvZihzeXNoZWFwX3Rlc3RfYnVmZmVyX25hbWUpLA0KRE1BX0JVRl9OQU1FX0xF
TiwgIk5BTUVUT09MT05HIikpDQotICAgICAgICAgICAgICAgcmV0dXJuIDE7DQorICAgICAgICAg
ICAgICAgcmV0dXJuIC0xOw0KDQogICAgICAgIGhlYXBfZmQgPSBvcGVuKCIvZGV2L2RtYV9oZWFw
L3N5c3RlbSIsIE9fUkRPTkxZKTsNCiAgICAgICAgaWYgKCFBU1NFUlRfT0tfRkQoaGVhcF9mZCwg
Im9wZW4gZG1hIGhlYXAiKSkNCi0gICAgICAgICAgICAgICByZXR1cm4gMTsNCisgICAgICAgICAg
ICAgICByZXR1cm4gLTE7DQoNCiAgICAgICAgcmV0ID0gaW9jdGwoaGVhcF9mZCwgRE1BX0hFQVBf
SU9DVExfQUxMT0MsICZkYXRhKTsNCiAgICAgICAgY2xvc2UoaGVhcF9mZCk7DQogICAgICAgIGlm
ICghQVNTRVJUX09LKHJldCwgInN5aGVhcCBhbGxvYyIpKQ0KLSAgICAgICAgICAgICAgIHJldHVy
biAxOw0KKyAgICAgICAgICAgICAgIHJldHVybiAtMTsNCg0KLSAgICAgICBzeXNoZWFwX2RtYWJ1
ZiA9IGRhdGEuZmQ7DQorICAgICAgIGlmICghQVNTRVJUX09LKGlvY3RsKGRhdGEuZmQsIERNQV9C
VUZfU0VUX05BTUVfQiwNCnN5c2hlYXBfdGVzdF9idWZmZXJfbmFtZSksICJuYW1lIikpDQorICAg
ICAgICAgICAgICAgZ290byBjbG9zZV9zeXNoZWFwX2RtYWJ1ZjsNCg0KLSAgICAgICBpZiAoIUFT
U0VSVF9PSyhpb2N0bChzeXNoZWFwX2RtYWJ1ZiwgRE1BX0JVRl9TRVRfTkFNRV9CLA0Kc3lzaGVh
cF90ZXN0X2J1ZmZlcl9uYW1lKSwgIm5hbWUiKSkNCi0gICAgICAgICAgICAgICByZXR1cm4gMTsN
CisgICAgICAgcmV0dXJuIGRhdGEuZmQ7DQoNCi0gICAgICAgcmV0dXJuIGJwZl9tYXBfdXBkYXRl
X2VsZW0obWFwX2ZkLCBzeXNoZWFwX3Rlc3RfYnVmZmVyX25hbWUsDQomZiwgQlBGX0FOWSk7DQor
Y2xvc2Vfc3lzaGVhcF9kbWFidWY6DQorICAgICAgIGNsb3NlKGRhdGEuZmQpOw0KKyAgICAgICBy
ZXR1cm4gLTE7DQogfQ0KDQogc3RhdGljIGludCBjcmVhdGVfdGVzdF9idWZmZXJzKGludCBtYXBf
ZmQpDQogew0KLSAgICAgICBpbnQgcmV0Ow0KKyAgICAgICBib29sIGYgPSBmYWxzZTsNCisNCisg
ICAgICAgdWRtYWJ1ZiA9IGNyZWF0ZV91ZG1hYnVmKCk7DQorICAgICAgIHN5c2hlYXBfZG1hYnVm
ID0gY3JlYXRlX3N5c19oZWFwX2RtYWJ1ZigpOw0KDQotICAgICAgIHJldCA9IGNyZWF0ZV91ZG1h
YnVmKG1hcF9mZCk7DQotICAgICAgIGlmIChyZXQpDQotICAgICAgICAgICAgICAgcmV0dXJuIHJl
dDsNCisgICAgICAgaWYgKHVkbWFidWYgPCAwIHx8IHN5c2hlYXBfZG1hYnVmIDwgMCkNCisgICAg
ICAgICAgICAgICByZXR1cm4gLTE7DQoNCi0gICAgICAgcmV0dXJuIGNyZWF0ZV9zeXNfaGVhcF9k
bWFidWYobWFwX2ZkKTsNCisgICAgICAgcmV0dXJuIGJwZl9tYXBfdXBkYXRlX2VsZW0obWFwX2Zk
LCB1ZG1hYnVmX3Rlc3RfYnVmZmVyX25hbWUsDQomZiwgQlBGX0FOWSkgfHwNCisgICAgICAgICAg
ICAgIGJwZl9tYXBfdXBkYXRlX2VsZW0obWFwX2ZkLCBzeXNoZWFwX3Rlc3RfYnVmZmVyX25hbWUs
DQomZiwgQlBGX0FOWSk7DQogfQ0KDQogc3RhdGljIHZvaWQgZGVzdHJveV90ZXN0X2J1ZmZlcnMo
dm9pZCkNCiB7DQogICAgICAgIGNsb3NlKHVkbWFidWYpOw0KLSAgICAgICBjbG9zZShtZW1mZCk7
DQogICAgICAgIGNsb3NlKHN5c2hlYXBfZG1hYnVmKTsNCiB9DQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
