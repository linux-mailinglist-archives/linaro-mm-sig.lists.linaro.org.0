Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 08655870297
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Mar 2024 14:24:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC96A40E26
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Mar 2024 13:24:52 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by lists.linaro.org (Postfix) with ESMTPS id 7FE493F654
	for <linaro-mm-sig@lists.linaro.org>; Mon,  4 Mar 2024 13:24:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=aYtsuwkN;
	spf=pass (lists.linaro.org: domain of noname.nuno@gmail.com designates 209.85.208.48 as permitted sender) smtp.mailfrom=noname.nuno@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5656e5754ccso5743459a12.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 04 Mar 2024 05:24:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709558684; x=1710163484; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZDGolps/rBe+Ix3AUVTQ7Pu/h2VP38OieQuvyzp7lYE=;
        b=aYtsuwkNLSLqN6xEkShy8t/k7YHGfO/5vmbYWD+Vtg8LRiPROJyVBEkox1IEjutrL/
         bKDlYpNOIXzNQt0BU/DN3oRMhUgtUQYlH0+3uP/qqPLXhMm4BkVKZ2jLyr3MAdUcU0lm
         u5VMt2vPW0Vi4YlbzaSgWCXed9tG40DL9aw4Cyz9894cJL+015v/sZ8xIMJgA/9S0pJ+
         thsm72oR3To+3qg+zQ5m9HAVWcnaelwRDnc0z3dBvJqek3WByrawhdhIzB1qDuE0oGwG
         vBervkXnmvJdzabbaQ3XFoQ49o5Tjic/FuF3CLQzEJn1GcS5cKlsVv5PtanipJdd3EY9
         IUHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709558684; x=1710163484;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZDGolps/rBe+Ix3AUVTQ7Pu/h2VP38OieQuvyzp7lYE=;
        b=IQaahmAvLCkYELElAgBtOpd/HpO4MaDBxgwEmf8YLTjdUWfU9aIc6zEDvQIP8pdGUJ
         elzCXkCEcJRsgFR+z/QYZjbQdFmb8mPz0A4BbvcdHgBEY9hZNcnx7iyaoQG+r/tGHyTR
         rq4hgJea4IC+jaU4ac4UBVC/Oijwi87+laZTgRakSAfAGgRWVqnzbCxAYztc9SMCpkFM
         ScGawmepBUy8rEm6V6ONV1bGp3FOfWYq35BDDWZlDZxC55f624gcPdgCRgTYKWsq5ykR
         spkK8oaPYJud3T9Zjj+0vQM6CVSt/YTqJD6UBCYzNKJFXLocQWOpPCOIeq2ORXEJlEpP
         GTvw==
X-Forwarded-Encrypted: i=1; AJvYcCXquWqJliAbw3ItYT536ynfTqxZ43fvaavktGK22LGfPZ0xdz315em8lG6t/ZspO2XecrWHjirdWTiNBot0xbdfxO2zqknQ2oXgKRtTCzE=
X-Gm-Message-State: AOJu0YzjVDA8mtXRbzRzOR12kRQe7NPGFHAbBejmfW7rQKm3sCkXUU4D
	v6dX0Lg1wraABS8Mq6XZ+OzOpAc2nIPEtYahEnZMPOygEnzgv2XI
X-Google-Smtp-Source: AGHT+IGTFzZaAOkx49PczP3s79h93y2M46UqRDVgG21ZtKP9eanzSUVE1H/HeBSVThdLJlEEEq872A==
X-Received: by 2002:aa7:d597:0:b0:565:6df0:8712 with SMTP id r23-20020aa7d597000000b005656df08712mr6708179edq.22.1709558684113;
        Mon, 04 Mar 2024 05:24:44 -0800 (PST)
Received: from ?IPv6:2003:f6:ef1b:2000:944c:cbc7:1e1c:2c47? (p200300f6ef1b2000944ccbc71e1c2c47.dip0.t-ipconnect.de. [2003:f6:ef1b:2000:944c:cbc7:1e1c:2c47])
        by smtp.gmail.com with ESMTPSA id m13-20020aa7d34d000000b0056486eaa669sm4630020edr.50.2024.03.04.05.24.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Mar 2024 05:24:43 -0800 (PST)
Message-ID: <f40f018359d25c78abbeeb3ce02c5b761aabe900.camel@gmail.com>
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Nuno Sa
	 <nuno.sa@analog.com>, Vinod Koul <vkoul@kernel.org>, Lars-Peter Clausen
	 <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, Sumit Semwal
	 <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Paul Cercueil
	 <paul@crapouillou.net>
Date: Mon, 04 Mar 2024 14:28:08 +0100
In-Reply-To: <85782edb-4876-4cbd-ac14-abcbcfb58770@amd.com>
References: <20240223-iio-dmabuf-v7-0-78cfaad117b9@analog.com>
	 <20240223-iio-dmabuf-v7-3-78cfaad117b9@analog.com>
	 <85782edb-4876-4cbd-ac14-abcbcfb58770@amd.com>
User-Agent: Evolution 3.50.4 
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7FE493F654
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.48:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
Message-ID-Hash: 63IOEUEMEY2RECSWGO4XTGFVXRL34YA5
X-Message-ID-Hash: 63IOEUEMEY2RECSWGO4XTGFVXRL34YA5
X-MailFrom: noname.nuno@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-doc@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 3/6] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/63IOEUEMEY2RECSWGO4XTGFVXRL34YA5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCAyMDI0LTAzLTA0IGF0IDEzOjQ0ICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBBbSAyMy4wMi4yNCB1bSAxMzoxNCBzY2hyaWViIE51bm8gU2E6DQo+ID4gRnJvbTogUGF1
bCBDZXJjdWVpbCA8cGF1bEBjcmFwb3VpbGxvdS5uZXQ+DQo+ID4gDQo+ID4gQWRkIHRoZSBuZWNl
c3NhcnkgaW5mcmFzdHJ1Y3R1cmUgdG8gdGhlIElJTyBjb3JlIHRvIHN1cHBvcnQgYSBuZXcNCj4g
PiBvcHRpb25hbCBETUFCVUYgYmFzZWQgaW50ZXJmYWNlLg0KPiA+IA0KPiA+IFdpdGggdGhpcyBu
ZXcgaW50ZXJmYWNlLCBETUFCVUYgb2JqZWN0cyAoZXh0ZXJuYWxseSBjcmVhdGVkKSBjYW4gYmUN
Cj4gPiBhdHRhY2hlZCB0byBhIElJTyBidWZmZXIsIGFuZCBzdWJzZXF1ZW50bHkgdXNlZCBmb3Ig
ZGF0YSB0cmFuc2Zlci4NCj4gPiANCj4gPiBBIHVzZXJzcGFjZSBhcHBsaWNhdGlvbiBjYW4gdGhl
biB1c2UgdGhpcyBpbnRlcmZhY2UgdG8gc2hhcmUgRE1BQlVGDQo+ID4gb2JqZWN0cyBiZXR3ZWVu
IHNldmVyYWwgaW50ZXJmYWNlcywgYWxsb3dpbmcgaXQgdG8gdHJhbnNmZXIgZGF0YSBpbiBhDQo+
ID4gemVyby1jb3B5IGZhc2hpb24sIGZvciBpbnN0YW5jZSBiZXR3ZWVuIElJTyBhbmQgdGhlIFVT
QiBzdGFjay4NCj4gPiANCj4gPiBUaGUgdXNlcnNwYWNlIGFwcGxpY2F0aW9uIGNhbiBhbHNvIG1l
bW9yeS1tYXAgdGhlIERNQUJVRiBvYmplY3RzLCBhbmQNCj4gPiBhY2Nlc3MgdGhlIHNhbXBsZSBk
YXRhIGRpcmVjdGx5LiBUaGUgYWR2YW50YWdlIG9mIGRvaW5nIHRoaXMgdnMuIHRoZQ0KPiA+IHJl
YWQoKSBpbnRlcmZhY2UgaXMgdGhhdCBpdCBhdm9pZHMgYW4gZXh0cmEgY29weSBvZiB0aGUgZGF0
YSBiZXR3ZWVuIHRoZQ0KPiA+IGtlcm5lbCBhbmQgdXNlcnNwYWNlLiBUaGlzIGlzIHBhcnRpY3Vs
YXJseSB1c2VyZnVsIGZvciBoaWdoLXNwZWVkDQo+ID4gZGV2aWNlcyB3aGljaCBwcm9kdWNlIHNl
dmVyYWwgbWVnYWJ5dGVzIG9yIGV2ZW4gZ2lnYWJ5dGVzIG9mIGRhdGEgcGVyDQo+ID4gc2Vjb25k
Lg0KPiA+IA0KPiA+IEFzIHBhcnQgb2YgdGhlIGludGVyZmFjZSwgMyBuZXcgSU9DVExzIGhhdmUg
YmVlbiBhZGRlZDoNCj4gPiANCj4gPiBJSU9fQlVGRkVSX0RNQUJVRl9BVFRBQ0hfSU9DVEwoaW50
IGZkKToNCj4gPiDCoCBBdHRhY2ggdGhlIERNQUJVRiBvYmplY3QgaWRlbnRpZmllZCBieSB0aGUg
Z2l2ZW4gZmlsZSBkZXNjcmlwdG9yIHRvIHRoZQ0KPiA+IMKgIGJ1ZmZlci4NCj4gPiANCj4gPiBJ
SU9fQlVGRkVSX0RNQUJVRl9ERVRBQ0hfSU9DVEwoaW50IGZkKToNCj4gPiDCoCBEZXRhY2ggdGhl
IERNQUJVRiBvYmplY3QgaWRlbnRpZmllZCBieSB0aGUgZ2l2ZW4gZmlsZSBkZXNjcmlwdG9yIGZy
b20NCj4gPiDCoCB0aGUgYnVmZmVyLiBOb3RlIHRoYXQgY2xvc2luZyB0aGUgSUlPIGJ1ZmZlcidz
IGZpbGUgZGVzY3JpcHRvciB3aWxsDQo+ID4gwqAgYXV0b21hdGljYWxseSBkZXRhY2ggYWxsIHBy
ZXZpb3VzbHkgYXR0YWNoZWQgRE1BQlVGIG9iamVjdHMuDQo+ID4gDQo+ID4gSUlPX0JVRkZFUl9E
TUFCVUZfRU5RVUVVRV9JT0NUTChzdHJ1Y3QgaWlvX2RtYWJ1ZiAqKToNCj4gPiDCoCBSZXF1ZXN0
IGEgZGF0YSB0cmFuc2ZlciB0by9mcm9tIHRoZSBnaXZlbiBETUFCVUYgb2JqZWN0LiBJdHMgZmls
ZQ0KPiA+IMKgIGRlc2NyaXB0b3IsIGFzIHdlbGwgYXMgdGhlIHRyYW5zZmVyIHNpemUgYW5kIGZs
YWdzIGFyZSBwcm92aWRlZCBpbiB0aGUNCj4gPiDCoCAiaWlvX2RtYWJ1ZiIgc3RydWN0dXJlLg0K
PiA+IA0KPiA+IFRoZXNlIHRocmVlIElPQ1RMcyBoYXZlIHRvIGJlIHBlcmZvcm1lZCBvbiB0aGUg
SUlPIGJ1ZmZlcidzIGZpbGUNCj4gPiBkZXNjcmlwdG9yLCBvYnRhaW5lZCB1c2luZyB0aGUgSUlP
X0JVRkZFUl9HRVRfRkRfSU9DVEwoKSBpb2N0bC4NCj4gDQo+IEEgZmV3IG5pdCBwaWNrcyBhbmQg
b25lIGJ1ZyBiZWxvdywgYXBhcnQgZnJvbSB0aGF0IGxvb2tzIGdvb2QgdG8gbWUuDQoNCkhpIENo
cmlzdGlhbiwNCg0KVGhhbmtzIGZvciBsb29raW5nIGF0IGl0LiBJJ2xsIGp1c3QgYWRkIHNvbWUg
Y29tbWVudCBvbiB0aGUgYnVnIGJlbG93IGFuZCBmb3INCnRoZSBvdGhlciBzdHVmZiBJIGhvcGUg
UGF1bCBpcyBhbHJlYWR5IGFibGUgdG8gc3RlcCBpbiBhbmQgcmVwbHkgdG8gaXQuIE15DQphc3N1
bXB0aW9uICh3aGljaCBzZWVtcyB0byBiZSB3cm9uZykgaXMgdGhhdCB0aGUgZG1hYnVmIGJpdHMg
c2hvdWxkIGJlIGFscmVhZHkNCmdvb2QgdG8gZ28gYXMgdGhleSBzaG91bGQgYmUgcHJldHR5IHNp
bWlsYXIgdG8gdGhlIFVTQiBwYXJ0IG9mIGl0Lg0KDQouLi4NCg0KPiANCj4gPiArCWlmIChkbWFf
dG9fcmFtKSB7DQo+ID4gKwkJLyoNCj4gPiArCQkgKiBJZiB3ZSdyZSB3cml0aW5nIHRvIHRoZSBE
TUFCVUYsIG1ha2Ugc3VyZSB3ZSBkb24ndCBoYXZlDQo+ID4gKwkJICogcmVhZGVycw0KPiA+ICsJ
CSAqLw0KPiA+ICsJCXJldGwgPSBkbWFfcmVzdl93YWl0X3RpbWVvdXQoZG1hYnVmLT5yZXN2LA0K
PiA+ICsJCQkJCcKgwqDCoMKgIERNQV9SRVNWX1VTQUdFX1JFQUQsIHRydWUsDQo+ID4gKwkJCQkJ
wqDCoMKgwqAgdGltZW91dCk7DQo+ID4gKwkJaWYgKHJldGwgPT0gMCkNCj4gPiArCQkJcmV0bCA9
IC1FQlVTWTsNCj4gPiArCQlpZiAocmV0bCA8IDApIHsNCj4gPiArCQkJcmV0ID0gKGludClyZXRs
Ow0KPiA+ICsJCQlnb3RvIGVycl9yZXN2X3VubG9jazsNCj4gPiArCQl9DQo+ID4gKwl9DQo+ID4g
Kw0KPiA+ICsJaWYgKGJ1ZmZlci0+YWNjZXNzLT5sb2NrX3F1ZXVlKQ0KPiA+ICsJCWJ1ZmZlci0+
YWNjZXNzLT5sb2NrX3F1ZXVlKGJ1ZmZlcik7DQo+ID4gKw0KPiA+ICsJcmV0ID0gZG1hX3Jlc3Zf
cmVzZXJ2ZV9mZW5jZXMoZG1hYnVmLT5yZXN2LCAxKTsNCj4gPiArCWlmIChyZXQpDQo+ID4gKwkJ
Z290byBlcnJfcXVldWVfdW5sb2NrOw0KPiA+ICsNCj4gPiArCWRtYV9yZXN2X2FkZF9mZW5jZShk
bWFidWYtPnJlc3YsICZmZW5jZS0+YmFzZSwNCj4gPiArCQkJwqDCoCBkbWFfcmVzdl91c2FnZV9y
dyhkbWFfdG9fcmFtKSk7DQo+IA0KPiBUaGF0IGlzIGluY29ycmVjdCB1c2Ugb2YgdGhlIGZ1bmN0
aW9uIGRtYV9yZXN2X3VzYWdlX3J3KCkuIFRoYXQgZnVuY3Rpb24gDQo+IGlzIGZvciByZXRyaWV2
aW5nIGZlbmNlcyBhbmQgbm90IGFkZGluZyB0aGVtLg0KPiANCj4gU2VlIHRoZSBmdW5jdGlvbiBp
bXBsZW1lbnRhdGlvbiBhbmQgY29tbWVudHMsIHdoZW4geW91IHVzZSBpdCBsaWtlIHRoaXMgDQo+
IHlvdSBnZXQgZXhhY3RseSB3aGF0IHlvdSBkb24ndCB3YW50Lg0KPiANCg0KRG9lcyB0aGF0IG1l
YW4gdGhhdCB0aGUgVVNCIHN0dWZmIFsxXSBpcyBhbHNvIHdyb25nPw0KDQpbMV06IGh0dHBzOi8v
Z2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2dyZWdraC91c2IuZ2l0L3Ry
ZWUvZHJpdmVycy91c2IvZ2FkZ2V0L2Z1bmN0aW9uL2ZfZnMuYz9oPXVzYi1uZXh0I24xNjY5DQoN
Ci0gTnVubyBTw6ENCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
