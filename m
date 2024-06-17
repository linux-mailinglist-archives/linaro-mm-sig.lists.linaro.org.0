Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A1390A57E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Jun 2024 08:24:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06D9743CEC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Jun 2024 06:24:25 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by lists.linaro.org (Postfix) with ESMTPS id 501E03F4AF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Jun 2024 06:24:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="Od9dD3/Q";
	spf=pass (lists.linaro.org: domain of noname.nuno@gmail.com designates 209.85.218.45 as permitted sender) smtp.mailfrom=noname.nuno@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a6f1dc06298so472670666b.1
        for <linaro-mm-sig@lists.linaro.org>; Sun, 16 Jun 2024 23:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718605461; x=1719210261; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5BA/TosT1CrxQE3NyCIfG5vCxzPOaTI0joE23Fx2Gqc=;
        b=Od9dD3/QPbJt+t1fkzsPUb2FDNQx+GNzz5t+rTn3gwlJBIrs2yx86yZ7yO3L5GTfws
         mtEoAf60MNdNOPYirQL5IoQ/PX1QPKaswCEBapDjSogYJJa3VGrTCubwgXarqhBW7eLK
         CQGF398dKktPptmgmcxaqXkG4Hmwf1BtAqglRKsbnpfUVr1X3u6iqM/dRaIjoTDGHJs0
         yGBKPomz1l46sUbEPCOPrkNJcnz+8T5MPcZuXnCvFDlhBPLA7796tO/xRVoLYw9Rnc1E
         of+gbBl95/hyTIPlLzUPtTt6fqzMwj5LD8n7g/8qhNhA533djdoitod2r8aOhEaE0xJt
         /VCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718605461; x=1719210261;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5BA/TosT1CrxQE3NyCIfG5vCxzPOaTI0joE23Fx2Gqc=;
        b=v7S3I2JdYV+N4iKd2gEQqpNDunCnSjCBaGzOrheitpFQuc/cSrh+a0Sg3q4IC7bVui
         gfR2tDuNx68dnFCCeZHt6VZO7aB0DrNT98bj4WTrgzEs5AKjgUNzPSETgJ2VlTdcbFfK
         dy7XKKT/yxK5naJiVp+/AAEOul0yeWS29qu0Xazt5tsBpzSrwldpI0AQhpinX6Qfd8od
         lAsAmkLSyMVdPXPdFhQF/N+CmfhodfRWJhAWQsXF7rMwyeNAl9FGrjWaVepq/d+PN1vA
         prj4mxi814vCOIQy12saS6YugJUsLoTCIcPEJ5qIoEqidPrSCwKRdZ8oO2jeZUUjFXWB
         mZUg==
X-Forwarded-Encrypted: i=1; AJvYcCWSna/5gCvzsp6H4dEUoaSPubs4Liw9hJNVmg/OiozC2DIDb10G4k4hUaynV+wqxI7w+3LJUuom5ornWeiuwq8RnMoyDrzJJ6Lc5d1u8MU=
X-Gm-Message-State: AOJu0YwR6CMN0/v5zkvLBoTU1DgbkRED2b6TIZqP6BY0Bb6luqKSwupM
	2gUmK3dhIwWLJYNSDt7QappGdXNj4rmX4ptV320Qkv4AnadhPQ5i
X-Google-Smtp-Source: AGHT+IGwPJh8PW95cQ3TUh8Rt+F4WZpn4rbG8t7MJQz99Y0NFynHP5+QpRL00FDtWKBhhin6up50sQ==
X-Received: by 2002:a17:907:c003:b0:a6f:6b6a:e8d2 with SMTP id a640c23a62f3a-a6f6b6aec48mr560764166b.11.1718605460884;
        Sun, 16 Jun 2024 23:24:20 -0700 (PDT)
Received: from nsa.fritz.box ([2001:a61:35f9:9001:40df:88bb:5090:7ab6])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f7c12f7c0sm191184366b.198.2024.06.16.23.24.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jun 2024 23:24:20 -0700 (PDT)
Message-ID: <f0c709e3bf3f1ebfac29274b8f7182df9022376e.camel@gmail.com>
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Paul Cercueil <paul@crapouillou.net>, Jonathan Cameron <jic23@kernel.org>
Date: Mon, 17 Jun 2024 08:24:19 +0200
In-Reply-To: <0cdcf83a1ab7c199244d4a00157f6fa8979ef819.camel@crapouillou.net>
References: <20240605110845.86740-1-paul@crapouillou.net>
	 <20240605110845.86740-4-paul@crapouillou.net>
	 <20240609105302.07de907a@jic23-huawei>
	 <0cdcf83a1ab7c199244d4a00157f6fa8979ef819.camel@crapouillou.net>
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: 501E03F4AF
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.45:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.218.45:from];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: UVJGNFC7UGZ5XPXCGUMBSXWRXBHPOM5B
X-Message-ID-Hash: UVJGNFC7UGZ5XPXCGUMBSXWRXBHPOM5B
X-MailFrom: noname.nuno@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lars-Peter Clausen <lars@metafoo.de>, Vinod Koul <vkoul@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Nuno Sa <nuno.sa@analog.com>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 3/6] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UVJGNFC7UGZ5XPXCGUMBSXWRXBHPOM5B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU2F0LCAyMDI0LTA2LTE1IGF0IDEzOjA3ICswMjAwLCBQYXVsIENlcmN1ZWlsIHdyb3RlOg0K
PiBMZSBkaW1hbmNoZSAwOSBqdWluIDIwMjQgw6AgMTA6NTMgKzAxMDAsIEpvbmF0aGFuIENhbWVy
b24gYSDDqWNyaXTCoDoNCj4gPiBPbiBXZWQswqAgNSBKdW4gMjAyNCAxMzowODo0MiArMDIwMA0K
PiA+IFBhdWwgQ2VyY3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PiB3cm90ZToNCj4gPiANCj4g
PiA+IEFkZCB0aGUgbmVjZXNzYXJ5IGluZnJhc3RydWN0dXJlIHRvIHRoZSBJSU8gY29yZSB0byBz
dXBwb3J0IGEgbmV3DQo+ID4gPiBvcHRpb25hbCBETUFCVUYgYmFzZWQgaW50ZXJmYWNlLg0KPiA+
ID4gDQo+ID4gPiBXaXRoIHRoaXMgbmV3IGludGVyZmFjZSwgRE1BQlVGIG9iamVjdHMgKGV4dGVy
bmFsbHkgY3JlYXRlZCkgY2FuIGJlDQo+ID4gPiBhdHRhY2hlZCB0byBhIElJTyBidWZmZXIsIGFu
ZCBzdWJzZXF1ZW50bHkgdXNlZCBmb3IgZGF0YSB0cmFuc2Zlci4NCj4gPiA+IA0KPiA+ID4gQSB1
c2Vyc3BhY2UgYXBwbGljYXRpb24gY2FuIHRoZW4gdXNlIHRoaXMgaW50ZXJmYWNlIHRvIHNoYXJl
IERNQUJVRg0KPiA+ID4gb2JqZWN0cyBiZXR3ZWVuIHNldmVyYWwgaW50ZXJmYWNlcywgYWxsb3dp
bmcgaXQgdG8gdHJhbnNmZXIgZGF0YSBpbg0KPiA+ID4gYQ0KPiA+ID4gemVyby1jb3B5IGZhc2hp
b24sIGZvciBpbnN0YW5jZSBiZXR3ZWVuIElJTyBhbmQgdGhlIFVTQiBzdGFjay4NCj4gPiA+IA0K
PiA+ID4gVGhlIHVzZXJzcGFjZSBhcHBsaWNhdGlvbiBjYW4gYWxzbyBtZW1vcnktbWFwIHRoZSBE
TUFCVUYgb2JqZWN0cywNCj4gPiA+IGFuZA0KPiA+ID4gYWNjZXNzIHRoZSBzYW1wbGUgZGF0YSBk
aXJlY3RseS4gVGhlIGFkdmFudGFnZSBvZiBkb2luZyB0aGlzIHZzLg0KPiA+ID4gdGhlDQo+ID4g
PiByZWFkKCkgaW50ZXJmYWNlIGlzIHRoYXQgaXQgYXZvaWRzIGFuIGV4dHJhIGNvcHkgb2YgdGhl
IGRhdGENCj4gPiA+IGJldHdlZW4gdGhlDQo+ID4gPiBrZXJuZWwgYW5kIHVzZXJzcGFjZS4gVGhp
cyBpcyBwYXJ0aWN1bGFybHkgdXNlcmZ1bCBmb3IgaGlnaC1zcGVlZA0KPiA+ID4gZGV2aWNlcyB3
aGljaCBwcm9kdWNlIHNldmVyYWwgbWVnYWJ5dGVzIG9yIGV2ZW4gZ2lnYWJ5dGVzIG9mIGRhdGEN
Cj4gPiA+IHBlcg0KPiA+ID4gc2Vjb25kLg0KPiA+ID4gDQo+ID4gPiBBcyBwYXJ0IG9mIHRoZSBp
bnRlcmZhY2UsIDMgbmV3IElPQ1RMcyBoYXZlIGJlZW4gYWRkZWQ6DQo+ID4gPiANCj4gPiA+IElJ
T19CVUZGRVJfRE1BQlVGX0FUVEFDSF9JT0NUTChpbnQgZmQpOg0KPiA+ID4gwqBBdHRhY2ggdGhl
IERNQUJVRiBvYmplY3QgaWRlbnRpZmllZCBieSB0aGUgZ2l2ZW4gZmlsZSBkZXNjcmlwdG9yDQo+
ID4gPiB0byB0aGUNCj4gPiA+IMKgYnVmZmVyLg0KPiA+ID4gDQo+ID4gPiBJSU9fQlVGRkVSX0RN
QUJVRl9ERVRBQ0hfSU9DVEwoaW50IGZkKToNCj4gPiA+IMKgRGV0YWNoIHRoZSBETUFCVUYgb2Jq
ZWN0IGlkZW50aWZpZWQgYnkgdGhlIGdpdmVuIGZpbGUgZGVzY3JpcHRvcg0KPiA+ID4gZnJvbQ0K
PiA+ID4gwqB0aGUgYnVmZmVyLiBOb3RlIHRoYXQgY2xvc2luZyB0aGUgSUlPIGJ1ZmZlcidzIGZp
bGUgZGVzY3JpcHRvcg0KPiA+ID4gd2lsbA0KPiA+ID4gwqBhdXRvbWF0aWNhbGx5IGRldGFjaCBh
bGwgcHJldmlvdXNseSBhdHRhY2hlZCBETUFCVUYgb2JqZWN0cy4NCj4gPiA+IA0KPiA+ID4gSUlP
X0JVRkZFUl9ETUFCVUZfRU5RVUVVRV9JT0NUTChzdHJ1Y3QgaWlvX2RtYWJ1ZiAqKToNCj4gPiA+
IMKgUmVxdWVzdCBhIGRhdGEgdHJhbnNmZXIgdG8vZnJvbSB0aGUgZ2l2ZW4gRE1BQlVGIG9iamVj
dC4gSXRzIGZpbGUNCj4gPiA+IMKgZGVzY3JpcHRvciwgYXMgd2VsbCBhcyB0aGUgdHJhbnNmZXIg
c2l6ZSBhbmQgZmxhZ3MgYXJlIHByb3ZpZGVkIGluDQo+ID4gPiB0aGUNCj4gPiA+IMKgImlpb19k
bWFidWYiIHN0cnVjdHVyZS4NCj4gPiA+IA0KPiA+ID4gVGhlc2UgdGhyZWUgSU9DVExzIGhhdmUg
dG8gYmUgcGVyZm9ybWVkIG9uIHRoZSBJSU8gYnVmZmVyJ3MgZmlsZQ0KPiA+ID4gZGVzY3JpcHRv
ciwgb2J0YWluZWQgdXNpbmcgdGhlIElJT19CVUZGRVJfR0VUX0ZEX0lPQ1RMKCkgaW9jdGwuDQo+
ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFBhdWwgQ2VyY3VlaWwgPHBhdWxAY3JhcG91aWxs
b3UubmV0Pg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogTnVubyBTYSA8bnVuby5zYUBhbmFsb2cuY29t
Pg0KPiA+IA0KPiA+IE5lZWQgYSBicmllZiBub3RlIG9uIHRoZSBzaWduIG9mZiBjaGFpbi4NCj4g
PiBXaGF0IGlzIE51bm8ncyByb2xlIGluIHRoaXMgc2VyaWVzIGFzIGhlJ3Mgbm90IHNlbmRpbmcg
dGhlIGVtYWlscyBhbmQNCj4gPiBub3QNCj4gPiBtYXJrZWQgd2l0aCBDby1kZXZlbG9wZWQtYnkg
DQo+IA0KPiBUaGF0J3MgYSBnb29kIHF1ZXN0aW9uLiBJIHRoaW5rIGhlIHNlbnQgb25lIHJldmlz
aW9uIG9mIHRoZSBwYXRjaHNldA0KPiAodjcgb3Igc29tZXRoaW5nIGxpa2UgdGhhdCkgc28gaGUg
YWRkZWQgaGlzIFNvQi4NCj4gDQo+IChOdW5vOiB5b3UgY29uZmlybT8pDQoNCmV4YWN0bHkuLi4N
Cg0KPiANCj4gSSdsbCBhZGQgaGlzIENvLWRldmVsb3BlZC1ieSB0aGVuLg0KDQpOb3Qgc3VyZSBp
ZiB0aGF0IGlzIHJlYWxseSBkZXNlcnZlZCA6KS4uLiBNYXliZSBqdXN0IHJlbW92ZSBteSB0YWcu
DQoNCi0gTnVubyBTw6ENCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
