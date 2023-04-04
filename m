Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E7D6D610F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Apr 2023 14:41:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6C9B93F950
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Apr 2023 12:41:55 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by lists.linaro.org (Postfix) with ESMTPS id B4A783E91F
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Apr 2023 08:19:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=pwVfYyPY;
	spf=pass (lists.linaro.org: domain of noname.nuno@gmail.com designates 209.85.160.176 as permitted sender) smtp.mailfrom=noname.nuno@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qt1-f176.google.com with SMTP id p2so25705722qtw.13
        for <linaro-mm-sig@lists.linaro.org>; Tue, 04 Apr 2023 01:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680596364;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RyAgd7k00Jn6xZLlebeLFamYLWizoMoW9K/GRPwc3dg=;
        b=pwVfYyPY1UfiRNk0Hi87uHSSri7v4X0yYMw110CSHHON2xMyGnnJxg7ZNPlvqotfhi
         ljmPif0yEX0Hx6Hr3Qj57uoM8V64/JFkN4tg090Bi48eviUKr3gnV1t63ewxGfi17QvQ
         vxP7KaJZQDgBdedfTUNVj082l6KaYKt3KWMq2GqvHKHqB/8+/YqXqUZP0drruu85IWZQ
         ziiknoasbwGJxjURMhpSQWmogB/Bc7j9X1s/sk4DYlh+1HYpst0LvGRsTeboW04/p/gT
         TveyNEmUIP4WDq/9iS1MZuqTwmtuEwl139LIWPqhE38V4bSJMm9/O7CRW+CRvipydE0I
         uZHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680596364;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RyAgd7k00Jn6xZLlebeLFamYLWizoMoW9K/GRPwc3dg=;
        b=E+HjtOVDQOstztPakXEfBYa2O03I4+sRf9Onhseuzawd+WXe0iscGxf/c0y88G2A9X
         +lWO0/vNk/0jrZKq8xB9aQPNUyJSasqye9wUZkqPxL4h1an2nWmeET/5/K/4TL0tJvwH
         k6Jvz29XAec35nWP6TcpNLPna6uTCU3sI73g7Lvi5r+ggYHfgQ1f8gmOYzNtJrYx7Fry
         GrokizVBlMr2iSfKvtGOhwrM3vO86DnxnCIv2DsKY2uM99lPHIakd0YrCqIaLaCiJrkI
         pgfYYvsRE0RBOOEcI/KtXGbcU3GzQ8aH0/8gWMs87k++qAa/sOPKtN1Me4LEW3YcoK0y
         Hz0Q==
X-Gm-Message-State: AAQBX9fyjpRrO5jPskHjVfe3URMrJdy+MwSHOmuGDc7vgC1PORRXKTpe
	8Z+7jQ7slPyoowe1loW6T5E=
X-Google-Smtp-Source: AKy350aqztpTVhGayDoqCgfpJ8XiDnAnyrZL24EhQPW+Hr0DWknjkulIkCnsZH6G7zxfeTXJ0ah3Pg==
X-Received: by 2002:a05:622a:5ce:b0:3bd:1081:b939 with SMTP id d14-20020a05622a05ce00b003bd1081b939mr38131941qtb.0.1680596364236;
        Tue, 04 Apr 2023 01:19:24 -0700 (PDT)
Received: from ?IPv6:2003:f6:ef05:8700:853c:3ba5:d710:3c1d? (p200300f6ef058700853c3ba5d7103c1d.dip0.t-ipconnect.de. [2003:f6:ef05:8700:853c:3ba5:d710:3c1d])
        by smtp.gmail.com with ESMTPSA id p11-20020a05620a22ab00b00706b09b16fasm3417693qkh.11.2023.04.04.01.19.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 01:19:23 -0700 (PDT)
Message-ID: <9f5cac46e38897f54c5246bf400e8888324abad8.camel@gmail.com>
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Paul Cercueil <paul@crapouillou.net>, Jonathan Cameron
 <jic23@kernel.org>,  Lars-Peter Clausen <lars@metafoo.de>, Vinod Koul
 <vkoul@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>, Sumit
 Semwal <sumit.semwal@linaro.org>,  Christian =?ISO-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>
Date: Tue, 04 Apr 2023 10:21:27 +0200
In-Reply-To: <2dac030470ffe74b6d21a1e6510afcefaf58cd6a.camel@crapouillou.net>
References: <20230403154800.215924-1-paul@crapouillou.net>
	 <20230403154800.215924-8-paul@crapouillou.net>
	 <798e1ff0651da8e4b113d30bf8cec2a7a0e6898f.camel@gmail.com>
	 <2dac030470ffe74b6d21a1e6510afcefaf58cd6a.camel@crapouillou.net>
User-Agent: Evolution 3.46.4 
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B4A783E91F
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[13];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.160.176:from];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
X-MailFrom: noname.nuno@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: N5UMZK4DIDTFJ4JGK2TKYUHBS4LQ6UHX
X-Message-ID-Hash: N5UMZK4DIDTFJ4JGK2TKYUHBS4LQ6UHX
X-Mailman-Approved-At: Tue, 04 Apr 2023 12:40:58 +0000
CC: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 07/11] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/N5UMZK4DIDTFJ4JGK2TKYUHBS4LQ6UHX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCAyMDIzLTA0LTA0IGF0IDA5OjU1ICswMjAwLCBQYXVsIENlcmN1ZWlsIHdyb3RlOg0K
PiBIaSBOdW5vLA0KPiANCj4gTGUgbWFyZGkgMDQgYXZyaWwgMjAyMyDDoCAwOTozMiArMDIwMCwg
TnVubyBTw6EgYSDDqWNyaXTCoDoNCj4gPiBPbiBNb24sIDIwMjMtMDQtMDMgYXQgMTc6NDcgKzAy
MDAsIFBhdWwgQ2VyY3VlaWwgd3JvdGU6DQo+ID4gPiBBZGQgdGhlIG5lY2Vzc2FyeSBpbmZyYXN0
cnVjdHVyZSB0byB0aGUgSUlPIGNvcmUgdG8gc3VwcG9ydCBhIG5ldw0KPiA+ID4gb3B0aW9uYWwg
RE1BQlVGIGJhc2VkIGludGVyZmFjZS4NCj4gPiA+IA0KPiA+ID4gV2l0aCB0aGlzIG5ldyBpbnRl
cmZhY2UsIERNQUJVRiBvYmplY3RzIChleHRlcm5hbGx5IGNyZWF0ZWQpIGNhbiBiZQ0KPiA+ID4g
YXR0YWNoZWQgdG8gYSBJSU8gYnVmZmVyLCBhbmQgc3Vic2VxdWVudGx5IHVzZWQgZm9yIGRhdGEg
dHJhbnNmZXIuDQo+ID4gPiANCj4gPiA+IEEgdXNlcnNwYWNlIGFwcGxpY2F0aW9uIGNhbiB0aGVu
IHVzZSB0aGlzIGludGVyZmFjZSB0byBzaGFyZSBETUFCVUYNCj4gPiA+IG9iamVjdHMgYmV0d2Vl
biBzZXZlcmFsIGludGVyZmFjZXMsIGFsbG93aW5nIGl0IHRvIHRyYW5zZmVyIGRhdGEgaW4NCj4g
PiA+IGENCj4gPiA+IHplcm8tY29weSBmYXNoaW9uLCBmb3IgaW5zdGFuY2UgYmV0d2VlbiBJSU8g
YW5kIHRoZSBVU0Igc3RhY2suDQo+ID4gPiANCj4gPiA+IFRoZSB1c2Vyc3BhY2UgYXBwbGljYXRp
b24gY2FuIGFsc28gbWVtb3J5LW1hcCB0aGUgRE1BQlVGIG9iamVjdHMsDQo+ID4gPiBhbmQNCj4g
PiA+IGFjY2VzcyB0aGUgc2FtcGxlIGRhdGEgZGlyZWN0bHkuIFRoZSBhZHZhbnRhZ2Ugb2YgZG9p
bmcgdGhpcyB2cy4NCj4gPiA+IHRoZQ0KPiA+ID4gcmVhZCgpIGludGVyZmFjZSBpcyB0aGF0IGl0
IGF2b2lkcyBhbiBleHRyYSBjb3B5IG9mIHRoZSBkYXRhDQo+ID4gPiBiZXR3ZWVuDQo+ID4gPiB0
aGUNCj4gPiA+IGtlcm5lbCBhbmQgdXNlcnNwYWNlLiBUaGlzIGlzIHBhcnRpY3VsYXJseSB1c2Vy
ZnVsIGZvciBoaWdoLXNwZWVkDQo+ID4gPiBkZXZpY2VzIHdoaWNoIHByb2R1Y2Ugc2V2ZXJhbCBt
ZWdhYnl0ZXMgb3IgZXZlbiBnaWdhYnl0ZXMgb2YgZGF0YQ0KPiA+ID4gcGVyDQo+ID4gPiBzZWNv
bmQuDQo+ID4gPiANCj4gPiA+IEFzIHBhcnQgb2YgdGhlIGludGVyZmFjZSwgMyBuZXcgSU9DVExz
IGhhdmUgYmVlbiBhZGRlZDoNCj4gPiA+IA0KPiA+ID4gSUlPX0JVRkZFUl9ETUFCVUZfQVRUQUNI
X0lPQ1RMKGludCBmZCk6DQo+ID4gPiDCoEF0dGFjaCB0aGUgRE1BQlVGIG9iamVjdCBpZGVudGlm
aWVkIGJ5IHRoZSBnaXZlbiBmaWxlIGRlc2NyaXB0b3INCj4gPiA+IHRvDQo+ID4gPiB0aGUNCj4g
PiA+IMKgYnVmZmVyLg0KPiA+ID4gDQo+ID4gPiBJSU9fQlVGRkVSX0RNQUJVRl9ERVRBQ0hfSU9D
VEwoaW50IGZkKToNCj4gPiA+IMKgRGV0YWNoIHRoZSBETUFCVUYgb2JqZWN0IGlkZW50aWZpZWQg
YnkgdGhlIGdpdmVuIGZpbGUgZGVzY3JpcHRvcg0KPiA+ID4gZnJvbQ0KPiA+ID4gwqB0aGUgYnVm
ZmVyLiBOb3RlIHRoYXQgY2xvc2luZyB0aGUgSUlPIGJ1ZmZlcidzIGZpbGUgZGVzY3JpcHRvcg0K
PiA+ID4gd2lsbA0KPiA+ID4gwqBhdXRvbWF0aWNhbGx5IGRldGFjaCBhbGwgcHJldmlvdXNseSBh
dHRhY2hlZCBETUFCVUYgb2JqZWN0cy4NCj4gPiA+IA0KPiA+ID4gSUlPX0JVRkZFUl9ETUFCVUZf
RU5RVUVVRV9JT0NUTChzdHJ1Y3QgaWlvX2RtYWJ1ZiAqKToNCj4gPiA+IMKgUmVxdWVzdCBhIGRh
dGEgdHJhbnNmZXIgdG8vZnJvbSB0aGUgZ2l2ZW4gRE1BQlVGIG9iamVjdC4gSXRzIGZpbGUNCj4g
PiA+IMKgZGVzY3JpcHRvciwgYXMgd2VsbCBhcyB0aGUgdHJhbnNmZXIgc2l6ZSBhbmQgZmxhZ3Mg
YXJlIHByb3ZpZGVkIGluDQo+ID4gPiB0aGUNCj4gPiA+IMKgImlpb19kbWFidWYiIHN0cnVjdHVy
ZS4NCj4gPiA+IA0KPiA+ID4gVGhlc2UgdGhyZWUgSU9DVExzIGhhdmUgdG8gYmUgcGVyZm9ybWVk
IG9uIHRoZSBJSU8gYnVmZmVyJ3MgZmlsZQ0KPiA+ID4gZGVzY3JpcHRvciwgb2J0YWluZWQgdXNp
bmcgdGhlIElJT19CVUZGRVJfR0VUX0ZEX0lPQ1RMKCkgaW9jdGwuDQo+ID4gPiANCj4gPiA+IFNp
Z25lZC1vZmYtYnk6IFBhdWwgQ2VyY3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0Pg0KPiA+ID4g
DQo+ID4gPiAtLS0NCj4gPiA+IHYyOiBPbmx5IGFsbG93IHRoZSBuZXcgSU9DVExzIG9uIHRoZSBi
dWZmZXIgRkQgY3JlYXRlZCB3aXRoDQo+ID4gPiDCoMKgwqAgSUlPX0JVRkZFUl9HRVRfRkRfSU9D
VEwoKS4NCj4gPiA+IA0KPiA+ID4gdjM6IC0gR2V0IHJpZCBvZiB0aGUgb2xkIElPQ1RMcy4gVGhl
IElJTyBzdWJzeXN0ZW0gZG9lcyBub3QgY3JlYXRlDQo+ID4gPiBvcg0KPiA+ID4gwqDCoMKgIG1h
bmFnZSBETUFCVUZzIGFueW1vcmUsIGFuZCBvbmx5IGF0dGFjaGVzL2RldGFjaGVzIGV4dGVybmFs
bHkNCj4gPiA+IMKgwqDCoCBjcmVhdGVkIERNQUJVRnMuDQo+ID4gPiDCoMKgwqAgLSBBZGQgSUlP
X0JVRkZFUl9ETUFCVUZfQ1lDTElDIHRvIHRoZSBzdXBwb3J0ZWQgZmxhZ3MuDQo+ID4gPiAtLS0N
Cj4gPiA+IMKgZHJpdmVycy9paW8vaW5kdXN0cmlhbGlvLWJ1ZmZlci5jIHwgNDAyDQo+ID4gPiAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gPiA+IMKgaW5jbHVkZS9saW51eC9paW8v
YnVmZmVyX2ltcGwuaMKgwqAgfMKgIDIyICsrDQo+ID4gPiDCoGluY2x1ZGUvdWFwaS9saW51eC9p
aW8vYnVmZmVyLmjCoMKgIHzCoCAyMiArKw0KPiA+ID4gwqAzIGZpbGVzIGNoYW5nZWQsIDQ0NiBp
bnNlcnRpb25zKCspDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9pbmR1
c3RyaWFsaW8tYnVmZmVyLmMNCj4gPiA+IGIvZHJpdmVycy9paW8vaW5kdXN0cmlhbGlvLWJ1ZmZl
ci5jDQo+ID4gPiBpbmRleCA4MGM3OGJkNmJiZWYuLjVkODhlMDk4YjNlNyAxMDA2NDQNCj4gPiA+
IC0tLSBhL2RyaXZlcnMvaWlvL2luZHVzdHJpYWxpby1idWZmZXIuYw0KPiA+ID4gKysrIGIvZHJp
dmVycy9paW8vaW5kdXN0cmlhbGlvLWJ1ZmZlci5jDQo+ID4gPiBAQCAtMTMsMTAgKzEzLDE0IEBA
DQo+ID4gPiDCoCNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4NCj4gPiA+IMKgI2luY2x1ZGUgPGxp
bnV4L2V4cG9ydC5oPg0KPiA+ID4gwqAjaW5jbHVkZSA8bGludXgvZGV2aWNlLmg+DQo+ID4gPiAr
I2luY2x1ZGUgPGxpbnV4L2RtYS1idWYuaD4NCj4gPiA+ICsjaW5jbHVkZSA8bGludXgvZG1hLWZl
bmNlLmg+DQo+ID4gPiArI2luY2x1ZGUgPGxpbnV4L2RtYS1yZXN2Lmg+DQo+ID4gPiDCoCNpbmNs
dWRlIDxsaW51eC9maWxlLmg+DQo+ID4gPiDCoCNpbmNsdWRlIDxsaW51eC9mcy5oPg0KPiA+ID4g
wqAjaW5jbHVkZSA8bGludXgvY2Rldi5oPg0KPiA+ID4gwqAjaW5jbHVkZSA8bGludXgvc2xhYi5o
Pg0KPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9tbS5oPg0KPiA+ID4gwqAjaW5jbHVkZSA8bGludXgv
cG9sbC5oPg0KPiA+ID4gwqAjaW5jbHVkZSA8bGludXgvc2NoZWQvc2lnbmFsLmg+DQo+ID4gPiDC
oA0KPiA+ID4gQEAgLTI4LDExICszMiw0MSBAQA0KPiA+ID4gwqAjaW5jbHVkZSA8bGludXgvaWlv
L2J1ZmZlci5oPg0KPiA+ID4gwqAjaW5jbHVkZSA8bGludXgvaWlvL2J1ZmZlcl9pbXBsLmg+DQo+
ID4gPiDCoA0KPiA+ID4gKyNkZWZpbmUgRE1BQlVGX0VOUVVFVUVfVElNRU9VVF9NUyA1MDAwDQo+
ID4gPiArDQo+ID4gPiArc3RydWN0IGlpb19kbWFfZmVuY2U7DQo+ID4gPiArDQo+ID4gPiArc3Ry
dWN0IGlpb19kbWFidWZfcHJpdiB7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgbGlzdF9o
ZWFkIGVudHJ5Ow0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGtyZWYgcmVmOw0KPiA+ID4g
Kw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGlpb19idWZmZXIgKmJ1ZmZlcjsNCj4gPiA+
ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpaW9fZG1hX2J1ZmZlcl9ibG9jayAqYmxvY2s7DQo+ID4g
PiArDQo+ID4gPiArwqDCoMKgwqDCoMKgwqB1NjQgY29udGV4dDsNCj4gPiA+ICvCoMKgwqDCoMKg
wqDCoHNwaW5sb2NrX3QgbG9jazsNCj4gPiA+ICsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVj
dCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaDsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVj
dCBpaW9fZG1hX2ZlbmNlICpmZW5jZTsNCj4gPiA+ICt9Ow0KPiA+ID4gKw0KPiA+ID4gK3N0cnVj
dCBpaW9fZG1hX2ZlbmNlIHsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBkbWFfZmVuY2Ug
YmFzZTsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpaW9fZG1hYnVmX3ByaXYgKnByaXY7
DQo+ID4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3Qgc2dfdGFibGUgKnNndDsNCj4gPiA+ICvCoMKg
wqDCoMKgwqDCoGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcjsNCj4gPiA+ICt9Ow0KPiA+ID4g
Kw0KPiA+ID4gwqBzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IGlpb19lbmRpYW5fcHJlZml4W10g
PSB7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgW0lJT19CRV0gPSAiYmUiLA0KPiA+ID4gwqDCoMKg
wqDCoMKgwqDCoFtJSU9fTEVdID0gImxlIiwNCj4gPiA+IMKgfTsNCj4gPiA+IMKgDQo+ID4gPiAr
c3RhdGljIGlubGluZSBzdHJ1Y3QgaWlvX2RtYV9mZW5jZSAqdG9faWlvX2RtYV9mZW5jZShzdHJ1
Y3QNCj4gPiA+IGRtYV9mZW5jZSAqZmVuY2UpDQo+ID4gPiArew0KPiA+ID4gK8KgwqDCoMKgwqDC
oMKgcmV0dXJuIGNvbnRhaW5lcl9vZihmZW5jZSwgc3RydWN0IGlpb19kbWFfZmVuY2UsIGJhc2Up
Ow0KPiA+ID4gK30NCj4gPiA+ICsNCj4gPiANCj4gPiBLaW5kIG9mIGEgbml0cGljayBidXQgSSBv
bmx5IHNlZSB0aGlzIGJlaW5nIHVzZWQgb25jZSBzbyBJIHdvdWxkDQo+ID4gbWF5YmUNCj4gPiB1
c2UgcGxhaW4gJ2NvbnRhaW5lcl9vZigpJyBhcyB5b3UgYXJlIGFscmVhZHkgZG9pbmcgZm9yOg0K
PiA+IA0KPiA+IC4uLiA9IGNvbnRhaW5lcl9vZihyZWYsIHN0cnVjdCBpaW9fZG1hYnVmX3ByaXYs
IHJlZik7DQo+ID4gDQo+ID4gU28gSSB3b3VsZCBhdCBsZWFzdCBhZHZvY2F0ZSBmb3IgY29uc2lz
dGVuY3kuIEkgd291bGQgYWxzbyBwcm9iYWJseQ0KPiA+IGRpdGNoIHRoZSBpbmxpbmUgYnV0IEkg
Z3Vlc3MgdGhhdCBpcyBtb3JlIGEgbWF0dGVyIG9mDQo+ID4gc3R5bGUvcHJlZmVyZW5jZS4NCj4g
DQo+IFllcCwgYXQgbGVhc3QgaXQgc2hvdWxkIGJlIGNvbnNpc3RlbnQuDQo+IA0KPiA+IA0KPiA+
ID4gwqBzdGF0aWMgYm9vbCBpaW9fYnVmZmVyX2lzX2FjdGl2ZShzdHJ1Y3QgaWlvX2J1ZmZlciAq
YnVmKQ0KPiA+ID4gwqB7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuICFsaXN0X2VtcHR5
KCZidWYtPmJ1ZmZlcl9saXN0KTsNCj4gPiA+IEBAIC0zMjksNiArMzYzLDcgQEAgdm9pZCBpaW9f
YnVmZmVyX2luaXQoc3RydWN0IGlpb19idWZmZXIgKmJ1ZmZlcikNCj4gPiA+IMKgew0KPiA+ID4g
DQo+ID4gDQo+ID4gLi4uDQo+ID4gDQo+ID4gPiArwqDCoMKgwqDCoMKgwqBwcml2ID0gYXR0YWNo
LT5pbXBvcnRlcl9wcml2Ow0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgbGlzdF9kZWxfaW5pdCgmcHJp
di0+ZW50cnkpOw0KPiA+ID4gKw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgaWlvX2J1ZmZlcl9kbWFi
dWZfcHV0KGF0dGFjaCk7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqBpaW9fYnVmZmVyX2RtYWJ1Zl9w
dXQoYXR0YWNoKTsNCj4gPiA+ICsNCj4gPiANCj4gPiBJcyB0aGlzIGludGVuZGVkPyBMb29rcyBz
dXNwaWNpb3VzLi4uDQo+IA0KPiBJdCBpcyBpbnRlbmRlZCwgeWVzLiBZb3Ugd2FudCB0byByZWxl
YXNlIHRoZSBkbWFfYnVmX2F0dGFjaG1lbnQgdGhhdCdzDQo+IGNyZWF0ZWQgaW4gaWlvX2J1ZmZl
cl9hdHRhY2hfZG1hYnVmKCksIGFuZCB5b3UgbmVlZCB0byBjYWxsDQo+IGlpb19idWZmZXJfZmlu
ZF9hdHRhY2htZW50KCkgdG8gZ2V0IGEgcG9pbnRlciB0byBpdCwgd2hpY2ggYWxzbyBnZXRzIGEN
Cj4gc2Vjb25kIHJlZmVyZW5jZSAtIHNvIGl0IG5lZWRzIHRvIHVucmVmIHR3aWNlLg0KPiANCg0K
SSBzZWUuLg0KDQouLi4NCg0KDQo+ID4gDQo+ID4gPiArb3V0X2RtYWJ1Zl9wdXQ6DQo+ID4gPiAr
wqDCoMKgwqDCoMKgwqBkbWFfYnVmX3B1dChkbWFidWYpOw0KPiA+ID4gKw0KPiA+ID4gK8KgwqDC
oMKgwqDCoMKgcmV0dXJuIHJldDsNCj4gPiA+ICt9DQo+ID4gPiANCj4gPiANCj4gPiBIbW1tLCB3
aGF0IGFib3V0IHRoZSBsZWdhY3kgYnVmZmVyPyBXZSBzaG91bGQgYWxzbyBzdXBwb3J0IHRoaXMN
Cj4gPiBpbnRlcmZhY2UgdXNpbmcgaXQsIHJpZ2h0PyBPdGhlcndpc2UsIHVzaW5nIG9uZSBvZiB0
aGUgbmV3IElPQ1RMIGluDQo+ID4gaWlvX2RldmljZV9idWZmZXJfaW9jdGwoKSAob3IgL2Rldi9p
aW86ZGV2aWNlMCkgd2lsbCBlcnJvciBvdXQuDQo+IA0KPiBBY2NvcmRpbmcgdG8gSm9uYXRoYW4g
dGhlIG9sZCBjaGFyZGV2IHJvdXRlIGlzIGRlcHJlY2F0ZWQsIGFuZCBpdCdzDQo+IGZpbmUgbm90
IHRvIHN1cHBvcnQgdGhlIElPQ1RMIHRoZXJlLg0KPiANCg0KT2gsIGFscmlnaHQgdGhlbi4uLiBC
ZXR0ZXIgdGhhdCB3YXkgaW5kZWVkIQ0KDQotIE51bm8gU8OhDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
