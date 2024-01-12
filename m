Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AD282C778
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jan 2024 23:53:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8EAE73F4FF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jan 2024 22:53:10 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by lists.linaro.org (Postfix) with ESMTPS id 7A6A53F01F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jan 2024 22:52:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=nbRnxCyh;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.208.54 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5534180f0e9so1417a12.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jan 2024 14:52:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1705099969; x=1705704769; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5zEBqjbWZbZ/3Uylirb4GeOi3RLFiwNvDX78phkZWD8=;
        b=nbRnxCyhhwbaUXT9jUWEo3HD3xS/88hVJI6VWnX6O4R9s079eWgxtGmo+tXHCMatZK
         XtuXpMXvxDEwyNbMirlM0UxRXy+zswyQjb9Tl7tUUxSpWGRNK5p0Say5oZTeI2S4eI6t
         PvRkjuM3YUVsfNDuWPwFQWP+esaYzsIPgMa90even5vHT7O1MsxJSa9YqnA1x+KJB8oZ
         rmpMyTc1Ui8ezYToHUIvH97qUW3sstsrDb9k1rPqpdX/5wuIX6N8yU2VV9ubpL4aSGDw
         VC98pcgTem9jRJL/KSlPXNWjNCH+rjWsJyQsLoQ2qGIJQ/PfwdfF3tGoNcMNWNyRTYc1
         m4LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705099969; x=1705704769;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5zEBqjbWZbZ/3Uylirb4GeOi3RLFiwNvDX78phkZWD8=;
        b=Kc42F3Qd7PzZdif1D37u/jNM1Kb8DgfYDRRJuK6oxn1GmD4B+3YCa+mJNeCygxKx06
         HeW/g6+P5yE5N+n/YL8vUh/6EeDZgMs2jqsaJP7KRvXjovbmUGHiFywHYYuIhszQtAgu
         UX6f6d+EVK9mLrxu/r11+1/M5XG+KszMBDSQIPk7SWz6cAETbmL4S3pCpDHUfEaPNsww
         Frd90LxmUSWLUcjBd5IoJzuR05EpA7fOIk2KrKJ9wGzHZb3Lw5q5OcWYm4dgEKyfccos
         TRsjNIOIZVB3josvkZ9yOjUZ7OPxY0qpdkhoZUz14uKNJ2v3Yo864vUr0pvykUQgiIaH
         0maA==
X-Gm-Message-State: AOJu0YxC5fCaoPC2Vt5Oo+2isdakU1iG6Nu5FpwG2lXzUmEAlE/rhxya
	0sgcRpv4vxRf9k1HKB3n21GYDTunqPsbDGCanLuA8GYdvrg=
X-Google-Smtp-Source: AGHT+IHkgMN1yQJBbcRo0BFB3B8pFJiDvEWeO3tE0O3jDrHXiN3BUhVwpu15ZRDxRy6MkjLufhC9Rmys7MiCAQ75PZg=
X-Received: by 2002:aa7:c98b:0:b0:554:2501:cc8e with SMTP id
 c11-20020aa7c98b000000b005542501cc8emr18281edt.6.1705099969244; Fri, 12 Jan
 2024 14:52:49 -0800 (PST)
MIME-Version: 1.0
References: <20240112092014.23999-1-yong.wu@mediatek.com> <20240112092014.23999-4-yong.wu@mediatek.com>
In-Reply-To: <20240112092014.23999-4-yong.wu@mediatek.com>
From: John Stultz <jstultz@google.com>
Date: Fri, 12 Jan 2024 14:52:37 -0800
Message-ID: <CANDhNCrxpeqEhJD0xJzu3vm8a4jMXD2v+_dbDNvaKhLsLB5-4g@mail.gmail.com>
To: Yong Wu <yong.wu@mediatek.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.54:from];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,amd.com,linaro.org,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,quicinc.com,ucw.cz,emersion.fr,mediatek.com];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7A6A53F01F
X-Spamd-Bar: ------
Message-ID-Hash: UNJVBRFK7VHXLZKKGH7VOBVDBAIBN2VA
X-Message-ID-Hash: UNJVBRFK7VHXLZKKGH7VOBVDBAIBN2VA
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, christian.koenig@amd.com, Sumit Semwal <sumit.semwal@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, Jeffrey Kardatzke <jkardatzke@google.com>, Pavel Machek <pavel@ucw.cz>, Simon Ser <contact@emersion.fr>, Pekka Paalanen <ppaalanen@gmail.com>, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, youlin.pei@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 3/7] dma-buf: heaps: restricted_heap: Add private heap ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UNJVBRFK7VHXLZKKGH7VOBVDBAIBN2VA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBKYW4gMTIsIDIwMjQgYXQgMToyMeKAr0FNIFlvbmcgV3UgPHlvbmcud3VAbWVkaWF0
ZWsuY29tPiB3cm90ZToNCj4NCj4gQWRkICJzdHJ1Y3QgcmVzdHJpY3RlZF9oZWFwX29wcyIuIEZv
ciB0aGUgcmVzdHJpY3RlZCBtZW1vcnksIHRvdGFsbHkgdGhlcmUNCj4gYXJlIHR3byBzdGVwczoN
Cj4gYSkgbWVtb3J5X2FsbG9jOiBBbGxvY2F0ZSB0aGUgYnVmZmVyIGluIGtlcm5lbDsNCj4gYikg
bWVtb3J5X3Jlc3RyaWN0OiBSZXN0cmljdC9Qcm90ZWN0L1NlY3VyZSB0aGF0IGJ1ZmZlci4NCj4g
VGhlIG1lbW9yeV9hbGxvYyBpcyBtYW5kYXRvcnkgd2hpbGUgbWVtb3J5X3Jlc3RyaWN0IGlzIG9w
dGluYWwgc2luY2UgaXQgbWF5DQo+IGJlIHBhcnQgb2YgbWVtb3J5X2FsbG9jLg0KPg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBZb25nIFd1IDx5b25nLnd1QG1lZGlhdGVrLmNvbT4NCj4gLS0tDQo+ICBkcml2
ZXJzL2RtYS1idWYvaGVhcHMvcmVzdHJpY3RlZF9oZWFwLmMgfCA0MSArKysrKysrKysrKysrKysr
KysrKysrKystDQo+ICBkcml2ZXJzL2RtYS1idWYvaGVhcHMvcmVzdHJpY3RlZF9oZWFwLmggfCAx
MiArKysrKysrKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA1MiBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pDQo+DQoNClRoYW5rcyBmb3Igc2VuZGluZyB0aGlzIG91dCEgQSB0aG91Z2h0IGJlbG93
Lg0KDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvcmVzdHJpY3RlZF9oZWFw
LmggYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvcmVzdHJpY3RlZF9oZWFwLmgNCj4gaW5kZXggNDQz
MDI4ZjZiYTNiLi5kZGVhZjk4MDU3MDggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9o
ZWFwcy9yZXN0cmljdGVkX2hlYXAuaA0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvcmVz
dHJpY3RlZF9oZWFwLmgNCj4gQEAgLTE1LDYgKzE1LDE4IEBAIHN0cnVjdCByZXN0cmljdGVkX2J1
ZmZlciB7DQo+DQo+ICBzdHJ1Y3QgcmVzdHJpY3RlZF9oZWFwIHsNCj4gICAgICAgICBjb25zdCBj
aGFyICAgICAgICAgICAgICAqbmFtZTsNCj4gKw0KPiArICAgICAgIGNvbnN0IHN0cnVjdCByZXN0
cmljdGVkX2hlYXBfb3BzICpvcHM7DQo+ICt9Ow0KPiArDQo+ICtzdHJ1Y3QgcmVzdHJpY3RlZF9o
ZWFwX29wcyB7DQo+ICsgICAgICAgaW50ICAgICAoKmhlYXBfaW5pdCkoc3RydWN0IHJlc3RyaWN0
ZWRfaGVhcCAqaGVhcCk7DQo+ICsNCj4gKyAgICAgICBpbnQgICAgICgqbWVtb3J5X2FsbG9jKShz
dHJ1Y3QgcmVzdHJpY3RlZF9oZWFwICpoZWFwLCBzdHJ1Y3QgcmVzdHJpY3RlZF9idWZmZXIgKmJ1
Zik7DQo+ICsgICAgICAgdm9pZCAgICAoKm1lbW9yeV9mcmVlKShzdHJ1Y3QgcmVzdHJpY3RlZF9o
ZWFwICpoZWFwLCBzdHJ1Y3QgcmVzdHJpY3RlZF9idWZmZXIgKmJ1Zik7DQo+ICsNCj4gKyAgICAg
ICBpbnQgICAgICgqbWVtb3J5X3Jlc3RyaWN0KShzdHJ1Y3QgcmVzdHJpY3RlZF9oZWFwICpoZWFw
LCBzdHJ1Y3QgcmVzdHJpY3RlZF9idWZmZXIgKmJ1Zik7DQo+ICsgICAgICAgdm9pZCAgICAoKm1l
bW9yeV91bnJlc3RyaWN0KShzdHJ1Y3QgcmVzdHJpY3RlZF9oZWFwICpoZWFwLCBzdHJ1Y3QgcmVz
dHJpY3RlZF9idWZmZXIgKmJ1Zik7DQo+ICB9Ow0KPg0KPiAgaW50IHJlc3RyaWN0ZWRfaGVhcF9h
ZGQoc3RydWN0IHJlc3RyaWN0ZWRfaGVhcCAqcnN0cmRfaGVhcCk7DQoNClNvLCBJJ20gYSBsaXR0
bGUgd29ycmllZCBoZXJlLCBiZWNhdXNlIHlvdSdyZSBiYXNpY2FsbHkgdHVybmluZyB0aGUNCnJl
c3RyaWN0ZWRfaGVhcCBkbWEtYnVmIGhlYXAgZHJpdmVyIGludG8gYSBmcmFtZXdvcmsgaXRzZWxm
Lg0KV2hlcmUgdGhpcyBwYXRjaCBpcyBjcmVhdGluZyBhIHN1YmRyaXZlciBmcmFtZXdvcmsuDQoN
ClBhcnQgb2YgbXkgaGVzaXRhbmN5LCBpcyB5b3UncmUgaW50cm9kdWNpbmcgdGhpcyB1bmRlciB0
aGUgZG1hLWJ1Zg0KaGVhcHMuIEZvciB0aGluZ3MgbGlrZSBDTUEsIHRoYXQncyBtb3JlIG9mIGEg
Y29yZSBzdWJzeXN0ZW0gdGhhdCBoYXMNCm11bHRpcGxlIHVzZXJzLCBhbmQgZXhwb3J0aW5nIGNt
YSBidWZmZXJzIHZpYSBkbWFidWYgaGVhcHMgaXMganVzdCBhbg0KYWRkaXRpb25hbCBpbnRlcmZh
Y2UuICBXaGF0IEkgbGlrZSBhYm91dCB0aGF0IGlzIHRoZSBjb3JlIGtlcm5lbCBoYXMNCnRvIGRl
ZmluZSB0aGUgc2VtYW50aWNzIGZvciB0aGUgbWVtb3J5IHR5cGUgYW5kIHRoZW4gdGhlIGRtYWJ1
ZiBoZWFwDQppcyBqdXN0IGV4cG9ydGluZyB0aGF0IHdlbGwgdW5kZXJzdG9vZCB0eXBlIG9mIGJ1
ZmZlci4NCg0KQnV0IHdpdGggdGhlc2UgcmVzdHJpY3RlZCBidWZmZXJzLCBJJ20gbm90IHN1cmUg
dGhlcmUncyB5ZXQgYSB3ZWxsDQp1bmRlcnN0b29kIHNldCBvZiBzZW1hbnRpY3Mgbm9yIGEgY2Vu
dHJhbCBhYnN0cmFjdGlvbiBmb3IgdGhhdCB3aGljaA0Kb3RoZXIgZHJpdmVycyB1c2UgZGlyZWN0
bHkuDQoNCkkga25vdyBwYXJ0IG9mIHRoaXMgZWZmb3J0IGhlcmUgaXMgdG8gc3RhcnQgdG8gY2Vu
dHJhbGl6ZSBhbGwgdGhlc2UNCnZlbmRvciBzcGVjaWZpYyByZXN0cmljdGVkIGJ1ZmZlciBpbXBs
ZW1lbnRhdGlvbnMsIHdoaWNoIEkgdGhpbmsgaXMNCmdyZWF0LCBidXQgSSBqdXN0IHdvcnJ5IHRo
YXQgaW4gZG9pbmcgaXQgaW4gdGhlIGRtYWJ1ZiBoZWFwIGludGVyZmFjZSwNCml0IGlzIGEgYml0
IHRvbyB1c2VyLWZhY2luZy4gVGhlIGxpa2VsaWhvb2Qgb2YgZW5jb2RpbmcgYSBwYXJ0aWN1bGFy
DQpzZW1hbnRpYyB0byB0aGUgc2luZ3VsYXIgInJlc3RyaWN0ZWRfaGVhcCIgbmFtZSBzZWVtcyBo
aWdoLg0KDQpTaW1pbGFybHkgd2UgbWlnaHQgcnVuIGludG8gc3lzdGVtcyB3aXRoIG11bHRpcGxl
IHR5cGVzIG9mIHJlc3RyaWN0ZWQNCmJ1ZmZlcnMgKGltYWdpbmUgYSBkaXNjcmV0ZSBncHUgaGF2
aW5nIG9uZSB0eXBlIGFsb25nIHdpdGggVEVFDQpwcm90ZWN0ZWQgYnVmZmVycyBhbHNvIGJlaW5n
IHVzZWQgb24gdGhlIHNhbWUgc3lzdGVtKS4NCg0KU28gdGhlIG9uZSBxdWVzdGlvbiBJIGhhdmU6
IFdoeSBub3QganVzdCBoYXZlIGEgbWVkaWF0ZWsgc3BlY2lmaWMNCnJlc3RyaWN0ZWRfaGVhcCBk
bWFidWYgaGVhcCBkcml2ZXI/ICBTaW5jZSB0aGVyZSdzIGFscmVhZHkgYmVlbiBzb21lDQp0YWxr
IG9mIHNsaWdodCBzZW1hbnRpYyBkaWZmZXJlbmNlcyBpbiB2YXJpb3VzIHJlc3RyaWN0ZWQgYnVm
ZmVyDQppbXBsZW1lbnRhdGlvbnMsIHNob3VsZCB3ZSBqdXN0IHN0YXJ0IHdpdGggc2VwYXJhdGVs
eSBuYW1lZCBkbWFidWYNCmhlYXBzIGZvciBlYWNoPyBNYXliZSBjb25zb2xpZGF0aW5nIHRvIGEg
Y29tbW9uIG5hbWUgYXMgbW9yZSBkcml2ZXJzDQphcnJpdmUgYW5kIHdlIGdhaW4gYSBiZXR0ZXIg
dW5kZXJzdGFuZGluZyBvZiB0aGUgdmFyaWF0aW9ucyBvZg0Kc2VtYW50aWNzIGZvbGtzIGFyZSB1
c2luZz8NCg0KdGhhbmtzDQotam9obg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
