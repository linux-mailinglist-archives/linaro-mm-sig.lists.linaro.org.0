Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C54D7ED6A4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Nov 2023 23:02:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 287EB41265
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Nov 2023 22:02:39 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	by lists.linaro.org (Postfix) with ESMTPS id 135D63F329
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Nov 2023 22:02:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=TQpzgIMQ;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of jkardatzke@google.com designates 209.85.214.177 as permitted sender) smtp.mailfrom=jkardatzke@google.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1cc411be7e5so7915ad.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Nov 2023 14:02:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1700085737; x=1700690537; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JuZvFHzKeqbg6jXEYOC+etK401rPBU1DU0zLZUwkdow=;
        b=TQpzgIMQrBOmht5SbIPm8pg3fx+z4m1p/oa/vyr941B41lU/9dshg3tHKAC5MzJKuE
         oenZQwt3wiw7pMDvLZaEpPxrb4XVKZvNO4AWB+Np8hn02iFwPYisEoTpuNTB8R8CpvoJ
         8rW7iMaV7hJXJwtyGA3W0bra0eWlHBLsa2lbRjfBLurWYnMpEZCnwsgo41QFOo21hMXl
         3QhbuZ5ObWVNjcMVjsewWB4fR65sHjTdAUTYTRSkxsfO7hmQh6afrjSx7p7IaCleQ6jZ
         udlH/a8R6qH76sDkCOWxbkTz5+WIN0sothzO10FpZlAPxJaaAD/1qPpuwCBFdg/YJvF2
         gAsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700085737; x=1700690537;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JuZvFHzKeqbg6jXEYOC+etK401rPBU1DU0zLZUwkdow=;
        b=c42qjks7H6dko9/DOnjPZoPR7zWW9DnDNd1JCIjrzZweS3AGTMxLTZH/D0VOSKGALu
         42AFiMXCi2H4j/nNCXJ4AlrxGTiPgW1qBL4IZesbsV+sJK2Mw0tmPCKfUmQq/COfNBk3
         DcWGkAJA5deS11ZBLQDPPoW/qTjRlPryCjUAOdDTZF4NL7ClXWrg1kcqcRmHCOWwmLgR
         wT8WzbUA7k7CqigRCUWznB7oJyPcB7AatVCUhkX62HeciOKOy8dXBxrA7a27QQk9dwq7
         smrlO7Q8t3+qxEOZMafFjw70JhjNA2SCoqKTbGJ2vqFLBGQnQo9uM0S8Igk7qT4nfpdU
         WKOA==
X-Gm-Message-State: AOJu0Yzw3wI9tKHk9vNPu937gk9yEsPNEgcMQdkzx+59Ct0r9cwsGqV4
	mdRL0Uw3w6REiwh622jZOlP+i3w0pizjtKcfdwf4
X-Google-Smtp-Source: AGHT+IFRrz+wFMxIvQfSahyfIBqJGBGy54Oa9WJpbdDj3Indo4j6kQ+gLppqjmS9wzYszPzrga5jiO2H91ugbxFInwY=
X-Received: by 2002:a17:902:d506:b0:1c7:25e4:a9d5 with SMTP id
 b6-20020a170902d50600b001c725e4a9d5mr45085plg.17.1700085736744; Wed, 15 Nov
 2023 14:02:16 -0800 (PST)
MIME-Version: 1.0
References: <20231111111559.8218-1-yong.wu@mediatek.com> <ZU/V2XX71GbaV6Q8@duo.ucw.cz>
In-Reply-To: <ZU/V2XX71GbaV6Q8@duo.ucw.cz>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Wed, 15 Nov 2023 14:02:05 -0800
Message-ID: <CA+ddPcNd20Bg_pYWqty90NafwC54dz0LGEmTMpia5_7e4=N-cg@mail.gmail.com>
To: Pavel Machek <pavel@ucw.cz>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 135D63F329
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.59 / 15.00];
	BAYES_HAM(-2.99)[99.95%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.177:from];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[26];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[mediatek.com,kernel.org,linaro.org,amd.com,gmail.com,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,quicinc.com,ndufresne.ca];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: TSO6B2DKKUTD5HJZQPEVTGPIJMNXP742
X-Message-ID-Hash: TSO6B2DKKUTD5HJZQPEVTGPIJMNXP742
X-MailFrom: jkardatzke@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Matthias Brugger <matthias.bgg@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, Nicolas Dufresne <nicolas@ndufresne.ca>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/8] dma-buf: heaps: Add secure heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TSO6B2DKKUTD5HJZQPEVTGPIJMNXP742/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIG1haW4gZ29hbCBpcyBmb3Igc2VjdXJlIHZpZGVvIHBsYXliYWNrLCBhbmQgdG8gYWxzbyBl
bmFibGUgb3RoZXINCnBvdGVudGlhbCB1c2VzIG9mIHRoaXMgaW4gdGhlIGZ1dHVyZS4gVGhlICdz
ZWN1cmUgZG1hLWhlYXAnIHdpbGwgYmUNCnVzZWQgdG8gYWxsb2NhdGUgZG1hX2J1ZiBvYmplY3Rz
IHRoYXQgcmVmZXJlbmNlIG1lbW9yeSBpbiB0aGUgc2VjdXJlDQp3b3JsZCB0aGF0IGlzIGluYWNj
ZXNzaWJsZS91bm1hcHBhYmxlIGJ5IHRoZSBub24tc2VjdXJlIChpLmUuDQprZXJuZWwvdXNlcnNw
YWNlKSB3b3JsZC4gIFRoYXQgbWVtb3J5IHdpbGwgYmUgdXNlZCBieSB0aGUgc2VjdXJlIHdvcmxk
DQp0byBzdG9yZSBzZWN1cmUgaW5mb3JtYXRpb24gKGkuZS4gZGVjcnlwdGVkIG1lZGlhIGNvbnRl
bnQpLiBUaGUNCmRtYV9idWZzIGFsbG9jYXRlZCBmcm9tIHRoZSBrZXJuZWwgd2lsbCBiZSBwYXNz
ZWQgdG8gVjRMMiBmb3IgdmlkZW8NCmRlY29kaW5nIChhcyBpbnB1dCBhbmQgb3V0cHV0KS4gVGhl
eSB3aWxsIGFsc28gYmUgdXNlZCBieSB0aGUgZHJtDQpzeXN0ZW0gZm9yIHJlbmRlcmluZyBvZiB0
aGUgY29udGVudC4NCg0KSG9wZSB0aGF0IGhlbHBzLg0KDQpDaGVlcnMsDQpKZWZmDQoNCk9uIE1v
biwgTm92IDEzLCAyMDIzIGF0IDM6MzjigK9BTSBQYXZlbCBNYWNoZWsgPHBhdmVsQHVjdy5jej4g
d3JvdGU6DQo+DQo+IEhpIQ0KPg0KPiA+IFRoaXMgcGF0Y2hzZXQgYWRkcyB0aHJlZSBzZWN1cmUg
aGVhcHM6DQo+ID4gMSkgc2VjdXJlX210a19jbTogc2VjdXJlIGNodW5rIG1lbW9yeSBmb3IgTWVk
aWFUZWsgU1ZQIChTZWN1cmUgVmlkZW8gUGF0aCkuDQo+ID4gICAgVGhlIGJ1ZmZlciBpcyByZXNl
cnZlZCBmb3IgdGhlIHNlY3VyZSB3b3JsZCBhZnRlciBib290dXAgYW5kIGl0IGlzIHVzZWQNCj4g
PiAgICBmb3IgdmNvZGVjJ3MgRVMvd29ya2luZyBidWZmZXI7DQo+ID4gMikgc2VjdXJlX210a19j
bWE6IHNlY3VyZSBDTUEgbWVtb3J5IGZvciBNZWRpYVRlayBTVlAuIFRoaXMgYnVmZmVyIGlzDQo+
ID4gICAgZHluYW1pY2FsbHkgcmVzZXJ2ZWQgZm9yIHRoZSBzZWN1cmUgd29ybGQgYW5kIHdpbGwg
YmUgZ290IHdoZW4gd2Ugc3RhcnQNCj4gPiAgICBwbGF5aW5nIHNlY3VyZSB2aWRlb3MsIE9uY2Ug
dGhlIHNlY3VyaXR5IHZpZGVvIHBsYXlpbmcgaXMgY29tcGxldGUsIHRoZQ0KPiA+ICAgIENNQSB3
aWxsIGJlIHJlbGVhc2VkLiBUaGlzIGhlYXAgaXMgdXNlZCBmb3IgdGhlIHZjb2RlYydzIGZyYW1l
IGJ1ZmZlci4NCj4gPiAzKSBzZWN1cmVfY21hOiBVc2UgdGhlIGtlcm5lIENNQSBvcHMgYXMgdGhl
IGFsbG9jYXRpb24gb3BzLg0KPiA+ICAgIGN1cnJlbnRseSBpdCBpcyBhIGRyYWZ0IHZlcnNpb24g
Zm9yIFZpamF5IGFuZCBKYXNrYXJhbi4NCj4NCj4gSXMgdGhlcmUgaGlnaC1sZXZlbCBkZXNjcmlw
dGlvbiBvZiB3aGF0IHRoZSBzZWN1cml0eSBnb2FscyBoZXJlIGFyZSwNCj4gc29tZXdoZXJlPw0K
Pg0KPiBCUiwNCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgUGF2ZWwNCj4gLS0NCj4gUGVvcGxlIG9mIFJ1c3Np
YSwgc3RvcCBQdXRpbiBiZWZvcmUgaGlzIHdhciBvbiBVa3JhaW5lIGVzY2FsYXRlcy4NCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
