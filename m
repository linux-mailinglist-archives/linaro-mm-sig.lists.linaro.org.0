Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E77D82C83E
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 13 Jan 2024 01:13:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5FD8E43FB6
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 13 Jan 2024 00:13:56 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	by lists.linaro.org (Postfix) with ESMTPS id C22D73EFE9
	for <linaro-mm-sig@lists.linaro.org>; Sat, 13 Jan 2024 00:13:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=fDJP8Yoz;
	spf=pass (lists.linaro.org: domain of jkardatzke@google.com designates 209.85.214.181 as permitted sender) smtp.mailfrom=jkardatzke@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1d3fde109f2so22685ad.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jan 2024 16:13:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1705104815; x=1705709615; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZN1rPiXKN7u9zdqvXb7Qif49uja1bfBANswKzoofhOQ=;
        b=fDJP8YozAIFmg9Y2NaTiGls8OkeJqTsCETTa0avevwBwXYYJSqAl6xkUT3Oo8m1KPz
         OCYi8N4DrkcJAKAXZtPyv4csEd0/RpklQXbs4rxNSGkZPWV7AiullweEFOoT/5J96G9j
         dvXmKG6GczcNDObUM2aXdbnCxVd3Cxu5O37H2ht0P+5j/nNUWepudFoZ7VCiueuYzlB7
         4ZH2a1boYs3/C0Xn7bV6jMCxNfI3UplJNsf6/Bya1M8pVxi0LwCxFCSbs53JhMOkq1+/
         wgVavLyqN5w2Uw9mOCtjup47IAzmIbm3Er8TVh/mhMS5CR/SOEiOdrat9QkLeffttxXE
         h2wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705104815; x=1705709615;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZN1rPiXKN7u9zdqvXb7Qif49uja1bfBANswKzoofhOQ=;
        b=np+ecCNRzAJH7Smw11m/xZOv5eAUoaTRiUIsc0YIJzTmHCkayNyLAy/YGpNIfY2yJJ
         AGCdwQG74gTSdS9c3XWqpLQ6lqDZx0PJWfrgrO+FzSBicbdmoFJq2coWvbNXYu8/2thK
         4V64qZB8p7bkXry7/mdyQfq8fyK1jSCWMqfxuWgLZs6muVTGRucCMqDso2QyE0Z/jqjj
         +374ICLxOM/15C2h6UDHoqWMV3xu8KBtRmp4jIWLM2Hitva//+yY//vXza0h1xBTTno6
         NctisdN1IOGU8sOjAabJFPkg0U6zYfHiq3QpsUx7M6c6m88NhGYBjGBvxO7HUh9ZeKr1
         L+jw==
X-Gm-Message-State: AOJu0YwgpM34yCaHjiGeOPq+A0oqFXQV4ApLRb8ZHjrmyo6aTaNmD30Q
	Abk8BeuESlmGFXiUSc5efptxv4qVrSGMwwVuJzWNBW6AeXo=
X-Google-Smtp-Source: AGHT+IFoy9IVWruhvKFe05xW5Uee6UeUnu8jeQqa2o5hMHQEB/8kcTZ0reXjfnhh9x+XoVNHMhQznVcSROnNPsA1e0c=
X-Received: by 2002:a17:902:ec8a:b0:1d4:c2bd:eff5 with SMTP id
 x10-20020a170902ec8a00b001d4c2bdeff5mr44003plg.3.1705104814522; Fri, 12 Jan
 2024 16:13:34 -0800 (PST)
MIME-Version: 1.0
References: <20240112092014.23999-1-yong.wu@mediatek.com> <20240112092014.23999-4-yong.wu@mediatek.com>
 <CANDhNCrxpeqEhJD0xJzu3vm8a4jMXD2v+_dbDNvaKhLsLB5-4g@mail.gmail.com>
 <CA+ddPcNdniUTpE_pJb-fL7+MHNSUZTkQojL48iqvW9JPr-Tc-g@mail.gmail.com> <CANDhNCqieBaH-Wi=vy3NSKTpwHcWef6qMOFi-7sgdGiDW7JtwA@mail.gmail.com>
In-Reply-To: <CANDhNCqieBaH-Wi=vy3NSKTpwHcWef6qMOFi-7sgdGiDW7JtwA@mail.gmail.com>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Fri, 12 Jan 2024 16:13:22 -0800
Message-ID: <CA+ddPcP9bgApNw_Nu7bxcV-oK_s3Bq1i5qun+vNSuRUO9tPEkA@mail.gmail.com>
To: John Stultz <jstultz@google.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.181:from];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[mediatek.com,kernel.org,gmail.com,amd.com,linaro.org,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,quicinc.com,ucw.cz,emersion.fr];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C22D73EFE9
X-Spamd-Bar: ------
Message-ID-Hash: VBGE47UOZLSOL5XUYFELPXSLKSHL2MIE
X-Message-ID-Hash: VBGE47UOZLSOL5XUYFELPXSLKSHL2MIE
X-MailFrom: jkardatzke@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, christian.koenig@amd.com, Sumit Semwal <sumit.semwal@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, Pavel Machek <pavel@ucw.cz>, Simon Ser <contact@emersion.fr>, Pekka Paalanen <ppaalanen@gmail.com>, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, youlin.pei@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 3/7] dma-buf: heaps: restricted_heap: Add private heap ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VBGE47UOZLSOL5XUYFELPXSLKSHL2MIE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBKYW4gMTIsIDIwMjQgYXQgMzo1MeKAr1BNIEpvaG4gU3R1bHR6IDxqc3R1bHR6QGdv
b2dsZS5jb20+IHdyb3RlOg0KPg0KPiBPbiBGcmksIEphbiAxMiwgMjAyNCBhdCAzOjI34oCvUE0g
SmVmZnJleSBLYXJkYXR6a2UgPGprYXJkYXR6a2VAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+ID4gT24g
RnJpLCBKYW4gMTIsIDIwMjQgYXQgMjo1MuKAr1BNIEpvaG4gU3R1bHR6IDxqc3R1bHR6QGdvb2ds
ZS5jb20+IHdyb3RlOg0KPiA+ID4gT24gRnJpLCBKYW4gMTIsIDIwMjQgYXQgMToyMeKAr0FNIFlv
bmcgV3UgPHlvbmcud3VAbWVkaWF0ZWsuY29tPiB3cm90ZToNCj4gPiA+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9yZXN0cmljdGVkX2hlYXAuaCBiL2RyaXZlcnMvZG1hLWJ1
Zi9oZWFwcy9yZXN0cmljdGVkX2hlYXAuaA0KPiA+ID4gPiBpbmRleCA0NDMwMjhmNmJhM2IuLmRk
ZWFmOTgwNTcwOCAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3Jl
c3RyaWN0ZWRfaGVhcC5oDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9yZXN0
cmljdGVkX2hlYXAuaA0KPiA+ID4gPiBAQCAtMTUsNiArMTUsMTggQEAgc3RydWN0IHJlc3RyaWN0
ZWRfYnVmZmVyIHsNCj4gPiA+ID4NCj4gPiA+ID4gIHN0cnVjdCByZXN0cmljdGVkX2hlYXAgew0K
PiA+ID4gPiAgICAgICAgIGNvbnN0IGNoYXIgICAgICAgICAgICAgICpuYW1lOw0KPiA+ID4gPiAr
DQo+ID4gPiA+ICsgICAgICAgY29uc3Qgc3RydWN0IHJlc3RyaWN0ZWRfaGVhcF9vcHMgKm9wczsN
Cj4gPiA+ID4gK307DQo+ID4gPiA+ICsNCj4gPiA+ID4gK3N0cnVjdCByZXN0cmljdGVkX2hlYXBf
b3BzIHsNCj4gPiA+ID4gKyAgICAgICBpbnQgICAgICgqaGVhcF9pbml0KShzdHJ1Y3QgcmVzdHJp
Y3RlZF9oZWFwICpoZWFwKTsNCj4gPiA+ID4gKw0KPiA+ID4gPiArICAgICAgIGludCAgICAgKCpt
ZW1vcnlfYWxsb2MpKHN0cnVjdCByZXN0cmljdGVkX2hlYXAgKmhlYXAsIHN0cnVjdCByZXN0cmlj
dGVkX2J1ZmZlciAqYnVmKTsNCj4gPiA+ID4gKyAgICAgICB2b2lkICAgICgqbWVtb3J5X2ZyZWUp
KHN0cnVjdCByZXN0cmljdGVkX2hlYXAgKmhlYXAsIHN0cnVjdCByZXN0cmljdGVkX2J1ZmZlciAq
YnVmKTsNCj4gPiA+ID4gKw0KPiA+ID4gPiArICAgICAgIGludCAgICAgKCptZW1vcnlfcmVzdHJp
Y3QpKHN0cnVjdCByZXN0cmljdGVkX2hlYXAgKmhlYXAsIHN0cnVjdCByZXN0cmljdGVkX2J1ZmZl
ciAqYnVmKTsNCj4gPiA+ID4gKyAgICAgICB2b2lkICAgICgqbWVtb3J5X3VucmVzdHJpY3QpKHN0
cnVjdCByZXN0cmljdGVkX2hlYXAgKmhlYXAsIHN0cnVjdCByZXN0cmljdGVkX2J1ZmZlciAqYnVm
KTsNCj4gPiA+ID4gIH07DQo+ID4gPiA+DQo+ID4gPiA+ICBpbnQgcmVzdHJpY3RlZF9oZWFwX2Fk
ZChzdHJ1Y3QgcmVzdHJpY3RlZF9oZWFwICpyc3RyZF9oZWFwKTsNCj4gPiA+DQo+ID4gPiBTbywg
SSdtIGEgbGl0dGxlIHdvcnJpZWQgaGVyZSwgYmVjYXVzZSB5b3UncmUgYmFzaWNhbGx5IHR1cm5p
bmcgdGhlDQo+ID4gPiByZXN0cmljdGVkX2hlYXAgZG1hLWJ1ZiBoZWFwIGRyaXZlciBpbnRvIGEg
ZnJhbWV3b3JrIGl0c2VsZi4NCj4gPiA+IFdoZXJlIHRoaXMgcGF0Y2ggaXMgY3JlYXRpbmcgYSBz
dWJkcml2ZXIgZnJhbWV3b3JrLg0KPiA+ID4NCj4gPiA+IFBhcnQgb2YgbXkgaGVzaXRhbmN5LCBp
cyB5b3UncmUgaW50cm9kdWNpbmcgdGhpcyB1bmRlciB0aGUgZG1hLWJ1Zg0KPiA+ID4gaGVhcHMu
IEZvciB0aGluZ3MgbGlrZSBDTUEsIHRoYXQncyBtb3JlIG9mIGEgY29yZSBzdWJzeXN0ZW0gdGhh
dCBoYXMNCj4gPiA+IG11bHRpcGxlIHVzZXJzLCBhbmQgZXhwb3J0aW5nIGNtYSBidWZmZXJzIHZp
YSBkbWFidWYgaGVhcHMgaXMganVzdCBhbg0KPiA+ID4gYWRkaXRpb25hbCBpbnRlcmZhY2UuICBX
aGF0IEkgbGlrZSBhYm91dCB0aGF0IGlzIHRoZSBjb3JlIGtlcm5lbCBoYXMNCj4gPiA+IHRvIGRl
ZmluZSB0aGUgc2VtYW50aWNzIGZvciB0aGUgbWVtb3J5IHR5cGUgYW5kIHRoZW4gdGhlIGRtYWJ1
ZiBoZWFwDQo+ID4gPiBpcyBqdXN0IGV4cG9ydGluZyB0aGF0IHdlbGwgdW5kZXJzdG9vZCB0eXBl
IG9mIGJ1ZmZlci4NCj4gPiA+DQo+ID4gPiBCdXQgd2l0aCB0aGVzZSByZXN0cmljdGVkIGJ1ZmZl
cnMsIEknbSBub3Qgc3VyZSB0aGVyZSdzIHlldCBhIHdlbGwNCj4gPiA+IHVuZGVyc3Rvb2Qgc2V0
IG9mIHNlbWFudGljcyBub3IgYSBjZW50cmFsIGFic3RyYWN0aW9uIGZvciB0aGF0IHdoaWNoDQo+
ID4gPiBvdGhlciBkcml2ZXJzIHVzZSBkaXJlY3RseS4NCj4gPiA+DQo+ID4gPiBJIGtub3cgcGFy
dCBvZiB0aGlzIGVmZm9ydCBoZXJlIGlzIHRvIHN0YXJ0IHRvIGNlbnRyYWxpemUgYWxsIHRoZXNl
DQo+ID4gPiB2ZW5kb3Igc3BlY2lmaWMgcmVzdHJpY3RlZCBidWZmZXIgaW1wbGVtZW50YXRpb25z
LCB3aGljaCBJIHRoaW5rIGlzDQo+ID4gPiBncmVhdCwgYnV0IEkganVzdCB3b3JyeSB0aGF0IGlu
IGRvaW5nIGl0IGluIHRoZSBkbWFidWYgaGVhcCBpbnRlcmZhY2UsDQo+ID4gPiBpdCBpcyBhIGJp
dCB0b28gdXNlci1mYWNpbmcuIFRoZSBsaWtlbGlob29kIG9mIGVuY29kaW5nIGEgcGFydGljdWxh
cg0KPiA+ID4gc2VtYW50aWMgdG8gdGhlIHNpbmd1bGFyICJyZXN0cmljdGVkX2hlYXAiIG5hbWUg
c2VlbXMgaGlnaC4NCj4gPg0KPiA+IEluIHBhdGNoICM1IGl0IGhhcyB0aGUgYWN0dWFsIGRyaXZl
ciBpbXBsZW1lbnRhdGlvbiBmb3IgdGhlIE1USyBoZWFwDQo+ID4gdGhhdCBpbmNsdWRlcyB0aGUg
aGVhcCBuYW1lIG9mICJyZXN0cmljdGVkX210a19jbSIsIHNvIHRoZXJlIHNob3VsZG4ndA0KPiA+
IGJlIGEgaGVhcCBuYW1lZCAicmVzdHJpY3RlZF9oZWFwIiB0aGF0J3MgYWN0dWFsbHkgZ2V0dGlu
ZyBleHBvc2VkLiBUaGUNCj4NCj4gQWgsIEkgYXBwcmVjaWF0ZSB0aGF0IGNsYXJpZmljYXRpb24h
IEluZGVlZCwgeW91J3JlIHJpZ2h0IHRoZSBuYW1lIGlzDQo+IHBhc3NlZCB0aHJvdWdoLiBBcG9s
b2dpZXMgZm9yIG1pc3NpbmcgdGhhdCBkZXRhaWwuDQo+DQo+ID4gcmVzdHJpY3RlZF9oZWFwIGNv
ZGUgaXMgYSBmcmFtZXdvcmssIGFuZCBub3QgYSBkcml2ZXIgaXRzZWxmLiAgVW5sZXNzDQo+ID4g
SSdtIG1pc3Npbmcgc29tZXRoaW5nIGluIHRoaXMgcGF0Y2hzZXQuLi5idXQgdGhhdCdzIHRoZSB3
YXkgaXQncw0KPiA+ICpzdXBwb3NlZCogdG8gYmUuDQo+DQo+IFNvIEkgZ3Vlc3MgSSdtIG5vdCBz
dXJlIEkgdW5kZXJzdGFuZCB0aGUgYmVuZWZpdCBvZiB0aGUgZXh0cmENCj4gaW5kaXJlY3Rpb24u
IFdoYXQgdGhlbiBkb2VzIHRoZSByZXN0cmljdGVkX2hlYXAuYyBsb2dpYyBpdHNlbGYNCj4gcHJv
dmlkZT8NCj4gVGhlIGRtYWJ1ZiBoZWFwcyBmcmFtZXdvcmsgYWxyZWFkeSBwcm92aWRlcyBhIHdh
eSB0byBhZGQgaGVhcCBpbXBsZW1lbnRhdGlvbnMuDQoNClNvIGluIHRoZSB2MSBwYXRjaHNldCwg
aXQgd2FzIGRvbmUgd2l0aCBqdXN0IGEgTWVkaWF0ZWsgc3BlY2lmaWMgaGVhcA0Kd2l0aCBubyBm
cmFtZXdvcmsgb3IgYWJzdHJhY3Rpb25zIGZvciBhbm90aGVyIHZlbmRvciB0byBidWlsZCBvbiB0
b3ANCm9mLiBUaGUgZmVlZGJhY2sgd2FzIHRvIG1ha2UgdGhpcyBtb3JlIGdlbmVyaWMgc2luY2Ug
TWVkaWF0ZWsgd29uJ3QgYmUNCnRoZSBvbmx5IHZlbmRvciB3aG8gd2FudHMgYSByZXN0cmljdGVk
IGhlYXAuLndoaWNoIGlzIGhvdyBpdCBlbmRlZCB1cA0KaGVyZS4gVGhlcmUgd2FzIG1vcmUgY29k
ZSBpbiB0aGUgZnJhbWV3b3JrIGJlZm9yZSByZWxhdGluZyB0byBURUUNCmNhbGxzLCBidXQgdGhl
biB0aGF0IHdhcyBtb3ZlZCB0byB0aGUgdmVuZG9yIHNwZWNpZmljIGNvZGUgc2luY2Ugbm90DQph
bGwgcmVzdHJpY3RlZCBoZWFwcyBhcmUgYWxsb2NhdGVkIHRocm91Z2ggYSBURUUuDQoNClRoaXMg
d2FzIGFsc28gZGVzaXJhYmxlIGZvciB0aGUgVjRMMiBwaWVjZXMgc2luY2UgdGhlcmUncyBnb2lu
ZyB0byBiZQ0KYSBWNEwyIGZsYWcgc2V0IHdoZW4gdXNpbmcgcmVzdHJpY3RlZCBkbWFfYnVmcyAo
YW5kIGl0IHdhbnRzIHRvDQp2YWxpZGF0ZSB0aGF0KS4uLi5zbyBpbiBvcmRlciB0byBrZWVwIHRo
YXQgbW9yZSBnZW5lcmljLCB0aGVyZSBzaG91bGQNCmJlIGEgaGlnaGVyIGxldmVsIGNvbmNlcHQg
b2YgcmVzdHJpY3RlZCBkbWFfYnVmcyB0aGF0IGlzbid0IHNwZWNpZmljDQp0byBhIHNpbmdsZSB2
ZW5kb3IuICBPbmUgb3RoZXIgdGhpbmcgdGhhdCB3b3VsZCBpZGVhbGx5IGNvbWUgb3V0IG9mDQp0
aGlzIGlzIGEgY2xlYW5lciB3YXkgdG8gY2hlY2sgdGhhdCBhIGRtYV9idWYgaXMgcmVzdHJpY3Rl
ZCBvciBub3QuDQpUaGUgY3VycmVudCBWNEwyIHBhdGNoc2V0IGp1c3QgYXR0YWNoZXMgdGhlIGRt
YV9idWYgYW5kIHRoZW4gY2hlY2tzIGlmDQp0aGUgcGFnZSB0YWJsZSBpcyBlbXB0eS4uLi5hbmQg
aWYgc28sIGl0J3MgcmVzdHJpY3RlZC4gQnV0IG5vdyBJIHNlZQ0KdGhlcmUncyBvdGhlciBmZWVk
YmFjayBpbmRpY2F0aW5nIGF0dGFjaGluZyBhIHJlc3RyaWN0ZWQgZG1hX2J1Zg0Kc2hvdWxkbid0
IGV2ZW4gYmUgYWxsb3dlZCwgc28gd2UnbGwgbmVlZCBhbm90aGVyIHN0cmF0ZWd5IGZvcg0KZGV0
ZWN0aW5nIHRoZW0uIElkZWFsbHkgdGhlcmUgaXMgc29tZSBmdW5jdGlvbi9tYWNybyBsaWtlDQpp
c19kbWFfYnVmX3Jlc3RyaWN0ZWQoc3RydWN0IGRtYV9idWYqKSB0aGF0IGNhbiBpbmRpY2F0ZSB0
aGF0Li4uYnV0IHdlDQpoYXZlbid0IGNvbWUgdXAgd2l0aCBhIGdvb2Qgd2F5IHRvIGRvIHRoYXQg
eWV0IHdoaWNoIGRvZXNuJ3QgaW52b2x2ZQ0KYWRkaW5nIGFub3RoZXIgZmllbGQgdG8gZG1hX2J1
ZiBvciB0byBkbWFfYnVmX29wcyAoYW5kIGlmIHN1Y2ggYSB0aGluZw0Kd291bGQgYmUgZmluZSwg
dGhlbiBPSy4uLmJ1dCBJIGhhZCBhc3N1bWVkIHdlIHdvdWxkIGdldCBwdXNoYmFjayBvbg0KbW9k
aWZ5aW5nIGVpdGhlciBvZiB0aG9zZSBzdHJ1Y3RzKS4NCg0KPg0KPiB0aGFua3MNCj4gLWpvaG4N
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
