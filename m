Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F717ED851
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Nov 2023 00:46:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E5B9741232
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Nov 2023 23:46:00 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	by lists.linaro.org (Postfix) with ESMTPS id F095940F3E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Nov 2023 23:45:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=PU5uon+e;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of jkardatzke@google.com designates 209.85.214.172 as permitted sender) smtp.mailfrom=jkardatzke@google.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1cc209561c3so65945ad.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Nov 2023 15:45:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1700091942; x=1700696742; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kIH2dT5rBnZFjhKTkiDOQvxWWMxsCvDK0b0vzyQ0+X8=;
        b=PU5uon+eJEs7yPSvRcIZOZRXpA1cf9Le3kai3Dkk/1ZrRt8NO0EQjdllKj3C/LPE75
         gi8adcs4T5/5D6AFarCUmiM91KyCTw5DAjZGEDJrh3Nk86mp9x4KyiVibKY3Y8a8oFCA
         DCTUwRCYVWH/On7e8XUeTUeUIJmnQFLqxFHihCpGg8eL1VoERX/77zCJ99ZA661UPMqr
         oo1XyFM1TPw8P4vJOdexjZ9CJ5U8ZdEdvOik+vPEMmFiu0p6QH4/lDjh4PXpcVpCKqFl
         Z+y0qYqrlATC15flAurC1+gsecvX1vYoe4aTW1LIQp/k6oNUN9yjB/XbX+HSZOZmdPW9
         a87w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700091942; x=1700696742;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kIH2dT5rBnZFjhKTkiDOQvxWWMxsCvDK0b0vzyQ0+X8=;
        b=pT5rnHVIA9lanzkQKX+XbhV/Q41FpUDLirxXWQ8xNZZ9Pn4JjxNEJKtOOLmeglIkTO
         FgOjdzEEfKURf18b6wCxQ6cFM3nsc/9qSeOeSVi9MYhchNmPojazeOt1F0UQcdd1FPxV
         Kh9FW21vNEvIhAgBBJnaRt4SzIbZnWv+j9nHWJDXfAAdshNIIDQBj3GATMbm3/fSGQ8t
         Fn8yHlu9FPoGHjzRrSl4d+g73zrESoahT0yC6iUBjXdmvsd4AQea5+xS7Q23rDbbu2Ot
         tmLgAlcfdDqQAlmcWSrLfrPt2BlqZbgTihG8nbfkhzkFknbmIREv+nHsQ3vGLqNRNbdr
         onZA==
X-Gm-Message-State: AOJu0YzTZR0Kn+ImJar+OndbK2R8LE89DveZWkfyzsM8ohrloIBwWZgn
	w+PsWlcxujXqgMpj5Byz2CqH5XambsH8YZku+kNk
X-Google-Smtp-Source: AGHT+IFvaq+a3HVgNlcWB8G0UvgbXEFSxTfLrN/9hWim6vKKnIqWcSHLeWYNY3t7rR2xLuNg/XZcLVowUmtLGfVqu6Q=
X-Received: by 2002:a17:902:db0b:b0:1c2:446:5259 with SMTP id
 m11-20020a170902db0b00b001c204465259mr67088plx.19.1700091941779; Wed, 15 Nov
 2023 15:45:41 -0800 (PST)
MIME-Version: 1.0
References: <20231111111559.8218-1-yong.wu@mediatek.com> <20231111111559.8218-9-yong.wu@mediatek.com>
In-Reply-To: <20231111111559.8218-9-yong.wu@mediatek.com>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Wed, 15 Nov 2023 15:45:30 -0800
Message-ID: <CA+ddPcNLbyS1WRANo7fm13pYyibD_DS3uAxc6ouULWS+kBxNHQ@mail.gmail.com>
To: Yong Wu <yong.wu@mediatek.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F095940F3E
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.214.172:from];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,gmail.com,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,mediatek.com,quicinc.com,ndufresne.ca];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: BOIOS6MA6PYZNT3VETWENNEJMSBTPWYF
X-Message-ID-Hash: BOIOS6MA6PYZNT3VETWENNEJMSBTPWYF
X-MailFrom: jkardatzke@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Matthias Brugger <matthias.bgg@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, Nicolas Dufresne <nicolas@ndufresne.ca>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 8/8] dma-buf: heaps: secure_heap: Add normal CMA heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BOIOS6MA6PYZNT3VETWENNEJMSBTPWYF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WW91IHNob3VsZCBkcm9wIHRoaXMgcGF0Y2ggY29tcGxldGVseS4NCg0KT24gU2F0LCBOb3YgMTEs
IDIwMjMgYXQgMzoxOOKAr0FNIFlvbmcgV3UgPHlvbmcud3VAbWVkaWF0ZWsuY29tPiB3cm90ZToN
Cj4NCj4gQWRkIGEgbm9ybWFsIENNQSBoZWFwIHdoaWNoIHVzZSB0aGUgc3RhbmRhcmQgY21hIGFs
bG9jYXRlLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBZb25nIFd1IDx5b25nLnd1QG1lZGlhdGVrLmNv
bT4NCj4gLS0tDQo+IEhpIFZpamF5IGFuZCBKYXNrYXJhbiwNCj4NCj4gRm9yIHRoaXMgaGVhcCwN
Cj4gMSkgSXQgdXNlcyBzZWNfaGVhcF9idWZfb3BzIGN1cnJlbnRseS4gSSBndWVzcyB3ZSBjYW5u
J3QgdXNlIHRoZQ0KPiBjbWFfaGVhcF9idWZfb3BzLiBzaW5jZSBpZiBpdCBpcyBzZWN1cmUgYnVm
ZmVyLCBzb21lIG9wZXJhdGlvbnMgc3VjaA0KPiBhcyBtbWFwIHNob3VsZCBub3QgYmUgYWxsb3dl
ZC4NCj4gMikgSSBkaWRuJ3QgYWRkIGhvdyB0byBwcm90ZWN0L3NlY3VyZSB0aGUgYnVmZmVyLg0K
Pg0KPiBQbGVhc2UgZmVlbCBmcmVlIHRvIGNoYW5nZSB0byBtZWV0IHlvdXIgcmVxdWlyZW1lbnRz
Lg0KPiBUaGFua3MuDQo+IC0tLQ0KPiAgZHJpdmVycy9kbWEtYnVmL2hlYXBzL3NlY3VyZV9oZWFw
LmMgfCAzOCArKysrKysrKysrKysrKysrKysrKysrKysrKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQs
IDM3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZG1hLWJ1Zi9oZWFwcy9zZWN1cmVfaGVhcC5jIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3Nl
Y3VyZV9oZWFwLmMNCj4gaW5kZXggZjhiODRmZDE2Mjg4Li44OTg5YWQ1ZDAzZTkgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zZWN1cmVfaGVhcC5jDQo+ICsrKyBiL2RyaXZl
cnMvZG1hLWJ1Zi9oZWFwcy9zZWN1cmVfaGVhcC5jDQo+IEBAIC00Myw2ICs0Myw4IEBAIGVudW0g
c2VjdXJlX2J1ZmZlcl90ZWVfY21kIHsgLyogUEFSQU0gTlVNIGFsd2F5cyBpcyA0LiAqLw0KPiAg
fTsNCj4NCj4gIGVudW0gc2VjdXJlX21lbW9yeV90eXBlIHsNCj4gKyAgICAgICAvKiBDTUEgZm9y
IHRoZSBzZWN1cmUgbWVtb3J5LCBVc2UgdGhlIG5vcm1hbCBjbWEgb3BzIHRvIGFsbG9jL2ZyZWUu
ICovDQo+ICsgICAgICAgU0VDVVJFX01FTU9SWV9UWVBFX0NNQSAgICAgICAgICA9IDAsDQo+ICAg
ICAgICAgLyoNCj4gICAgICAgICAgKiBNZWRpYVRlayBzdGF0aWMgY2h1bmsgbWVtb3J5IGNhcnZl
ZCBvdXQgZm9yIFRydXN0Wm9uZS4gVGhlIG1lbW9yeQ0KPiAgICAgICAgICAqIG1hbmFnZW1lbnQg
aXMgaW5zaWRlIHRoZSBURUUuDQo+IEBAIC02NSw2ICs2Nyw3IEBAIHN0cnVjdCBzZWN1cmVfYnVm
ZmVyIHsNCj4gICAgICAgICAgKiBhIHZhbHVlIGdvdCBmcm9tIFRFRS4NCj4gICAgICAgICAgKi8N
Cj4gICAgICAgICB1MzIgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNlY19oYW5kbGU7DQo+
ICsgICAgICAgc3RydWN0IHBhZ2UgICAgICAgICAgICAgICAgICAgICAqY21hX3BhZ2U7DQo+ICB9
Ow0KPg0KPiAgI2RlZmluZSBURUVfTUVNX0NPTU1BTkRfSURfQkFTRV9NVEsgICAgMHgxMDAwMA0K
PiBAQCAtMjg3LDYgKzI5MCwzMyBAQCBjb25zdCBzdHJ1Y3Qgc2VjdXJlX2hlYXBfcHJ2X2RhdGEg
bXRrX3NlY19tZW1fZGF0YSA9IHsNCj4gICAgICAgICAudW5zZWN1cmVfdGhlX21lbW9yeSAgICA9
IHNlY3VyZV9oZWFwX3RlZV91bnNlY3VyZV9tZW1vcnksDQo+ICB9Ow0KPg0KPiArc3RhdGljIGlu
dCBjbWFfc2VjdXJlX21lbW9yeV9hbGxvY2F0ZShzdHJ1Y3Qgc2VjdXJlX2hlYXAgKnNlY19oZWFw
LA0KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBzZWN1cmVf
YnVmZmVyICpzZWNfYnVmKQ0KPiArew0KPiArICAgICAgIGlmICghc2VjX2hlYXAtPmNtYSkNCj4g
KyAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPiArDQo+ICsgICAgICAgc2VjX2J1Zi0+
Y21hX3BhZ2UgPSBjbWFfYWxsb2Moc2VjX2hlYXAtPmNtYSwgc2VjX2J1Zi0+c2l6ZSA+PiBQQUdF
X1NISUZULA0KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGdldF9vcmRl
cihQQUdFX1NJWkUpLCBmYWxzZSk7DQo+ICsgICAgICAgaWYgKCFzZWNfYnVmLT5jbWFfcGFnZSkN
Cj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOw0KPiArDQo+ICsgICAgICAgbWVtc2V0
KHBhZ2VfYWRkcmVzcyhzZWNfYnVmLT5jbWFfcGFnZSksIDAsIHNlY19idWYtPnNpemUpOw0KPiAr
ICAgICAgIHJldHVybiAwOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgdm9pZCBjbWFfc2VjdXJlX21l
bW9yeV9mcmVlKHN0cnVjdCBzZWN1cmVfaGVhcCAqc2VjX2hlYXAsDQo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgc3RydWN0IHNlY3VyZV9idWZmZXIgKnNlY19idWYpDQo+ICt7
DQo+ICsgICAgICAgY21hX3JlbGVhc2Uoc2VjX2hlYXAtPmNtYSwgc2VjX2J1Zi0+Y21hX3BhZ2Us
IHNlY19idWYtPnNpemUgPj4gUEFHRV9TSElGVCk7DQo+ICt9DQo+ICsNCj4gK2NvbnN0IHN0cnVj
dCBzZWN1cmVfaGVhcF9wcnZfZGF0YSBjbWFfc2VjX21lbV9kYXRhID0gew0KPiArICAgICAgIC5t
ZW1vcnlfYWxsb2MgICA9IGNtYV9zZWN1cmVfbWVtb3J5X2FsbG9jYXRlLA0KPiArICAgICAgIC5t
ZW1vcnlfZnJlZSAgICA9IGNtYV9zZWN1cmVfbWVtb3J5X2ZyZWUsDQo+ICsgICAgICAgLyogVE9E
TyA6IHNlY3VyZSB0aGUgYnVmZmVyLiAqLw0KPiArfTsNCj4gKw0KPiAgc3RhdGljIGludCBzZWN1
cmVfaGVhcF9zZWN1cmVfbWVtb3J5X2FsbG9jYXRlKHN0cnVjdCBzZWN1cmVfaGVhcCAqc2VjX2hl
YXAsDQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1
Y3Qgc2VjdXJlX2J1ZmZlciAqc2VjX2J1ZikNCj4gIHsNCj4gQEAgLTQ5Niw2ICs1MjYsMTEgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfaGVhcF9vcHMgc2VjX2hlYXBfb3BzID0gew0KPiAgfTsN
Cj4NCj4gIHN0YXRpYyBzdHJ1Y3Qgc2VjdXJlX2hlYXAgc2VjdXJlX2hlYXBzW10gPSB7DQo+ICsg
ICAgICAgew0KPiArICAgICAgICAgICAgICAgLm5hbWUgICAgICAgICAgID0gInNlY3VyZV9jbWEi
LA0KPiArICAgICAgICAgICAgICAgLm1lbV90eXBlICAgICAgID0gU0VDVVJFX01FTU9SWV9UWVBF
X0NNQSwNCj4gKyAgICAgICAgICAgICAgIC5kYXRhICAgICAgICAgICA9ICZjbWFfc2VjX21lbV9k
YXRhLA0KPiArICAgICAgIH0sDQo+ICAgICAgICAgew0KPiAgICAgICAgICAgICAgICAgLm5hbWUg
ICAgICAgICAgID0gInNlY3VyZV9tdGtfY20iLA0KPiAgICAgICAgICAgICAgICAgLm1lbV90eXBl
ICAgICAgID0gU0VDVVJFX01FTU9SWV9UWVBFX01US19DTV9UWiwNCj4gQEAgLTUyMiw3ICs1NTcs
OCBAQCBzdGF0aWMgaW50IF9faW5pdCBzZWN1cmVfY21hX2luaXQoc3RydWN0IHJlc2VydmVkX21l
bSAqcm1lbSkNCj4gICAgICAgICB9DQo+DQo+ICAgICAgICAgZm9yIChpID0gMDsgaSA8IEFSUkFZ
X1NJWkUoc2VjdXJlX2hlYXBzKTsgaSsrLCBzZWNfaGVhcCsrKSB7DQo+IC0gICAgICAgICAgICAg
ICBpZiAoc2VjX2hlYXAtPm1lbV90eXBlICE9IFNFQ1VSRV9NRU1PUllfVFlQRV9NVEtfQ01fQ01B
KQ0KPiArICAgICAgICAgICAgICAgaWYgKHNlY19oZWFwLT5tZW1fdHlwZSAhPSBTRUNVUkVfTUVN
T1JZX1RZUEVfTVRLX0NNX0NNQSAmJg0KPiArICAgICAgICAgICAgICAgICAgIHNlY19oZWFwLT5t
ZW1fdHlwZSAhPSBTRUNVUkVfTUVNT1JZX1RZUEVfQ01BKQ0KPiAgICAgICAgICAgICAgICAgICAg
ICAgICBjb250aW51ZTsNCj4NCj4gICAgICAgICAgICAgICAgIHNlY19oZWFwLT5jbWEgPSBzZWNf
Y21hOw0KPiAtLQ0KPiAyLjI1LjENCj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
