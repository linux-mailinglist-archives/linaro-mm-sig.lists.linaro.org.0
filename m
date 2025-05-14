Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 749F6AB7856
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 May 2025 23:59:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 856074597C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 May 2025 21:59:23 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id 20D7143C67
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 May 2025 21:59:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="y2F7q/1K";
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.54 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43d5f10e1aaso22155e9.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 14 May 2025 14:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1747259949; x=1747864749; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N6BjLggY6RYhBduHWEU2r/0qSGTtOcmp2Rv7SfgPX2c=;
        b=y2F7q/1KSJ1lw5pkZ5YY08K/W3tHdKLAXrceSE8w7qunZldV41tY0H35DzmKo62MWl
         W0wanBVM3Cn9ZCzefeC4dUrWtCDc+dEmfY7026HUc9/shpI2QosEKdCQL33vFDF1lr39
         fKVjHBF6+SQZ4+Rvs1thKZ1pMW8Hsv8nEDAACXx4U/pm4nIRgt7tfFPfs8GJOItqBLqE
         ETXwqUuF6WO++HkOiW2KlXNseh6OCn3S++bq9O3BTrDcP77J8ZhH5G0/sfaUHNGsVNPF
         nSUReRYNqPHuxOrdf2cMbbT5l93LCfXoKM3BjdB1cajuGEZT04UEDnssQ15tF69AkOAX
         uwOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747259949; x=1747864749;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N6BjLggY6RYhBduHWEU2r/0qSGTtOcmp2Rv7SfgPX2c=;
        b=FKjSFTy1F62zGMm947cnIogu9FxJ2SZ3YbgQpKFL1KmAjr6Qx0jRrsfJrGb4q6xtEU
         Gys5ycdVzYu9anlMIqpyB4N/ETN+8t8aE7iVU2aAAtRUYi6doIX4bXuUUAmpXV/wp+jA
         6puiG09k9waibJMeISIsWsaat4NpFRAhaAGEO3Eayj01/t9An4qjNcikCIdGoxQ6ku0y
         lZazK7KKjp1wcjDiLk34FJAEcdIheght4Unx1/TATMT3cNZlMHPZmxevkMYKqgcArGkS
         Q7C2O0TySA16pcv+p7K7UeQekwq9foxsdahoIivsEnHOp0pfKsVjVa5+291Ira++qsHL
         lsdQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCRwvmTyE4WqUDVE6YPHolPbsfNGlc+5VjfGNC7r0lu3nC/uxC0hrScsBkpLHy73M/HyAt55+doxo3ZRxp@lists.linaro.org
X-Gm-Message-State: AOJu0YxozsigqA0XAW3BtzJeSgtrktqrjqPixusxIMKavdBDjm0lj3so
	O2uO1ol/Eru87gCExXKD4qds8aRGnACbHkr4c08juHnrynUBKP7l7OR2FNAcNNogay6r0cIep8Q
	gCvyzBsg9CD9o06mACZTNYfdiYfvPaCdIePg+NdEv
X-Gm-Gg: ASbGncuXyp9D9VxZjRrTimk9ZE99Krgea6mXUI1uU4GAot3WDoPARp81oFR76ie6onq
	pJoQ94sqY8w8EXXfVSW8xTpdgv2vmqGXwXFanjFR9Kk32yEQAxBguXUlvIwjfHmSAonxooGrjiE
	CDEBiI86yOZNLf9Wtv4s/YHXSD9UZIhYJikPlClvc3pU6fqiowiAjooeG0KLMvc6U=
X-Google-Smtp-Source: AGHT+IF9CkMy8uQHae8tBwjfZQnl2xTDU2FaaHSwjDP6uOoyICX4dbqTYj1/pDGgkaVhdrmo/aPKYQuBWpB4B9m3R6w=
X-Received: by 2002:a05:600c:6095:b0:441:aaa8:312e with SMTP id
 5b1f17b1804b1-442f8b45ad1mr472635e9.6.1747259949004; Wed, 14 May 2025
 14:59:09 -0700 (PDT)
MIME-Version: 1.0
References: <20250513163601.812317-1-tjmercier@google.com> <20250513163601.812317-5-tjmercier@google.com>
 <CAPhsuW4uKxFP=i2KgaKPvezD5sBcVheQRBF1fY5DyYafin_yFQ@mail.gmail.com>
In-Reply-To: <CAPhsuW4uKxFP=i2KgaKPvezD5sBcVheQRBF1fY5DyYafin_yFQ@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 14 May 2025 14:58:57 -0700
X-Gm-Features: AX0GCFvBkYq3GWDHm1043uOPWEQY2osVY6pw6Ua9BcA8wU905Xni8mQWiWzsG7M
Message-ID: <CABdmKX3Q5+bfbBBndSS6mxUhapFGY5zLr9CV-p0+CfNPOzuvGA@mail.gmail.com>
To: Song Liu <song@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 20D7143C67
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.54:from];
	TAGGED_RCPT(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.54:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,fomichev.me,fb.com];
	FROM_HAS_DN(0.00)[];
	DWL_DNSWL_NONE(0.00)[google.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: LWR2AHJNEC754BOMJPU77K4735VX3JDK
X-Message-ID-Hash: LWR2AHJNEC754BOMJPU77K4735VX3JDK
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, skhan@linuxfoundation.org, alexei.starovoitov@gmail.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH bpf-next v6 4/5] selftests/bpf: Add test for dmabuf_iter
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LWR2AHJNEC754BOMJPU77K4735VX3JDK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXkgMTQsIDIwMjUgYXQgMTo1M+KAr1BNIFNvbmcgTGl1IDxzb25nQGtlcm5lbC5v
cmc+IHdyb3RlOg0KPg0KPiBPbiBUdWUsIE1heSAxMywgMjAyNSBhdCA5OjM24oCvQU0gVC5KLiBN
ZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBUaGlzIHRlc3Qg
Y3JlYXRlcyBhIHVkbWFidWYsIGFuZCBhIGRtYWJ1ZiBmcm9tIHRoZSBzeXN0ZW0gZG1hYnVmIGhl
YXAsDQo+ID4gYW5kIHVzZXMgYSBCUEYgcHJvZ3JhbSB0aGF0IHByaW50cyBkbWFidWYgbWV0YWRh
dGEgd2l0aCB0aGUgbmV3DQo+ID4gZG1hYnVmX2l0ZXIgdG8gdmVyaWZ5IHRoZXkgY2FuIGJlIGZv
dW5kLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogVC5KLiBNZXJjaWVyIDx0am1lcmNpZXJAZ29v
Z2xlLmNvbT4NCj4gPiBBY2tlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPg0KPg0KPiBBY2tlZC1ieTogU29uZyBMaXUgPHNvbmdAa2VybmVsLm9yZz4NCg0K
VGhhbmtzLg0KDQo+DQo+IFdpdGggb25lIG1vcmUgY29tbWVudCBiZWxvdy4NCj4NCj4gWy4uLl0N
Cj4NCj4gPiBkaWZmIC0tZ2l0IGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL2Rt
YWJ1Zl9pdGVyLmMgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MvZG1hYnVmX2l0
ZXIuYw0KPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi4y
YTFiNTM5NzE5NmQNCj4gPiAtLS0gL2Rldi9udWxsDQo+ID4gKysrIGIvdG9vbHMvdGVzdGluZy9z
ZWxmdGVzdHMvYnBmL3Byb2dzL2RtYWJ1Zl9pdGVyLmMNCj4gPiBAQCAtMCwwICsxLDUzIEBADQo+
ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wDQo+ID4gKy8qIENvcHlyaWdo
dCAoYykgMjAyNSBHb29nbGUgTExDICovDQo+ID4gKyNpbmNsdWRlIDx2bWxpbnV4Lmg+DQo+ID4g
KyNpbmNsdWRlIDxicGYvYnBmX2NvcmVfcmVhZC5oPg0KPiA+ICsjaW5jbHVkZSA8YnBmL2JwZl9o
ZWxwZXJzLmg+DQo+ID4gKw0KPiA+ICsvKiBGcm9tIHVhcGkvbGludXgvZG1hLWJ1Zi5oICovDQo+
ID4gKyNkZWZpbmUgRE1BX0JVRl9OQU1FX0xFTiAzMg0KPiA+ICsNCj4gPiArY2hhciBfbGljZW5z
ZVtdIFNFQygibGljZW5zZSIpID0gIkdQTCI7DQo+ID4gKw0KPiA+ICsvKg0KPiA+ICsgKiBGaWVs
ZHMgb3V0cHV0IGJ5IHRoaXMgaXRlcmF0b3IgYXJlIGRlbGltaXRlZCBieSBuZXdsaW5lcy4gQ29u
dmVydCBhbnkNCj4gPiArICogbmV3bGluZXMgaW4gdXNlci1wcm92aWRlZCBwcmludGVkIHN0cmlu
Z3MgdG8gc3BhY2VzLg0KPiA+ICsgKi8NCj4gPiArc3RhdGljIHZvaWQgc2FuaXRpemVfc3RyaW5n
KGNoYXIgKnNyYywgc2l6ZV90IHNpemUpDQo+ID4gK3sNCj4gPiArICAgICAgIGZvciAoY2hhciAq
YyA9IHNyYzsgKmMgJiYgKHNpemVfdCkoYyAtIHNyYykgPCBzaXplOyArK2MpDQo+DQo+IFdlIHNo
b3VsZCBkbyB0aGUgc2l6ZSBjaGVjayBmaXJzdCwgcmlnaHQ/IElPVzoNCj4NCj4gZm9yIChjaGFy
ICpjID0gc3JjOyAoc2l6ZV90KShjIC0gc3JjKSA8IHNpemUgJiYgKmM7ICsrYykNCg0KWWVhaCBp
ZiB5b3UgY2FsbCB0aGUgZnVuY3Rpb24gd2l0aCBzaXplID0gMCwgd2hpY2ggaXMga2luZGENCnF1
ZXN0aW9uYWJsZSBhbmQgbm90IHBvc3NpYmxlIHdpdGggdGhlIG5vbi16ZXJvIGFycmF5IHNpemUg
dGhhdCBpcw0KdGllZCB0byBpbW11dGFibGUgVUFQSS4gTGV0J3MgY2hhbmdlIGl0IGxpa2UgeW91
IHN1Z2dlc3QuDQoNCg0KPg0KPiA+ICsgICAgICAgICAgICAgICBpZiAoKmMgPT0gJ1xuJykNCj4g
PiArICAgICAgICAgICAgICAgICAgICAgICAqYyA9ICcgJzsNCj4gPiArfQ0KPiA+ICsNCj4gWy4u
Ll0NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
