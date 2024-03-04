Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A3D86FB2D
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Mar 2024 08:56:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 928243F6D8
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Mar 2024 07:56:31 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by lists.linaro.org (Postfix) with ESMTPS id 1AE043F6D8
	for <linaro-mm-sig@lists.linaro.org>; Mon,  4 Mar 2024 07:56:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=NKgRTstI;
	spf=pass (lists.linaro.org: domain of noname.nuno@gmail.com designates 209.85.218.44 as permitted sender) smtp.mailfrom=noname.nuno@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a45670f9508so34320166b.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 03 Mar 2024 23:56:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709538983; x=1710143783; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JU7B4JEXTqNDcYf4cw4oV1wq3naZdiA7hXrTs7ex2DA=;
        b=NKgRTstIfAtR7sZbxQx++zm81iEbCCgvV1s4reLn04PI66MZHMPWaXfAte/Wtmc0Gk
         rHlRJXTHMB1T52BMlehRb5hrTUPdvE1Y2eMXpTtnq54XQ8Rl9Tjz3DrSQ/rxG8rswlzR
         1VeGBelw5ix/FoTbRP/D0OBwvRqqniwY5qUT1+vhkC1Rq54CD5mqp/LCNkd3EjMUKVSb
         +SDiVxGKlk9Q5bNcAZyoXTJtCuObFtgpfOJFcncR6NVNLRWhRrbG9by7Wn9cmTirWkve
         itu6ralL1DfkQ5o5WujsAA2zrL6H1Qe4X4nnMPPtelIs9iTV4CBIzX4zQoVZQZiE2wc6
         MjSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709538983; x=1710143783;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JU7B4JEXTqNDcYf4cw4oV1wq3naZdiA7hXrTs7ex2DA=;
        b=ba8vxWTvLpCCUkqaw0PD8Cs9lX7US2HA2fUNyakEYJBdLXnnOuxFCJRFwIc7T+I6QP
         TarTF5Jyz1oouJtXtVkX0iFNa88rNkBArJTFuA5FYVOxuv0pTmUhAAHuNQahcyZ8ae+b
         rAybAewOlzFb3k73tOMoQOGQktvu2yxV2eBpmnqWoIuaaGNhH7RjoOn0zS/WKuLw3iB1
         ySV/rpgstTok+1Epao4wcx88CNQWPan8PVppo81kT4wCAdVQv/vqBrgQdGbh01JF9Z58
         aOkxaqDzd+0XjblqW6GKpw5O4Dx/obcWV/vrQBfnAxbE1882Q1YPiA7h4B9LqajLY55a
         ZdWg==
X-Forwarded-Encrypted: i=1; AJvYcCWh2hJqEl0uZgcCGqRzpyyGRXwbguIOU1Kwp5kZOYVIW1p4RS961JrL45cHHNws6yFEY2FLMR9OAM9B4oJegu+0a5QkWCqv/l0uQQQFZlY=
X-Gm-Message-State: AOJu0YwWOfxFiwXubMGTHbWP51SDHgkeAmcPmDyjIyepdfcfaTHpgq0i
	66dJaLnxr+ywD/cSVmp8MJvZJOUe2BWgJoUrmQymAXCGRxF7c0bY
X-Google-Smtp-Source: AGHT+IFDGr7vFAQ+PxmjQk9WiX9JA+Bj/agAwF6Fti3FyVIMSz4fL7PwqOI0+GiLNxiumrzfSC6zRg==
X-Received: by 2002:a17:906:f293:b0:a45:1fa8:3850 with SMTP id gu19-20020a170906f29300b00a451fa83850mr1753968ejb.58.1709538982788;
        Sun, 03 Mar 2024 23:56:22 -0800 (PST)
Received: from ?IPv6:2003:f6:ef1b:2000:944c:cbc7:1e1c:2c47? (p200300f6ef1b2000944ccbc71e1c2c47.dip0.t-ipconnect.de. [2003:f6:ef1b:2000:944c:cbc7:1e1c:2c47])
        by smtp.gmail.com with ESMTPSA id h4-20020a1709063b4400b00a433f470cf1sm4402055ejf.138.2024.03.03.23.56.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Mar 2024 23:56:22 -0800 (PST)
Message-ID: <43787ce68f731b9267ee558c4c38d634acffe8b9.camel@gmail.com>
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, Nuno Sa <nuno.sa@analog.com>
Date: Mon, 04 Mar 2024 08:59:47 +0100
In-Reply-To: <20240303174245.37efc0b0@jic23-huawei>
References: <20240223-iio-dmabuf-v7-0-78cfaad117b9@analog.com>
	 <20240303174245.37efc0b0@jic23-huawei>
User-Agent: Evolution 3.50.4 
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1AE043F6D8
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.44:from];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: 3ISAVRRJDBCRI44YKL5YQZAAV6HB4RGM
X-Message-ID-Hash: 3ISAVRRJDBCRI44YKL5YQZAAV6HB4RGM
X-MailFrom: noname.nuno@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Vinod Koul <vkoul@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Paul Cercueil <paul@crapouillou.net>, Daniel Vetter <daniel@ffwll.ch>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-doc@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 0/6] iio: new DMABUF based API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3ISAVRRJDBCRI44YKL5YQZAAV6HB4RGM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU3VuLCAyMDI0LTAzLTAzIGF0IDE3OjQyICswMDAwLCBKb25hdGhhbiBDYW1lcm9uIHdyb3Rl
Og0KPiBPbiBGcmksIDIzIEZlYiAyMDI0IDEzOjEzOjU4ICswMTAwDQo+IE51bm8gU2EgPG51bm8u
c2FAYW5hbG9nLmNvbT4gd3JvdGU6DQo+IA0KPiA+IEhpIEpvbmF0aGFuLCBsaWtlbHkgeW91J3Jl
IHdvbmRlcmluZyB3aHkgSSdtIHNlbmRpbmcgdjcuIFdlbGwsIHRvIGJlDQo+ID4gaG9uZXN0LCB3
ZSdyZSBob3BpbmcgdG8gZ2V0IHRoaXMgbWVyZ2VkIHRoaXMgZm9yIHRoZSA2LjkgbWVyZ2Ugd2lu
ZG93Lg0KPiA+IE1haW4gcmVhc29uIGlzIGJlY2F1c2UgdGhlIFVTQiBwYXJ0IGlzIGFscmVhZHkg
aW4gKHNvIGl0IHdvdWxkIGJlIG5pY2UNCj4gPiB0byBnZXQgdGhlIHdob2xlIHRoaW5nIGluKS4g
TW9yZW92ZXIsIHRoZSBjaGFuZ2VzIGFza2VkIGluIHY2IHdlcmUgc2ltcGxlDQo+ID4gKGV2ZW4g
dGhvdWdoIEknbSBub3QgcXVpdGUgc3VyZSBpbiBvbmUgb2YgdGhlbSkgYW5kIFBhdWwgaGFzIG5v
IGFjY2VzcyB0bw0KPiA+IGl0J3MgbGFwdG9wIHNvIGhlIGNhbid0IHNlbmQgdjcgaGltc2VsZi4g
U28gaGUga2luZCBvZiBzYWlkL2Fza2VkIGZvciBtZSB0bw0KPiA+IGRvIGl0Lg0KPiANCj4gU28s
IHdlIGFyZSBjdXR0aW5nIHRoaXMgdmVyeSBmaW5lLiBJZiBMaW51cyBoaW50cyBzdHJvbmdseSBh
dCBhbiByYzggbWF5YmUgd2UNCj4gY2FuIHNuZWFrIHRoaXMgaW4uIEhvd2V2ZXIsIEkgbmVlZCBh
biBBY2sgZnJvbSBWaW5vZCBmb3IgdGhlIGRtYSBlbmdpbmUNCj4gY2hhbmdlcyBmaXJzdC4NCj4g
DQo+IEFsc28gSSdkIGxvdmUgYSBmaW5hbCAnbG9va3Mgb2snIGNvbW1lbnQgZnJvbSBETUFCVUYg
Zm9sayAoQWNrIGV2ZW4gYmV0dGVyISkNCj4gDQo+IFNlZW1zIHRoYXQgdGhlIG90aGVyIHNpZGUg
Z290IHJlc29sdmVkIGluIHRoZSBVU0IgZ2FkZ2V0LCBidXQgbGFzdCB3ZSBoZWFyZA0KPiBmb3Jt
DQo+IERhbmllbCBhbmQgQ2hyaXN0aWFuIGxvb2tzIHRvIGhhdmUgYmVlbiBiYWNrIG9uIHY1LiBJ
J2QgbGlrZSB0aGVtIHRvIGNvbmZpcm0NCj4gdGhleSBhcmUgZmluZSB3aXRoIHRoZSBjaGFuZ2Vz
IG1hZGUgYXMgYSByZXN1bHQuIA0KPiANCg0KSSBjYW4gYXNrIENocmlzdGlhbiBvciBEYW5pZWwg
Zm9yIHNvbWUgYWNrcyBidXQgbXkgZmVlbGluZyAoSSBzdGlsbCBuZWVkLCBhdA0Kc29tZSBwb2lu
dCwgdG8gZ2V0IHJlYWxseSBmYW1pbGlhciB3aXRoIGFsbCBvZiB0aGlzKSBpcyB0aGF0IHRoaXMg
c2hvdWxkIGJlDQpwcmV0dHkgc2ltaWxhciB0byB0aGUgVVNCIHNlcmllcyAoZnJvbSBhIERNQUJV
RiBwb2ludCBvZiB2aWV3KSBhcyB0aGV5IGFyZSBib3RoDQppbXBvcnRlcnMuDQoNCj4gSSd2ZSBi
ZWVuIGhhcHB5IHdpdGggdGhlIElJTyBwYXJ0cyBmb3IgYSBmZXcgdmVyc2lvbnMgbm93IGJ1dCBt
eSBhYmlsaXR5IHRvDQo+IHJldmlldw0KPiB0aGUgRE1BQlVGIGFuZCBETUEgZW5naW5lIGJpdHMg
aXMgbGltaXRlZC4NCj4gDQo+IEEgcmVhbGlzdGljIHBhdGggdG8gZ2V0IHRoaXMgaW4gaXMgcmM4
IGlzIGhhcHBlbmluZywgaXMgYWxsIEFja3MgaW4gcGxhY2UgYnkNCj4gV2VkbmVzZGF5LA0KPiBJ
IGdldCBhcHBseSBpdCBhbmQgaGl0cyBMaW51eC1uZXh0IFRodXJzZGF5LCBQdWxsIHJlcXVlc3Qg
dG8gR3JlZyBvbiBTYXR1cmRheQ0KPiBhbmQgR3JlZw0KPiBpcyBmZWVsaW5nIHBhcnRpY3VsYXJs
eSBnZW5lcm91cyB0byB0YWtlIG9uZSBvbiB0aGUgZGF5IGhlIG5vcm1hbGx5IGNsb3NlcyBoaXMN
Cj4gdHJlZXMuDQo+IA0KDQpXZWxsLCBpdCBsb29rcyBsaWtlIHdlIHN0aWxsIGhhdmUgYSBzaG90
LiBJJ2xsIHRyeSB0byBzZWUgaWYgVmlub2QgaXMgZmluZSB3aXRoDQp0aGUgRE1BRU5HSU5FIHN0
dWZmLg0KDQotIE51bm8gU8OhDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
