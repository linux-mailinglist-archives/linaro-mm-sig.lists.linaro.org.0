Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BA02DAB785B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 May 2025 23:59:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DF01E45918
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 May 2025 21:59:48 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id 818D143C67
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 May 2025 21:59:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=mTBzMz5M;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.50 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43cf3192d8bso8595e9.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 14 May 2025 14:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1747259973; x=1747864773; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RlmeeTfLkq8aEMSuw0FxNnLKvZlTgNOBO6GA5zAYi+M=;
        b=mTBzMz5MmWrtgyHcTKykneIsVqz9aCaGw/IuWzyRnKdc7U5Khm4XYlnYfCMAQ7msOe
         KyMGsGIXog8nBn8ObVHpLNm4K3ZZpqoYUYb0mMGG+/isGRFC5W4Slo4K4TwRs0gr1Cp5
         Fid7zYWJyFdTS/6C+oZMTZG4eKZ/2xcscpKR9VB2ACXFwlAhQh4oN5XzjXyQQfbxZnxW
         GSgfkqsbjbwo/3n4qSuIPRv+Uc6bR1uNibN+q0xzI6JyAtLU8+s2npBHc2RTt2N66E8A
         JMYcxK24rnIPgkXOLjplF7YiZysLu6O+l2q3t1CAQdHjhsmVXogI2T8r/xYjdCMU2F0D
         Fcrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747259973; x=1747864773;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RlmeeTfLkq8aEMSuw0FxNnLKvZlTgNOBO6GA5zAYi+M=;
        b=FekZ/Ood5hudhjtRZmHIaCQYaerKQQGk3qhE17XUy+nv25hfli2RqXllqDikmyN9IA
         mqgSyn5jNjsbuPSVWqsEgCbvxLwTEpAnjOm6hfQRvOYUbkoNrs7tC2/9rXyBy9zRBi2I
         Lbh5oaY3sTSZyrLN2HYjohmX7+AIpeH53t5gB4RUY4ZDbuI6FwpMtUhn41oOT4MU7q67
         TyABTG74l4H+hQcTqJVvoLehWwEx+D0f0ogKw+yBgFMAYPB3zVEY10F7QxkTMZ+rB1F7
         QVKyWLLckFpgsmdvtSsorUSq6HTTBcFR6FssDgpUDPlFbXb43JYQU3c+j40+xMcyEK+K
         tFQg==
X-Forwarded-Encrypted: i=1; AJvYcCWOjxRTfGr2JZujudbmJ7WPBUpQIk/+bNaqSDQg9+NzYEb9906fMRySXzcpeVdI7eHrodnlgU6TAd10dO4h@lists.linaro.org
X-Gm-Message-State: AOJu0Yx3rTiKkI+vOQSa2I7c1xMwYakGLeCjaFVYLfyOupFCJxzKZmWX
	lCyS/EeomlZspQEjPDbva730SZplsmquhHM7tK7zsFEN35rXIbg82AOULLkE8QqMJfRGVrUYYGj
	hbo7qaX7OWe4u1rW7t4q9Nm+zN+OAlcNs89WROOLJ
X-Gm-Gg: ASbGncuuJT5M92j0Lmjab4BOfOP0I2ory0l1ZTaVlirGF6MIvVsZ0/JWpCNc229lvZH
	L4Pi4hHI/aorCXHp1K2iko8IQwkhp/tmyabeflNNL06zQ5TPysIEztHa4KvwbhXTqVZmRt+z2/o
	z8c8gF5wZBXE6p5SsgjtupIoKPwEvGqhHqfLcbTJZu3cbmiJTj5Yx2yg+UuUVgNi8=
X-Google-Smtp-Source: AGHT+IGZFtWR6kaa3m5TftPx8Xk4j/uPH4VRUM2tBcUfEbplvxpzfZrRREM/wd4w9XuTIGx4myNdq/Z7Y6ry3xbYHkg=
X-Received: by 2002:a05:600c:4f43:b0:439:8d84:32ff with SMTP id
 5b1f17b1804b1-442f94eb5a7mr91875e9.3.1747259973405; Wed, 14 May 2025 14:59:33
 -0700 (PDT)
MIME-Version: 1.0
References: <20250513163601.812317-1-tjmercier@google.com> <20250513163601.812317-6-tjmercier@google.com>
 <CAPhsuW50mA3hhirHBiZ2miBeC0uAN=KxyYKBJ_hHgmFx-cvaNw@mail.gmail.com>
In-Reply-To: <CAPhsuW50mA3hhirHBiZ2miBeC0uAN=KxyYKBJ_hHgmFx-cvaNw@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 14 May 2025 14:59:21 -0700
X-Gm-Features: AX0GCFuiegK4tHyclG5bzgCNPpj8LN37JRrILy438Zw7YZxZPwu1YJY1Fclo4i0
Message-ID: <CABdmKX1nxw6=JVfT8wEgsJB692LbaYWrpL-CN=KPQi7K_cKPSA@mail.gmail.com>
To: Song Liu <song@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 818D143C67
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.50:from];
	TAGGED_RCPT(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.50:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,fomichev.me,fb.com];
	FROM_HAS_DN(0.00)[];
	DWL_DNSWL_NONE(0.00)[google.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: DEKGY66AWIKKSDHHMYBP2UWMCSE6YYNB
X-Message-ID-Hash: DEKGY66AWIKKSDHHMYBP2UWMCSE6YYNB
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, skhan@linuxfoundation.org, alexei.starovoitov@gmail.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH bpf-next v6 5/5] selftests/bpf: Add test for open coded dmabuf_iter
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DEKGY66AWIKKSDHHMYBP2UWMCSE6YYNB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXkgMTQsIDIwMjUgYXQgMjowMOKAr1BNIFNvbmcgTGl1IDxzb25nQGtlcm5lbC5v
cmc+IHdyb3RlOg0KPg0KPiBPbiBUdWUsIE1heSAxMywgMjAyNSBhdCA5OjM24oCvQU0gVC5KLiBN
ZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBVc2UgdGhlIHNh
bWUgdGVzdCBidWZmZXJzIGFzIHRoZSB0cmFkaXRpb25hbCBpdGVyYXRvciBhbmQgYSBuZXcgQlBG
IG1hcA0KPiA+IHRvIHZlcmlmeSB0aGUgdGVzdCBidWZmZXJzIGNhbiBiZSBmb3VuZCB3aXRoIHRo
ZSBvcGVuIGNvZGVkIGRtYWJ1Zg0KPiA+IGl0ZXJhdG9yLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1i
eTogVC5KLiBNZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4NCj4gPiBBY2tlZC1ieTogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiA+IEFja2VkLWJ5OiBT
b25nIExpdSA8c29uZ0BrZXJuZWwub3JnPg0KPiA+IC0tLQ0KPiA+ICAuLi4vdGVzdGluZy9zZWxm
dGVzdHMvYnBmL2JwZl9leHBlcmltZW50YWwuaCAgfCAgNSArKysNCj4gPiAgLi4uL3NlbGZ0ZXN0
cy9icGYvcHJvZ190ZXN0cy9kbWFidWZfaXRlci5jICAgIHwgNDEgKysrKysrKysrKysrKysrKysr
Kw0KPiA+ICAuLi4vdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL2RtYWJ1Zl9pdGVyLmMgfCAz
OCArKysrKysrKysrKysrKysrKw0KPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDg0IGluc2VydGlvbnMo
KykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvYnBm
X2V4cGVyaW1lbnRhbC5oIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL2JwZl9leHBlcmlt
ZW50YWwuaA0KPiA+IGluZGV4IDY1MzVjOGFlM2M0Ni4uNWU1MTJhMWQwOWQxIDEwMDY0NA0KPiA+
IC0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9icGZfZXhwZXJpbWVudGFsLmgNCj4g
PiArKysgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvYnBmX2V4cGVyaW1lbnRhbC5oDQo+
ID4gQEAgLTU5MSw0ICs1OTEsOSBAQCBleHRlcm4gaW50IGJwZl9pdGVyX2ttZW1fY2FjaGVfbmV3
KHN0cnVjdCBicGZfaXRlcl9rbWVtX2NhY2hlICppdCkgX193ZWFrIF9fa3N5bQ0KPiA+ICBleHRl
cm4gc3RydWN0IGttZW1fY2FjaGUgKmJwZl9pdGVyX2ttZW1fY2FjaGVfbmV4dChzdHJ1Y3QgYnBm
X2l0ZXJfa21lbV9jYWNoZSAqaXQpIF9fd2VhayBfX2tzeW07DQo+ID4gIGV4dGVybiB2b2lkIGJw
Zl9pdGVyX2ttZW1fY2FjaGVfZGVzdHJveShzdHJ1Y3QgYnBmX2l0ZXJfa21lbV9jYWNoZSAqaXQp
IF9fd2VhayBfX2tzeW07DQo+ID4NCj4gPiArc3RydWN0IGJwZl9pdGVyX2RtYWJ1ZjsNCj4gPiAr
ZXh0ZXJuIGludCBicGZfaXRlcl9kbWFidWZfbmV3KHN0cnVjdCBicGZfaXRlcl9kbWFidWYgKml0
KSBfX3dlYWsgX19rc3ltOw0KPiA+ICtleHRlcm4gc3RydWN0IGRtYV9idWYgKmJwZl9pdGVyX2Rt
YWJ1Zl9uZXh0KHN0cnVjdCBicGZfaXRlcl9kbWFidWYgKml0KSBfX3dlYWsgX19rc3ltOw0KPiA+
ICtleHRlcm4gdm9pZCBicGZfaXRlcl9kbWFidWZfZGVzdHJveShzdHJ1Y3QgYnBmX2l0ZXJfZG1h
YnVmICppdCkgX193ZWFrIF9fa3N5bTsNCj4gPiArDQo+ID4gICNlbmRpZg0KPiA+IGRpZmYgLS1n
aXQgYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ190ZXN0cy9kbWFidWZfaXRlci5j
IGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dfdGVzdHMvZG1hYnVmX2l0ZXIuYw0K
PiA+IGluZGV4IGRjNzQwYmQwZTJiZC4uNmMyYjBjM2RiY2Q4IDEwMDY0NA0KPiA+IC0tLSBhL3Rv
b2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9nX3Rlc3RzL2RtYWJ1Zl9pdGVyLmMNCj4gPiAr
KysgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ190ZXN0cy9kbWFidWZfaXRlci5j
DQo+ID4gQEAgLTIxOSwxNCArMjE5LDUyIEBAIHN0YXRpYyB2b2lkIHN1YnRlc3RfZG1hYnVmX2l0
ZXJfY2hlY2tfZGVmYXVsdF9pdGVyKHN0cnVjdCBkbWFidWZfaXRlciAqc2tlbCkNCj4gPiAgICAg
ICAgIGNsb3NlKGl0ZXJfZmQpOw0KPiA+ICB9DQo+ID4NCj4gPiArc3RhdGljIHZvaWQgc3VidGVz
dF9kbWFidWZfaXRlcl9jaGVja19vcGVuX2NvZGVkKHN0cnVjdCBkbWFidWZfaXRlciAqc2tlbCwg
aW50IG1hcF9mZCkNCj4gPiArew0KPiA+ICsgICAgICAgTElCQlBGX09QVFMoYnBmX3Rlc3RfcnVu
X29wdHMsIHRvcHRzKTsNCj4gPiArICAgICAgIGNoYXIga2V5W0RNQV9CVUZfTkFNRV9MRU5dOw0K
PiA+ICsgICAgICAgaW50IGVyciwgZmQ7DQo+ID4gKyAgICAgICBib29sIGZvdW5kOw0KPiA+ICsN
Cj4gPiArICAgICAgIC8qIE5vIG5lZWQgdG8gYXR0YWNoIGl0LCBqdXN0IHJ1biBpdCBkaXJlY3Rs
eSAqLw0KPiA+ICsgICAgICAgZmQgPSBicGZfcHJvZ3JhbV9fZmQoc2tlbC0+cHJvZ3MuaXRlcl9k
bWFidWZfZm9yX2VhY2gpOw0KPiA+ICsNCj4gPiArICAgICAgIGVyciA9IGJwZl9wcm9nX3Rlc3Rf
cnVuX29wdHMoZmQsICZ0b3B0cyk7DQo+ID4gKyAgICAgICBpZiAoIUFTU0VSVF9PSyhlcnIsICJ0
ZXN0X3J1bl9vcHRzIGVyciIpKQ0KPiA+ICsgICAgICAgICAgICAgICByZXR1cm47DQo+ID4gKyAg
ICAgICBpZiAoIUFTU0VSVF9PSyh0b3B0cy5yZXR2YWwsICJ0ZXN0X3J1bl9vcHRzIHJldHZhbCIp
KQ0KPiA+ICsgICAgICAgICAgICAgICByZXR1cm47DQo+ID4gKw0KPiA+ICsgICAgICAgaWYgKCFB
U1NFUlRfT0soYnBmX21hcF9nZXRfbmV4dF9rZXkobWFwX2ZkLCBOVUxMLCBrZXkpLCAiZ2V0IG5l
eHQga2V5IikpDQo+ID4gKyAgICAgICAgICAgICAgIHJldHVybjsNCj4gPiArDQo+ID4gKyAgICAg
ICBkbyB7DQo+ID4gKyAgICAgICAgICAgICAgIEFTU0VSVF9PSyhicGZfbWFwX2xvb2t1cF9lbGVt
KG1hcF9mZCwga2V5LCAmZm91bmQpLCAibG9va3VwIik7DQo+ID4gKyAgICAgICAgICAgICAgIEFT
U0VSVF9UUlVFKGZvdW5kLCAiZm91bmQgdGVzdCBidWZmZXIiKTsNCj4NCj4gVGhpcyBjaGVjayBm
YWlsZWQgb25jZSBpbiB0aGUgQ0ksIG9uIHMzOTA6DQo+DQo+IEVycm9yOiAjODkvMyBkbWFidWZf
aXRlci9vcGVuX2NvZGVkDQo+IDkzMDkgc3VidGVzdF9kbWFidWZfaXRlcl9jaGVja19vcGVuX2Nv
ZGVkOlBBU1M6dGVzdF9ydW5fb3B0cyBlcnIgMCBuc2VjDQo+IDkzMTAgc3VidGVzdF9kbWFidWZf
aXRlcl9jaGVja19vcGVuX2NvZGVkOlBBU1M6dGVzdF9ydW5fb3B0cyByZXR2YWwgMCBuc2VjDQo+
IDkzMTEgc3VidGVzdF9kbWFidWZfaXRlcl9jaGVja19vcGVuX2NvZGVkOlBBU1M6Z2V0IG5leHQg
a2V5IDAgbnNlYw0KPiA5MzEyIHN1YnRlc3RfZG1hYnVmX2l0ZXJfY2hlY2tfb3Blbl9jb2RlZDpQ
QVNTOmxvb2t1cCAwIG5zZWMNCj4gOTMxMyBzdWJ0ZXN0X2RtYWJ1Zl9pdGVyX2NoZWNrX29wZW5f
Y29kZWQ6RkFJTDpmb3VuZCB0ZXN0IGJ1ZmZlcg0KPiB1bmV4cGVjdGVkIGZvdW5kIHRlc3QgYnVm
ZmVyOiBnb3QgRkFMU0UNCj4NCj4gQnV0IGl0IHBhc3NlZCBpbiB0aGUgcmVydW4uIEl0IGlzIHBy
b2JhYmx5IGEgYml0IGZsYWtleS4gTWF5YmUgd2UgbmVlZCBzb21lDQo+IGJhcnJpZXIgc29tZXdo
ZXJlLg0KPg0KPiBIZXJlIGlzIHRoZSBmYWlsdXJlOg0KPg0KPiBodHRwczovL2dpdGh1Yi5jb20v
a2VybmVsLXBhdGNoZXMvYnBmL2FjdGlvbnMvcnVucy8xNTAwMjA1ODgwOC9qb2IvNDIyMzQ4NjQ3
NTQNCj4NCj4gVG8gc2VlIHRoZSBsb2csIHlvdSBuZWVkIHRvIGxvZyBpbiBHaXRIdWIuDQo+DQo+
IFRoYW5rcywNCj4gU29uZw0KDQpUaGFua3MsIHllYWggSSBoYXZlIGJlZW4gdHJ5aW5nIHRvIHJ1
biB0aGlzIGxvY2FsbHkgdG9kYXkgYnV0IHN0aWxsDQp3b3JraW5nIG9uIHNldHRpbmcgdXAgYW4g
ZW52aXJvbm1lbnQgZm9yIGl0LiBEYW5pZWwgWHUgdGhvdWdodGZ1bGx5DQpzdWdnZXN0ZWQgSSB1
c2UgYSBnaXRodWIgUFIgdG8gdHJpZ2dlciBDSSwgYnV0IEkgdHJpZWQgdGhhdCBsYXN0IHdlZWsN
CndpdGhvdXQgc3VjY2VzczogaHR0cHM6Ly9naXRodWIuY29tL2tlcm5lbC1wYXRjaGVzL2JwZi9w
dWxsLzg5MTANCg0KSSdtIG5vdCBzdXJlIGlmIHRoaXMgaXMgdGhlIGNhdXNlIChkb2Vzbid0IHNo
b3cgdXAgb24gdGhlIHJ1bnMgdGhhdA0KcGFzcykgYnV0IEkgaGF2ZSBubyBpZGVhIHdoeSB0aGF0
IHdvdWxkIGJlIGludGVybWl0dGVudGx5IGZhaWxpbmc6DQpsaWJicGY6IEVycm9yIGluIGJwZl9j
cmVhdGVfbWFwX3hhdHRyKHRlc3RidWZfaGFzaCk6IC1FSU5WQUwuIFJldHJ5aW5nDQp3aXRob3V0
IEJURi4NCg0KDQoNCg0KDQo+ID4gKyAgICAgICB9IHdoaWxlIChicGZfbWFwX2dldF9uZXh0X2tl
eShtYXBfZmQsIGtleSwga2V5KSk7DQo+ID4gK30NCj4NCj4gWy4uLl0NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
