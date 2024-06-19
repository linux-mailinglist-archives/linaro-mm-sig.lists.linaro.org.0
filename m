Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FD190E248
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 06:20:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 76D8244815
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 04:20:02 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	by lists.linaro.org (Postfix) with ESMTPS id 46F593F3AC
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jun 2024 04:19:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=U3HLjI8L;
	spf=pass (lists.linaro.org: domain of tfiga@chromium.org designates 209.85.208.179 as permitted sender) smtp.mailfrom=tfiga@chromium.org;
	dmarc=pass (policy=none) header.from=chromium.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ebe3fb5d4dso3848691fa.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jun 2024 21:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718770798; x=1719375598; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/U+cxAMgDXTuaBoZjBUZI7zxhscWza7MiDHr3eL9Des=;
        b=U3HLjI8Lq/3vvc0NMInctuvndYJg7meAH4MNtRslNrKBxOkkE01eFzKH6StHwnfnDp
         FcLxbT+yg3BY4FHk7We+wr4EWPrCz4W5pgNWE2nQId5rJ3CXG/EKGo6uQylUzuNd9IDz
         0pAjOSAH3pVfT//extk/djKn2YW8oVY0C5bAY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718770798; x=1719375598;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/U+cxAMgDXTuaBoZjBUZI7zxhscWza7MiDHr3eL9Des=;
        b=U1CNglHuzrIayQKuKXqMc7Rz/PcR6Nlp1D6GDOSILvGXNDLdV+4Zvp3LN0wUe+lliS
         eWY9U/C2BDD7dMFo0F5gzS8/IKj0tmgf7Vr9xLm81gNKPreFGkFYEb4rRQ87m4hp0aZa
         lpcdcs4HNqwFpY05We1REAYmI/ruDiIrqef5sZi3ffeEwNfkJnodawPJQiWZU4v/S83u
         LfgDnwbbdM0qyMWWec3FQlCSeOuTvSqK8bK3xe4k6ynTEPLVzof70RKoU0384gYQxIU0
         grAxGxciz4svvbuxjOFg16FzMDeQOCNCUYLFFoEd1X/2lNpxUSc9cKgj+GDJWk72WRkX
         +kcw==
X-Forwarded-Encrypted: i=1; AJvYcCW694+JbSRgg88xM/su96hXyuUaRHsB6/VC4XMqfIMgp1Na2zpgjzMoTtABOSTAWs6zvAJeJf4vhpTOhFpDLJJ6aWEJ8restBZwoWaZ/QE=
X-Gm-Message-State: AOJu0Yzm441cN/9PErH5tR1jfZKB0GDc1dsNUfnqP07Zew8AtAq/6pRH
	h7QQJdvBuMhwAUVRzcYtQ8XbbSK2pZbWRcQ1IbHM8JwnCTlr6//7quW0HXxuEz7E5MK8t/1HMm7
	WeIo+
X-Google-Smtp-Source: AGHT+IF5kNUMEF4WszxB1pBLAKJ45Y5cftru/YmconEhkqxx1k2I1ZMq0WEy3CvEYPUSANlgbN2Z4w==
X-Received: by 2002:a05:651c:22d:b0:2ec:1a6:7d29 with SMTP id 38308e7fff4ca-2ec346b28e3mr11638461fa.21.1718770797599;
        Tue, 18 Jun 2024 21:19:57 -0700 (PDT)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com. [209.85.208.174])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec05c9adc1sm18715411fa.138.2024.06.18.21.19.57
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 21:19:57 -0700 (PDT)
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2eae5b2ddd8so4180351fa.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jun 2024 21:19:57 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV+CSv9gnzStEQKC6ufWKDl9U4g7UHc2ocZuVtWo5l7OlmHqae7CnsDb8pi0wkrKy2Dp3ip5N5TFThkMgDBLqR/YhqxTphU2W08GW4VqMc=
X-Received: by 2002:a17:907:2087:b0:a6f:53eb:dbe0 with SMTP id
 a640c23a62f3a-a6f9506f6f4mr245886666b.26.1718770776170; Tue, 18 Jun 2024
 21:19:36 -0700 (PDT)
MIME-Version: 1.0
References: <20240618073004.3420436-1-tao.jiang_2@nxp.com> <CAAFQd5B_RTHsMwMdD59RAAyFne_0Ok_A4ExdkVOgi=G6-UGfRQ@mail.gmail.com>
 <036bf0d7f657cae444d20ea6d279b47e3bf0164e.camel@ndufresne.ca>
In-Reply-To: <036bf0d7f657cae444d20ea6d279b47e3bf0164e.camel@ndufresne.ca>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 19 Jun 2024 13:19:14 +0900
X-Gmail-Original-Message-ID: <CAAFQd5DfbqOkZzPfCNRMGeMgv2NfM6WENWXeLUNsuMgkzeBQKw@mail.gmail.com>
Message-ID: <CAAFQd5DfbqOkZzPfCNRMGeMgv2NfM6WENWXeLUNsuMgkzeBQKw@mail.gmail.com>
To: Nicolas Dufresne <nicolas@ndufresne.ca>, m.szyprowski@samsung.com,
	hverkuil-cisco@xs4all.nl
X-Rspamd-Queue-Id: 46F593F3AC
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[nxp.com:email,ndufresne.ca:email];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[ndufresne.ca,samsung.com,xs4all.nl];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[nxp.com,kernel.org,pengutronix.de,gmail.com,oss.nxp.com,lists.linux.dev,vger.kernel.org,linaro.org,amd.com,lists.freedesktop.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_RCPT(0.00)[dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.179:from];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: N72VIUGUJ22OPBSKOHD4MITHIRYVZ5HG
X-Message-ID-Hash: N72VIUGUJ22OPBSKOHD4MITHIRYVZ5HG
X-MailFrom: tfiga@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: TaoJiang <tao.jiang_2@nxp.com>, mchehab@kernel.org, shawnguo@kernel.org, robh+dt@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com, xiahong.bao@nxp.com, eagle.zhou@nxp.com, ming.qian@oss.nxp.com, imx@lists.linux.dev, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Ming Qian <ming.qian@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] media: videobuf2: sync caches for dmabuf memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/N72VIUGUJ22OPBSKOHD4MITHIRYVZ5HG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBKdW4gMTksIDIwMjQgYXQgMToyNOKAr0FNIE5pY29sYXMgRHVmcmVzbmUgPG5pY29s
YXNAbmR1ZnJlc25lLmNhPiB3cm90ZToNCj4NCj4gTGUgbWFyZGkgMTgganVpbiAyMDI0IMOgIDE2
OjQ3ICswOTAwLCBUb21hc3ogRmlnYSBhIMOpY3JpdCA6DQo+ID4gSGkgVGFvSmlhbmcsDQo+ID4N
Cj4gPiBPbiBUdWUsIEp1biAxOCwgMjAyNCBhdCA0OjMw4oCvUE0gVGFvSmlhbmcgPHRhby5qaWFu
Z18yQG54cC5jb20+IHdyb3RlOg0KPiA+ID4NCj4gPiA+IEZyb206IE1pbmcgUWlhbiA8bWluZy5x
aWFuQG54cC5jb20+DQo+ID4gPg0KPiA+ID4gV2hlbiB0aGUgbWVtb3J5IHR5cGUgaXMgVkIyX01F
TU9SWV9ETUFCVUYsIHRoZSB2NGwyIGRldmljZSBjYW4ndCBrbm93DQo+ID4gPiB3aGV0aGVyIHRo
ZSBkbWEgYnVmZmVyIGlzIGNvaGVyZW50IG9yIHN5bmNocm9uaXplZC4NCj4gPiA+DQo+ID4gPiBU
aGUgdmlkZW9idWYyLWNvcmUgd2lsbCBza2lwIGNhY2hlIHN5bmNzIGFzIGl0IHRoaW5rIHRoZSBE
TUEgZXhwb3J0ZXINCj4gPiA+IHNob3VsZCB0YWtlIGNhcmUgb2YgY2FjaGUgc3luY3MNCj4gPiA+
DQo+ID4gPiBCdXQgaW4gZmFjdCBpdCdzIGxpa2VseSB0aGF0IHRoZSBjbGllbnQgZG9lc24ndA0K
PiA+ID4gc3luY2hyb25pemUgdGhlIGRtYSBidWYgYmVmb3JlIHFidWYoKSBvciBhZnRlciBkcWJ1
ZigpLiBhbmQgaXQncw0KPiA+ID4gZGlmZmljdWx0IHRvIGZpbmQgdGhpcyB0eXBlIG9mIGVycm9y
IGRpcmVjdGx5Lg0KPiA+ID4NCj4gPiA+IEkgdGhpbmsgaXQncyBoZWxwZnVsIHRoYXQgdmlkZW9i
dWYyLWNvcmUgY2FuIGNhbGwNCj4gPiA+IGRtYV9idWZfZW5kX2NwdV9hY2Nlc3MoKSBhbmQgZG1h
X2J1Zl9iZWdpbl9jcHVfYWNjZXNzKCkgdG8gaGFuZGxlIHRoZQ0KPiA+ID4gY2FjaGUgc3luY3Mu
DQo+ID4gPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogTWluZyBRaWFuIDxtaW5nLnFpYW5AbnhwLmNv
bT4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFRhb0ppYW5nIDx0YW8uamlhbmdfMkBueHAuY29tPg0K
PiA+ID4gLS0tDQo+ID4gPiAgLi4uL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWNv
cmUuYyAgIHwgMjIgKysrKysrKysrKysrKysrKysrKw0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAy
MiBpbnNlcnRpb25zKCspDQo+ID4gPg0KPiA+DQo+ID4gU29ycnksIHRoYXQgcGF0Y2ggaXMgaW5j
b3JyZWN0LiBJIGJlbGlldmUgeW91J3JlIG1pc3VuZGVyc3RhbmRpbmcgdGhlDQo+ID4gd2F5IERN
QS1idWYgYnVmZmVycyBzaG91bGQgYmUgbWFuYWdlZCBpbiB0aGUgdXNlcnNwYWNlLiBJdCdzIHRo
ZQ0KPiA+IHVzZXJzcGFjZSByZXNwb25zaWJpbGl0eSB0byBjYWxsIHRoZSBETUFfQlVGX0lPQ1RM
X1NZTkMgaW9jdGwgWzFdIHRvDQo+ID4gc2lnbmFsIHN0YXJ0IGFuZCBlbmQgb2YgQ1BVIGFjY2Vz
cyB0byB0aGUga2VybmVsIGFuZCBpbXBseSBuZWNlc3NhcnkNCj4gPiBjYWNoZSBzeW5jaHJvbml6
YXRpb24uDQo+ID4NCj4gPiBbMV0gaHR0cHM6Ly9kb2NzLmtlcm5lbC5vcmcvZHJpdmVyLWFwaS9k
bWEtYnVmLmh0bWwjZG1hLWJ1ZmZlci1pb2N0bHMNCj4gPg0KPiA+IFNvLCByZWFsbHkgc29ycnks
IGJ1dCBpdCdzIGEgTkFLLg0KPg0KPg0KPg0KPiBUaGlzIHBhdGNoICpjb3VsZCogbWFrZSBzZW5z
ZSBpZiBpdCB3YXMgaW5zaWRlIFVWQyBEcml2ZXIgYXMgYW4gZXhhbXBsZSwgYXMgdGhpcw0KPiBk
cml2ZXIgY2FuIGltcG9ydCBkbWFidWYsIHRvIENQVSBtZW1jcHksIGFuZCBkb2VzIG9taXRzIHRo
ZSByZXF1aXJlZCBzeW5jIGNhbGxzDQo+ICh1bmxlc3MgdGhhdCBnb3QgYWRkZWQgcmVjZW50bHks
IEkgY2FuIGVhc2lseSBoYXZlIG1pc3NlZCBpdCkuDQoNClllYWgsIGN1cnJlbnRseSBWNEwyIGRy
aXZlcnMgZG9uJ3QgY2FsbCB0aGUgaW4ta2VybmVsDQpkbWFfYnVmX3tiZWdpbixlbmR9X2NwdV9h
Y2Nlc3MoKSB3aGVuIHRoZXkgbmVlZCB0byBhY2Nlc3MgdGhlIGJ1ZmZlcnMNCmZyb20gdGhlIENQ
VSwgd2hpbGUgbXkgcXVpY2sgZ3JlcCBbMV0gcmV2ZWFscyB0aGF0IHdlIGhhdmUgNjggZmlsZXMN
CnJldHJpZXZpbmcgcGxhbmUgdmFkZHIgYnkgY2FsbGluZyB2YjJfcGxhbmVfdmFkZHIoKSAobm90
IG5lY2Vzc2FyaWx5IGENCjEwMCUgZ3VhcmFudGVlIG9mIENQVSBhY2Nlc3MgYmVpbmcgZG9uZSwg
YnV0IHJhdGhlciBsaWtlbHkgc28pLg0KDQpJIGFsc28gcmVwZWF0ZWQgdGhlIHNhbWUgdGhpbmcg
d2l0aCBWQjJfRE1BQlVGIFsyXSBhbmQgdHJpZWQgdG8NCmF0dHJpYnV0ZSBib3RoIGxpc3RzIHRv
IHNwZWNpZmljIGRyaXZlcnMgKGJ5IHJldGFpbmluZyB0aGUgcGF0aCB1bnRpbA0KdGhlIGZpcnN0
IC0gb3IgXyBbM107IHdoaWNoIHNlZW1lZCB0byBiZSByZWxhdGl2ZWx5IGFjY3VyYXRlKSwgbGVh
ZGluZw0KdG8gdGhlIGZvbGxvd2luZyBkcml2ZXJzIHRoYXQgY2xhaW0gc3VwcG9ydCBmb3IgRE1B
QlVGIHdoaWxlIGFsc28NCnJldHJpZXZpbmcgcGxhbmUgdmFkZHIgKHdpdGhvdXQgcHJvcGVyIHN5
bmNocm9uaXphdGlvbiAtIG5vIGRyaXZlcnMNCmN1cnJlbnRseSBjYWxsIGFueSBiZWdpbi9lbmQg
Q1BVIGFjY2Vzcyk6DQoNCiBpMmMvdmlkZW8NCiBwY2kvYnQ4eHgvYnR0dg0KIHBjaS9jb2JhbHQv
Y29iYWx0DQogcGNpL2N4MTgvY3gxOA0KIHBjaS90dzU4NjQvdHc1ODY0DQogcGNpL3R3Njg2eC90
dzY4NngNCiBwbGF0Zm9ybS9hbGxlZ3JvDQogcGxhdGZvcm0vYW1waGlvbi92cHUNCiBwbGF0Zm9y
bS9jaGlwcw0KIHBsYXRmb3JtL2ludGVsL3B4YQ0KIHBsYXRmb3JtL21hcnZlbGwvbWNhbQ0KIHBs
YXRmb3JtL21lZGlhdGVrL2pwZWcvbXRrDQogcGxhdGZvcm0vbWVkaWF0ZWsvdmNvZGVjL2RlY29k
ZXIvbXRrDQogcGxhdGZvcm0vbWVkaWF0ZWsvdmNvZGVjL2VuY29kZXIvbXRrDQogcGxhdGZvcm0v
bnV2b3Rvbi9ucGNtDQogcGxhdGZvcm0vbnZpZGlhL3RlZ3JhDQogcGxhdGZvcm0vbnhwL2lteA0K
IHBsYXRmb3JtL3JlbmVzYXMvcmNhcg0KIHBsYXRmb3JtL3JlbmVzYXMvdnNwMS92c3AxDQogcGxh
dGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMQ0KIHBsYXRmb3JtL3NhbXN1bmcvZXh5bm9zNA0K
IHBsYXRmb3JtL3NhbXN1bmcvczVwDQogcGxhdGZvcm0vc3Qvc3RpL2RlbHRhL2RlbHRhDQogcGxh
dGZvcm0vc3Qvc3RpL2h2YS9odmENCiBwbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm8NCiB1c2Iv
YXUwODI4L2F1MDgyOA0KIHVzYi9jeDIzMXh4L2N4MjMxeHgNCiB1c2IvZHZiDQogdXNiL2VtMjh4
eC9lbTI4eHgNCiB1c2IvZ3NwY2EvZ3NwY2EuYw0KIHVzYi9oYWNrcmYvaGFja3JmLmMNCiB1c2Iv
c3RrMTE2MC9zdGsxMTYwDQogdXNiL3V2Yy91dmMNCg0Kd2hpY2ggbWVhbnMgd2UgcG90ZW50aWFs
bHkgaGF2ZSB+MzAgZHJpdmVycyB3aGljaCBsaWtlbHkgZG9uJ3QgaGFuZGxlDQppbXBvcnRlZCBE
TUFCVUZzIGNvcnJlY3RseSAodGhlcmUgaXMgc3RpbGwgYSBjaGFuY2UgdGhhdCBETUFCVUYgaXMN
CmFkdmVydGlzZWQgZm9yIG9uZSBxdWV1ZSwgd2hpbGUgdmFkZHIgaXMgdXNlZCBmb3IgYW5vdGhl
cikuDQoNCkkgdGhpbmsgd2UgaGF2ZSB0d28gb3B0aW9uczoNCjEpIGFkZCB2YjJfe2JlZ2luL2Vu
ZH1fY3B1X2FjY2VzcygpIGhlbHBlcnMsIGNhcmVmdWxseSBhdWRpdCBlYWNoDQpkcml2ZXIgYW5k
IGFkZCBjYWxscyB0byB0aG9zZQ0KMikgdGFrZSBhIGhlYXZ5IGd1biBhcHByb2FjaCBhbmQganVz
dCBjYWxsIHZiMl9iZWdpbl9jcHVfYWNjZXNzKCkNCndoZW5ldmVyIHZiMl9wbGFuZV92YWRkcigp
IGlzIGNhbGxlZCBhbmQgdGhlbiB2YjJfZW5kX2NwdV9hY2Nlc3MoKQ0Kd2hlbmV2ZXIgdmIyX2J1
ZmZlcl9kb25lKCkgaXMgY2FsbGVkIChpZiBiZWdpbiB3YXMgY2FsbGVkIGJlZm9yZSkuDQoNClRo
ZSBsYXR0ZXIgaGFzIHRoZSBkaXNhZHZhbnRhZ2Ugb2YgZHJpdmVycyBub3QgaGF2aW5nIGNvbnRy
b2wgb3ZlciB0aGUNCnRpbWluZyBvZiB0aGUgY2FjaGUgc3luYywgc28gY291bGQgZW5kIHVwIHdp
dGggbGVzcyB0aGFuIG9wdGltYWwNCnBlcmZvcm1hbmNlLiBBbHNvIHRoZXJlIGNvdWxkIGJlIHNv
bWUgbW9yZSBjb21wbGV4IGNhc2VzLCB3aGVyZSB0aGUNCmRyaXZlciBuZWVkcyB0byBtaXggRE1B
IGFuZCBDUFUgYWNjZXNzZXMgdG8gdGhlIGJ1ZmZlciwgc28gdGhlIGZpeGVkDQpzZXF1ZW5jZSBq
dXN0IHdvdWxkbid0IHdvcmsgZm9yIHRoZW0uIChCdXQgdGhlbiB0aGV5IGp1c3Qgd291bGRuJ3QN
CndvcmsgdG9kYXkgZWl0aGVyLikNCg0KSGFucywgTWFyZWssIGRvIHlvdSBoYXZlIGFueSB0aG91
Z2h0cz8gKEknZCBwZXJzb25hbGx5IGp1c3QgZ28gd2l0aCAyDQphbmQgaWYgYW55IGRyaXZlciBp
biB0aGUgZnV0dXJlIG5lZWRzIHNvbWV0aGluZyBlbHNlLCB0aGV5IGNvdWxkIGNhbGwNCmJlZ2lu
L2VuZCBDUFUgYWNjZXNzIG1hbnVhbGx5LikNCg0KWzFdIGdpdCBncmVwIHZiMl9wbGFuZV92YWRk
ciB8IGN1dCAtZCI6IiAtZiAxIHwgc29ydCB8IHVuaXENClsyXSBnaXQgZ3JlcCBWQjJfRE1BQlVG
IHwgY3V0IC1kIjoiIC1mIDEgfCBzb3J0IHwgdW5pcQ0KWzNdIGJ5IHJ1bm5pbmcgWzFdIGFuZCBb
Ml0gdGhyb3VnaCB8IGN1dCAtZCItIiAtZiAxIHwgY3V0IC1kIl8iIC1mIDEgfCB1bmlxDQoNCkJl
c3QsDQpUb21hc3oNCg0KPg0KPiBCdXQgZ2VuZXJhbGx5IHNwZWFraW5nLCBicmFja2V0aW5nIGFs
bCBkcml2ZXIgd2l0aCBDUFUgYWNjZXNzIHN5bmNocm9uaXphdGlvbg0KPiBkb2VzIG5vdCBtYWtl
IHNlbnNlIGluZGVlZCwgc28gSSBzZWNvbmQgdGhlIHJlamVjdGlvbi4NCj4NCj4gTmljb2xhcw0K
Pg0KPiA+DQo+ID4gQmVzdCByZWdhcmRzLA0KPiA+IFRvbWFzeg0KPiA+DQo+ID4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1jb3JlLmMgYi9k
cml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWNvcmUuYw0KPiA+ID4gaW5k
ZXggMzU4ZjFmZTQyOTc1Li40NzM0ZmY5Y2YzY2UgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJz
L21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWNvcmUuYw0KPiA+ID4gKysrIGIvZHJp
dmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1jb3JlLmMNCj4gPiA+IEBAIC0z
NDAsNiArMzQwLDE3IEBAIHN0YXRpYyB2b2lkIF9fdmIyX2J1Zl9tZW1fcHJlcGFyZShzdHJ1Y3Qg
dmIyX2J1ZmZlciAqdmIpDQo+ID4gPiAgICAgICAgIHZiLT5zeW5jZWQgPSAxOw0KPiA+ID4gICAg
ICAgICBmb3IgKHBsYW5lID0gMDsgcGxhbmUgPCB2Yi0+bnVtX3BsYW5lczsgKytwbGFuZSkNCj4g
PiA+ICAgICAgICAgICAgICAgICBjYWxsX3ZvaWRfbWVtb3AodmIsIHByZXBhcmUsIHZiLT5wbGFu
ZXNbcGxhbmVdLm1lbV9wcml2KTsNCj4gPiA+ICsNCj4gPiA+ICsgICAgICAgaWYgKHZiLT5tZW1v
cnkgIT0gVkIyX01FTU9SWV9ETUFCVUYpDQo+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJuOw0K
PiA+ID4gKyAgICAgICBmb3IgKHBsYW5lID0gMDsgcGxhbmUgPCB2Yi0+bnVtX3BsYW5lczsgKytw
bGFuZSkgew0KPiA+ID4gKyAgICAgICAgICAgICAgIHN0cnVjdCBkbWFfYnVmICpkYnVmID0gdmIt
PnBsYW5lc1twbGFuZV0uZGJ1ZjsNCj4gPiA+ICsNCj4gPiA+ICsgICAgICAgICAgICAgICBpZiAo
IWRidWYpDQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsNCj4gPiA+ICsN
Cj4gPiA+ICsgICAgICAgICAgICAgICBkbWFfYnVmX2VuZF9jcHVfYWNjZXNzKGRidWYsIHZiLT52
YjJfcXVldWUtPmRtYV9kaXIpOw0KPiA+ID4gKyAgICAgICB9DQo+ID4gPiAgfQ0KPiA+ID4NCj4g
PiA+ICAvKg0KPiA+ID4gQEAgLTM1Niw2ICszNjcsMTcgQEAgc3RhdGljIHZvaWQgX192YjJfYnVm
X21lbV9maW5pc2goc3RydWN0IHZiMl9idWZmZXIgKnZiKQ0KPiA+ID4gICAgICAgICB2Yi0+c3lu
Y2VkID0gMDsNCj4gPiA+ICAgICAgICAgZm9yIChwbGFuZSA9IDA7IHBsYW5lIDwgdmItPm51bV9w
bGFuZXM7ICsrcGxhbmUpDQo+ID4gPiAgICAgICAgICAgICAgICAgY2FsbF92b2lkX21lbW9wKHZi
LCBmaW5pc2gsIHZiLT5wbGFuZXNbcGxhbmVdLm1lbV9wcml2KTsNCj4gPiA+ICsNCj4gPiA+ICsg
ICAgICAgaWYgKHZiLT5tZW1vcnkgIT0gVkIyX01FTU9SWV9ETUFCVUYpDQo+ID4gPiArICAgICAg
ICAgICAgICAgcmV0dXJuOw0KPiA+ID4gKyAgICAgICBmb3IgKHBsYW5lID0gMDsgcGxhbmUgPCB2
Yi0+bnVtX3BsYW5lczsgKytwbGFuZSkgew0KPiA+ID4gKyAgICAgICAgICAgICAgIHN0cnVjdCBk
bWFfYnVmICpkYnVmID0gdmItPnBsYW5lc1twbGFuZV0uZGJ1ZjsNCj4gPiA+ICsNCj4gPiA+ICsg
ICAgICAgICAgICAgICBpZiAoIWRidWYpDQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBj
b250aW51ZTsNCj4gPiA+ICsNCj4gPiA+ICsgICAgICAgICAgICAgICBkbWFfYnVmX2JlZ2luX2Nw
dV9hY2Nlc3MoZGJ1ZiwgdmItPnZiMl9xdWV1ZS0+ZG1hX2Rpcik7DQo+ID4gPiArICAgICAgIH0N
Cj4gPiA+ICB9DQo+ID4gPg0KPiA+ID4gIC8qDQo+ID4gPiAtLQ0KPiA+ID4gMi40My4wLXJjMQ0K
PiA+ID4NCj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
