Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB6379D42C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 16:58:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E93063EFEF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 14:58:53 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by lists.linaro.org (Postfix) with ESMTPS id 9E3863E925
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Sep 2023 14:58:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=xsgfA1sV;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.222.178) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-76f2843260bso350908885a.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Sep 2023 07:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1694530727; x=1695135527; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Eoo29MeQUAIUv6tGjm0mF+Jl3ogymeV13KAAfraCdL0=;
        b=xsgfA1sVN9xmbuDO7Ityr0CxPFA+Zci11LAja2maJVQ/RkkiKSakS3J5eJPdb2u3ko
         k+XBqGW2NQNvtvgE5NFs9JInwxeKubwacgCvgg+bpiKazLquPXUz8mEqoBQLWT9hHz2j
         BxkyKoRC0S6K6MX5br9ECYWa4OmrfIAXIzwREAx09GKVnKj3Uqk1HOK+vpCr0+4euyiW
         7rIC6ox03sHePhke0zrQiJ33IKZXv0R8WbSmtOkyC+9wUodG3HXWOuCeSsSp7ltPHdo3
         qfMWOMH6gLvlzWJ0ibPXm8vLX7JyD+RMbs/8ZQ0gd3wnp8vrN+tzY6rIVYzAMAeNQ6sm
         bNzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694530727; x=1695135527;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Eoo29MeQUAIUv6tGjm0mF+Jl3ogymeV13KAAfraCdL0=;
        b=ntAYr3XCdRi+RICrhMOIOIXtWGKTkimyD/veRLtvKa/xlhjmpf6f0JRQM0FFLBNOLT
         E3CUCIrWh5d20zy6+YhCwV/Z+/iWqYCyqbKxdYxRkBsQ6pHEzvIoTMTEfJMgW5GPSG9W
         L+NXDYkG6kvt5f0AXHmI0K/LGjf8zoqsp1hAoqv0YPhl/2drcrmvlVwQ+nZMMFFMEAVM
         i8zB6sI48AOEPxMx8UPZrfl2vVpA49oIJ4zNIgxnps3UItqMgmBH4mnVbjABdeEs+qa+
         /LtIuiUe+awgqarMTz1nbaYb9J7uApaugiM6LViGJuy6HlXt3e1ymOXAGR1dgz8Yz/kQ
         qbkA==
X-Gm-Message-State: AOJu0Ywd3xgnlhyRIzAX9R4c1300BqvWWxlrc+bV0ixc2RnY2s4+0jun
	FCHtO71T74YW0EnRk18JeirVEQ==
X-Google-Smtp-Source: AGHT+IGyVl5EhWb4dmDbUhd1ETJuzzG2tL8uNGiJBeQ5lfOHSv0Ap/ccPuu267/edyULKyU0FY0O+A==
X-Received: by 2002:a05:620a:408a:b0:768:4206:fc8d with SMTP id f10-20020a05620a408a00b007684206fc8dmr17108475qko.50.1694530727023;
        Tue, 12 Sep 2023 07:58:47 -0700 (PDT)
Received: from nicolas-tpx395.localdomain ([2606:6d00:15:bae9::7a9])
        by smtp.gmail.com with ESMTPSA id m12-20020ae9e70c000000b0076c60b95b87sm3208422qka.96.2023.09.12.07.58.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Sep 2023 07:58:46 -0700 (PDT)
Message-ID: <8140975aa1f5c3cbdfa2e6f42aecebe3701f29da.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	Yong Wu =?UTF-8?Q?=28=E5=90=B4=E5=8B=87=29?=
	 <Yong.Wu@mediatek.com>, "jstultz@google.com" <jstultz@google.com>
Date: Tue, 12 Sep 2023 10:58:45 -0400
In-Reply-To: <95797f3d-65bf-1bd9-9e19-6de42605cfe3@gmail.com>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
	 <20230911023038.30649-4-yong.wu@mediatek.com>
	 <803846bc-fd1d-d2ec-2855-456af22c82f8@amd.com>
	 <CANDhNCrQyiFZ+8DnG0iyKBXC0H1698K1a9d2AxOq4whDsZBn+Q@mail.gmail.com>
	 <23e71d1f-08c1-3834-5b1f-2b5714c7bfaa@gmail.com>
	 <255ae6b9ac1b6bea9262069747824b8461475e70.camel@mediatek.com>
	 <95797f3d-65bf-1bd9-9e19-6de42605cfe3@gmail.com>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: 9E3863E925
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ndufresne.ca];
	FREEMAIL_CC(0.00)[linaro.org,vger.kernel.org,kernel.org,lists.infradead.org,lists.linaro.org,mediatek.com,arm.com,collabora.com,google.com,lists.freedesktop.org,gmail.com];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_TO(0.00)[gmail.com,mediatek.com,google.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.178:from];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[dt];
	BLOCKLISTDE_FAIL(0.00)[209.85.222.178:server fail,2606:6d00:15:bae9::7a9:server fail];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ndufresne-ca.20230601.gappssmtp.com:dkim,mail-qk1-f178.google.com:helo,mail-qk1-f178.google.com:rdns]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: D2KEOYAPQKDJM7TAX2YITOI5EPJQC4YY
X-Message-ID-Hash: D2KEOYAPQKDJM7TAX2YITOI5EPJQC4YY
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Jianjiao Zeng =?UTF-8?Q?=28=E6=9B=BE=E5=81=A5=E5=A7=A3=29?= <Jianjiao.Zeng@mediatek.com>, Kuohong Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=8B=E9=B4=BB=29?= <kuohong.wang@mediatek.com>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "matthias.bgg@gmail.com" <matthias.bgg@gmai
 l.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] dma-heap: Provide accessors so that in-kernel drivers can allocate dmabufs from specific heaps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D2KEOYAPQKDJM7TAX2YITOI5EPJQC4YY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgbWFyZGkgMTIgc2VwdGVtYnJlIDIwMjMgw6AgMTY6NDYgKzAyMDAsIENocmlzdGlhbiBLw7Zu
aWcgYSDDqWNyaXTCoDoNCj4gQW0gMTIuMDkuMjMgdW0gMTA6NTIgc2NocmllYiBZb25nIFd1ICjl
kLTli4cpOg0KPiA+IFtTTklQXQ0KPiA+ID4gQnV0IHdoYXQgd2Ugc2hvdWxkIHRyeSB0byBhdm9p
ZCBpcyB0aGF0IG5ld2x5IG1lcmdlZCBkcml2ZXJzIHByb3ZpZGUNCj4gPiA+IGJvdGggYSBkcml2
ZXIgc3BlY2lmaWMgVUFQSSBhbmQgRE1BLWhlYXBzLiBUaGUganVzdGlmaWNhdGlvbiB0aGF0DQo+
ID4gPiB0aGlzDQo+ID4gPiBtYWtlcyBpdCBlYXNpZXIgdG8gdHJhbnNpdCB1c2Vyc3BhY2UgdG8g
dGhlIG5ldyBVQVBJIGRvZXNuJ3QgcmVhbGx5DQo+ID4gPiBjb3VudC4NCj4gPiA+IA0KPiA+ID4g
VGhhdCB3b3VsZCBiZSBhZGRpbmcgVUFQSSBhbHJlYWR5IHdpdGggYSBwbGFuIHRvIGRlcHJlY2F0
ZSBpdCBhbmQNCj4gPiA+IHRoYXQNCj4gPiA+IGlzIG1vc3QgbGlrZWx5IG5vdCBoZWxwZnVsIGNv
bnNpZGVyaW5nIHRoYXQgVUFQSSBtdXN0IGJlIHN1cHBvcnRlZA0KPiA+ID4gZm9yZXZlciBhcyBz
b29uIGFzIGl0IGlzIHVwc3RyZWFtLg0KPiA+IFNvcnJ5LCBJIGRpZG4ndCB1bmRlcnN0YW5kIHRo
aXMuIEkgdGhpbmsgd2UgaGF2ZSBub3QgY2hhbmdlIHRoZSBVQVBJLg0KPiA+IFdoaWNoIGNvZGUg
YXJlIHlvdSByZWZlcnJpbmcgdG8/DQo+IA0KPiBXZWxsLCB3aGF0IGRvIHlvdSBuZWVkIHRoaXMg
Zm9yIGlmIG5vdCBhIG5ldyBVQVBJPw0KPiANCj4gTXkgYXNzdW1wdGlvbiBoZXJlIGlzIHRoYXQg
eW91IG5lZWQgdG8gZXhwb3J0IHRoZSBETUEtaGVhcCBhbGxvY2F0aW9uIA0KPiBmdW5jdGlvbiBz
byB0aGF0IHlvdSBjYW4gc2VydmVyIGFuIFVBUEkgaW4geW91ciBuZXcgZHJpdmVyLiBPciB3aGF0
IGVsc2UgDQo+IGlzIHRoYXQgZ29vZCBmb3I/DQo+IA0KPiBBcyBmYXIgYXMgSSB1bmRlcnN0YW5k
IHlvdSB0cnkgdG8gdXBzdHJlYW0geW91ciBuZXcgdmNvZGVjIGRyaXZlci4gU28gDQo+IHdoaWxl
IHRoaXMgY2hhbmdlIGhlcmUgc2VlbXMgdG8gYmUgYSBnb29kIGlkZWEgdG8gY2xlYW4gdXAgZXhp
c3RpbmcgDQo+IGRyaXZlcnMgaXQgZG9lc24ndCBsb29rIGxpa2UgYSBnb29kIGlkZWEgZm9yIGEg
bmV3bHkgY3JlYXRlZCBkcml2ZXIuDQoNCk1USyBWQ09ERUMgaGFzIGJlZW4gdXBzdHJlYW0gZm9y
IHF1aXRlIHNvbWUgdGltZSBub3cuIFRoZSBvdGhlciBwYXRjaHNldCBpcw0KdHJ5aW5nIHRvIGFk
ZCBzZWN1cmUgZGVjb2RpbmcvZW5jb2Rpbmcgc3VwcG9ydCB0byB0aGF0IGV4aXN0aW5nIHVwc3Ry
ZWFtIGRyaXZlci4NCg0KUmVnYXJkaW5nIHRoZSB1QVBJLCBpdCBzZWVtcyB0aGF0IHRoaXMgYWRk
aXRpb24gdG8gZG1hYnVmIGhlYXAgaW50ZXJuYWwgQVBJIGlzDQpleGFjdGx5IHRoZSBvcHBvc2l0
ZS4gQnkgbWFraW5nIGhlYXBzIGF2YWlsYWJsZSB0byBkcml2ZXJzLCBtb2RpZmljYXRpb24gdG8g
dGhlDQpWNEwyIHVBUEkgaXMgYmVpbmcgcmVkdWNlZCB0byBhZGRpbmcgIlNFQ1VSRV9NT0RFIiAr
ICJTRUNVUkVfSEVBUF9JRCIgY29udHJvbHMNCih0aGlzIGlzIG5vdCBkZWJhdGVkIHlldCBoYXMg
YW4gYXBwcm9hY2gpLiBUaGUgaGVhcHMgaXMgYmVpbmcgdXNlZCBpbnRlcm5hbGx5IGluDQpyZXBs
YWNlbWVudCB0byBldmVyeSBhbGxvY2F0aW9uLCB1c2VyIHZpc2libGUgb3Igbm90Lg0KDQpOaWNv
bGFzDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4gDQo+ID4gPiA+IFNvIEkgdGhp
bmsgdGhpcyBwYXRjaCBpcyBhIGxpdHRsZSBjb25mdXNpbmcgaW4gdGhpcyBzZXJpZXMsIGFzIEkN
Cj4gPiA+IGRvbid0DQo+ID4gPiA+IHNlZSBtdWNoIG9mIGl0IGFjdHVhbGx5IGJlaW5nIHVzZWQg
aGVyZSAodGhvdWdoIGZvcmdpdmUgbWUgaWYgSSdtDQo+ID4gPiA+IG1pc3NpbmcgaXQpLg0KPiA+
ID4gPiANCj4gPiA+ID4gSW5zdGVhZCwgSXQgc2VlbXMgaXQgZ2V0IHVzZWQgaW4gYSBzZXBhcmF0
ZSBwYXRjaCBzZXJpZXMgaGVyZToNCj4gPiA+ID4gICAgIA0KPiA+ID4gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvYWxsLzIwMjMwOTExMTI1OTM2LjEwNjQ4LTEteXVuZmVpLmRvbmdAbWVkaWF0ZWsu
Y29tLw0KPiA+ID4gDQo+ID4gPiBQbGVhc2UgdHJ5IHRvIGF2b2lkIHN0dWZmIGxpa2UgdGhhdCBp
dCBpcyByZWFsbHkgY29uZnVzaW5nIGFuZCBlYXRzDQo+ID4gPiByZXZpZXdlcnMgdGltZS4NCj4g
PiBNeSBmYXVsdCwgSSB0aG91Z2h0IGRtYS1idWYgYW5kIG1lZGlhIGJlbG9uZ2VkIHRvIHRoZSBk
aWZmZXJlbnQgdHJlZSwNCj4gPiBzbyBJIHNlbmQgdGhlbSBzZXBhcmF0ZWx5LiBUaGUgY292ZXIg
bGV0dGVyIGp1c3Qgc2FpZCAiVGhlIGNvbnN1bWVycyBvZg0KPiA+IHRoZSBuZXcgaGVhcCBhbmQg
bmV3IGludGVyZmFjZSBhcmUgb3VyIGNvZGVjcyBhbmQgRFJNLCB3aGljaCB3aWxsIGJlDQo+ID4g
c2VudCB1cHN0cmVhbSBzb29uIiwgYW5kIHRoZXJlIHdhcyBubyB2Y29kZWMgbGluayBhdCB0aGF0
IHRpbWUuDQo+ID4gDQo+ID4gSW4gdGhlIG5leHQgdmVyc2lvbiwgd2Ugd2lsbCBwdXQgdGhlIGZp
cnN0IHRocmVlIHBhdGNoZXMgaW50byB0aGUNCj4gPiB2Y29kZWMgcGF0Y2hzZXQuDQo+ID4gDQo+
ID4gVGhhbmtzLg0KPiA+IA0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
