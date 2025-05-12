Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D243AB447C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 May 2025 21:11:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E09CE45F53
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 May 2025 19:10:58 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by lists.linaro.org (Postfix) with ESMTPS id 4285545F53
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 May 2025 19:10:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=CE44MjCs;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.42 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43d5f10e1aaso11705e9.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 12 May 2025 12:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1747077044; x=1747681844; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hm/PPoZA1XOQh100d62s3HDVZNFFqoCK54oYIZBXFgE=;
        b=CE44MjCsISdR+Yky6Q7qTEZGwEqCoQIIaKfENMRX8Q3M44sf4WbvzPNrOTKte1eRrF
         3j5Pv/aqUbRsMS12pkrNT1NITZfOUbgToVZQ19DAX9Eq6CAKBu+NH0Wx5IJnbGpyHzx9
         qm5cRWfeKhsgYLbtJOiQGx474Puwapfvv/IYr1z96zboqbsNaojtQSYbelTpmsKhpiDC
         YTbW2LFlneiR+AFUF6HqGL0sNeqxEk1zcj22tJjVYwUYdzxGpPlvw2EEQ8KmD5JuajHU
         9VfWFeE0NMBRL5Y4xEyWuCuHBBVrd9H7Q5OkVXqjCb1wxVsrRfGqDhvZ2AfyEHaeRr1w
         A+3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747077044; x=1747681844;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hm/PPoZA1XOQh100d62s3HDVZNFFqoCK54oYIZBXFgE=;
        b=rQZ8v2gLXL2Ne3oA4bMk8CNxbmDMkdqbeR81IB7v7TeE4Vi8csgYxaI8dmpi3hIrVD
         tjBfShnHhFS30rakt+iCRm3TqT2qdo/LJnoHFci1Yb7ngGZQ/lMyU7GZ6ZTufqcr1zAo
         qI4Agc3zvj3FqTYjkBvCoOszbL53tGkIgLGSYBjeSZwplCY4bNYE1w/dSHt5DI5aQyDI
         HmMWrk9Vdy+7P6+R9yxOzTlAz4edv27AdMkgmR4MKGHPhVm14Wjc+6W0V+/3twC7DbPM
         qrjjhU4Q2lQ/Q6JqxZ9h8lTfZTP80c48gIlHIgqDbcXF8r10BHmK+uzeLWs5vZycm8xe
         B8Vg==
X-Forwarded-Encrypted: i=1; AJvYcCVWvvKsITV2JYyK5Vt9vqlTvYwMhXEA4JYBAffLjvffaAfkMUkWWH+R6eWuS7IfEDpxS5XPDZbNt9epcSlE@lists.linaro.org
X-Gm-Message-State: AOJu0YxMbE9hj+LGa4GDmgFJru0vvdbAbpKlVZx7WM1OzD0HiXcd/8KI
	MUut4k37K3DcjNhReucvQFNnh7vhvXD1J2RBsGP/ImavwEwswtRbYDyIeks6HEd5oWaQBydbDCh
	68A28p2MO6QR+NpGRtpoOs3Rg00R/EqSghIeW
X-Gm-Gg: ASbGncuD2YoCg/RS1Thlcb4r/qHqQ3rnx+dcHHao3vYZYrc6PCbQNQJai8FI/VUjir5
	YRMrVfOgi8t3KmAxo7MFIEmUtC/1CFeI4kwQv0StCNSMthWKbXkmZZ7nZaaskxHhDSXyWJQhNlK
	nKC8VqmRG2Ia0Cod9UAXS7DjCNZT9Mx9P+oF40l3hDXQ==
X-Google-Smtp-Source: AGHT+IEhJna6SF6AWqidUoCT2Jm/s8v5ZVMXBVF44DHVGLlvS0U5wRATEd00vS/y2Vx87UPbRiSHB0qxO5c6fEFlwVs=
X-Received: by 2002:a05:600c:308a:b0:43b:c2cc:5075 with SMTP id
 5b1f17b1804b1-442eb5c4ef0mr95615e9.5.1747077044127; Mon, 12 May 2025 12:10:44
 -0700 (PDT)
MIME-Version: 1.0
References: <20250512174036.266796-1-tjmercier@google.com> <20250512174036.266796-5-tjmercier@google.com>
 <CAPhsuW6TUogokra2mJQG6jeuZ1_RZPwr4xGbBOUJZBUg9AqW3g@mail.gmail.com>
In-Reply-To: <CAPhsuW6TUogokra2mJQG6jeuZ1_RZPwr4xGbBOUJZBUg9AqW3g@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 12 May 2025 12:10:31 -0700
X-Gm-Features: AX0GCFuAa1TiNYsj-36X4VBRhiCNdv4k59_jqcRfoVVDhkJg1nA6Timls4X60Xs
Message-ID: <CABdmKX200iB3+_6mVQpCH7agdcwsjbfR5cJKRyySuu-2BsL2gA@mail.gmail.com>
To: Song Liu <song@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4285545F53
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.42:from];
	TAGGED_RCPT(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.42:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,fomichev.me,fb.com];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[mail.gmail.com:mid,mail-wm1-f42.google.com:helo,mail-wm1-f42.google.com:rdns];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 5J7KLUMTWTEKNDXPHCUSXGPXSIW7I3L4
X-Message-ID-Hash: 5J7KLUMTWTEKNDXPHCUSXGPXSIW7I3L4
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, skhan@linuxfoundation.org, alexei.starovoitov@gmail.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH bpf-next v5 4/5] selftests/bpf: Add test for dmabuf_iter
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5J7KLUMTWTEKNDXPHCUSXGPXSIW7I3L4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXkgMTIsIDIwMjUgYXQgMTE6NTjigK9BTSBTb25nIExpdSA8c29uZ0BrZXJuZWwu
b3JnPiB3cm90ZToNCj4NCj4gT24gTW9uLCBNYXkgMTIsIDIwMjUgYXQgMTA6NDHigK9BTSBULkou
IE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPiB3cm90ZToNCj4gWy4uLl0NCj4gPiArDQo+
ID4gK3N0YXRpYyBpbnQgdWRtYWJ1ZjsNCj4NCj4gc3RhdGljIGludCB1ZG1hYnVmID0gLTE7DQo+
DQo+ID4gK3N0YXRpYyBjb25zdCBjaGFyIHVkbWFidWZfdGVzdF9idWZmZXJfbmFtZVtETUFfQlVG
X05BTUVfTEVOXSA9ICJ1ZG1hYnVmX3Rlc3RfYnVmZmVyX2Zvcl9pdGVyIjsNCj4gPiArc3RhdGlj
IHNpemVfdCB1ZG1hYnVmX3Rlc3RfYnVmZmVyX3NpemU7DQo+ID4gK3N0YXRpYyBpbnQgc3lzaGVh
cF9kbWFidWY7DQo+DQo+IHN0YXRpYyBpbnQgc3lzaGVhcF9kbWFidWYgPSAtMTsNCg0KV2UgZG9u
J3QgcmVhbGx5IG5lZWQgdGhlIC0xIHNpbmNlIHRoZSByZXdvcmsgaW4gdGhpcyB2ZXJzaW9uDQpp
bml0aWFsaXplcyB0aGVtIHRvIC0xIG9uIGZhaWx1cmUsIGJ1dCBJJ2xsIGFkZCBpdCBhbnl3YXku
DQoNCj4gPiArc3RhdGljIGNvbnN0IGNoYXIgc3lzaGVhcF90ZXN0X2J1ZmZlcl9uYW1lW0RNQV9C
VUZfTkFNRV9MRU5dID0gInN5c2hlYXBfdGVzdF9idWZmZXJfZm9yX2l0ZXIiOw0KPiA+ICtzdGF0
aWMgc2l6ZV90IHN5c2hlYXBfdGVzdF9idWZmZXJfc2l6ZTsNCj4gPiArDQo+ID4gK3N0YXRpYyBp
bnQgY3JlYXRlX3VkbWFidWYodm9pZCkNCj4gPiArew0KPiA+ICsgICAgICAgc3RydWN0IHVkbWFi
dWZfY3JlYXRlIGNyZWF0ZTsNCj4NCj4gbml0OiB6ZXJvIGluaXRpYWxpemUgY3JlYXRlIHRvIGJl
IGZ1dHVyZSBwcm9vZi4NCg0KT2ssIGRvbmUuDQoNCj4NCj4gPiArICAgICAgIGludCBkZXZfdWRt
YWJ1ZiwgbWVtZmQsIGxvY2FsX3VkbWFidWY7DQo+ID4gKw0KPiA+ICsgICAgICAgdWRtYWJ1Zl90
ZXN0X2J1ZmZlcl9zaXplID0gMTAgKiBnZXRwYWdlc2l6ZSgpOw0KPg0KPiBbLi4uXQ0KPg0KPiA+
ICtzdGF0aWMgdm9pZCBzdWJ0ZXN0X2RtYWJ1Zl9pdGVyX2NoZWNrX2RlZmF1bHRfaXRlcihzdHJ1
Y3QgZG1hYnVmX2l0ZXIgKnNrZWwpDQo+ID4gK3sNCj4gPiArICAgICAgIGJvb2wgZm91bmRfdGVz
dF9zeXNoZWFwX2RtYWJ1ZiA9IGZhbHNlOw0KPiA+ICsgICAgICAgYm9vbCBmb3VuZF90ZXN0X3Vk
bWFidWYgPSBmYWxzZTsNCj4gPiArICAgICAgIHN0cnVjdCBEbWFidWZJbmZvIGJ1ZmluZm87DQo+
ID4gKyAgICAgICBzaXplX3QgbGluZXNpemUgPSAwOw0KPiA+ICsgICAgICAgY2hhciAqbGluZSA9
IE5VTEw7DQo+ID4gKyAgICAgICBGSUxFICppdGVyX2ZpbGU7DQo+ID4gKyAgICAgICBpbnQgaXRl
cl9mZCwgZiA9IElOT0RFOw0KPiA+ICsNCj4gPiArICAgICAgIGl0ZXJfZmQgPSBicGZfaXRlcl9j
cmVhdGUoYnBmX2xpbmtfX2ZkKHNrZWwtPmxpbmtzLmRtYWJ1Zl9jb2xsZWN0b3IpKTsNCj4gPiAr
ICAgICAgIEFTU0VSVF9PS19GRChpdGVyX2ZkLCAiaXRlcl9jcmVhdGUiKTsNCj4NCj4gU2hvdWxk
IHdlIGNoZWNrIEFTU0VSVF9PS19GRCgpIGFuZCBleGl0IGVhcmx5IG9uDQo+IGZhaWx1cmVzPw0K
DQpXZSBzaG91bGQgZmFsbHRocm91Z2ggb24gZXJyb3IsIGJ1dCBsZXQncyBhZGQgdGhlIGVhcmx5
IG91dC4NCg0KPg0KPiA+ICsNCj4gPiArICAgICAgIGl0ZXJfZmlsZSA9IGZkb3BlbihpdGVyX2Zk
LCAiciIpOw0KPiA+ICsgICAgICAgQVNTRVJUX09LX1BUUihpdGVyX2ZpbGUsICJmZG9wZW4iKTsN
Cj4NCj4gU2FtZSBoZXJlLg0KPiBbLi4uXQ0KPiA+ICsvKg0KPiA+ICsgKiBGaWVsZHMgb3V0cHV0
IGJ5IHRoaXMgaXRlcmF0b3IgYXJlIGRlbGltaXRlZCBieSBuZXdsaW5lcy4gQ29udmVydCBhbnkN
Cj4gPiArICogbmV3bGluZXMgaW4gdXNlci1wcm92aWRlZCBwcmludGVkIHN0cmluZ3MgdG8gc3Bh
Y2VzLg0KPiA+ICsgKi8NCj4gPiArc3RhdGljIHZvaWQgc2FuaXRpemVfc3RyaW5nKGNoYXIgKnNy
Yywgc2l6ZV90IHNpemUpDQo+ID4gK3sNCj4gPiArICAgICAgIGZvciAoY2hhciAqYyA9IHNyYzsg
YyAmJiAoc2l6ZV90KShjIC0gc3JjKSA8IHNpemU7ICsrYykNCj4NCj4gU2hvdWxkIHRoaXMgYmU6
DQo+DQo+ICAgZm9yIChjaGFyICpjID0gc3JjOyAqYyAmJiAoc2l6ZV90KShjIC0gc3JjKSA8IHNp
emU7ICsrYykNCj4NCj4gPw0KDQpZZXMhIFRoYW5rcy4NCg0KPiBUaGFua3MsDQo+IFNvbmcNCj4N
Cj4gWy4uLl0NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
