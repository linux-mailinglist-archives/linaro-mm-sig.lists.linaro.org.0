Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CD931BB4C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Feb 2021 15:42:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F3170619BF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Feb 2021 14:42:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E495F619C1; Mon, 15 Feb 2021 14:42:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB433617CF;
	Mon, 15 Feb 2021 14:42:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1B43660654
 for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Feb 2021 14:42:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id ED5AC617CF; Mon, 15 Feb 2021 14:41:59 +0000 (UTC)
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
 by lists.linaro.org (Postfix) with ESMTPS id DC98C60654
 for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Feb 2021 14:41:57 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mtapsc-1-3w3CI_4oMWS3JDUYMjvGuQ-1; Mon, 15 Feb 2021 14:41:54 +0000
X-MC-Unique: 3w3CI_4oMWS3JDUYMjvGuQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Mon, 15 Feb 2021 14:41:52 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Mon, 15 Feb 2021 14:41:52 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: =?utf-8?B?J0NocmlzdGlhbiBLw7ZuaWcn?= <christian.koenig@amd.com>, "Lucas
 Stach" <l.stach@pengutronix.de>, Simon Ser <contact@emersion.fr>
Thread-Topic: DMA-buf and uncached system memory
Thread-Index: AQHXA5L/eppUoUE81k6k7v7UJlaBDapZRehQ
Date: Mon, 15 Feb 2021 14:41:52 +0000
Message-ID: <fa3f6eefc0a940b38448b0efd4b3f4e3@AcuMS.aculab.com>
References: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com>
 <GUuZYSQk2hxgykDhSxfB2GWo47lQlVrKBtWMwQUG7Ar2GAag5WQDxBI0zq6nDTooPBzTktyRpnu25Ju1UKE3FYD9yHbkNMAHcmSI96hoJhA=@emersion.fr>
 <da9edfa0-8a18-44a2-fa79-83b4177afd8e@amd.com>
 <8d23f1ca6fe76d8971365bf54ca71ba71698980d.camel@pengutronix.de>
 <7ecf008d-a1f5-ddff-c8ac-8e7bfaf9c680@amd.com>
In-Reply-To: <7ecf008d-a1f5-ddff-c8ac-8e7bfaf9c680@amd.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 linux-media <linux-media@vger.kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, "Sharma,
 Shashank" <Shashank.Sharma@amd.com>
Subject: Re: [Linaro-mm-sig] DMA-buf and uncached system memory
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

RnJvbTogQ2hyaXN0aWFuIEvDtm5pZw0KPiBTZW50OiAxNSBGZWJydWFyeSAyMDIxIDEyOjA1DQou
Li4NCj4gU25vb3BpbmcgdGhlIENQVSBjYWNoZXMgaW50cm9kdWNlcyBzb21lIGV4dHJhIGxhdGVu
Y3ksIHNvIHdoYXQgY2FuDQo+IGhhcHBlbiBpcyB0aGF0IHRoZSByZXNwb25zZSB0byB0aGUgUENJ
ZSByZWFkIGNvbWVzIHRvIGxhdGUgZm9yIHRoZQ0KPiBzY2Fub3V0LiBUaGUgcmVzdWx0IGlzIGFu
IHVuZGVyZmxvdyBhbmQgZmxpY2tlcmluZyB3aGVuZXZlciBzb21ldGhpbmcgaXMNCj4gaW4gdGhl
IGNhY2hlIHdoaWNoIG5lZWRzIHRvIGJlIGZsdXNoZWQgZmlyc3QuDQoNCkFyZW4ndCB5b3UgZ29p
bmcgdG8gZ2V0IHRoZSBzYW1lIHByb2JsZW0gaWYgYW55IG90aGVyIGVuZHBvaW50cyBhcmUNCmRv
aW5nIG1lbW9yeSByZWFkcz8NClBvc3NpYmx5IGV2ZW4gb25lcyB0aGF0IGRvbid0IHJlcXVpcmUg
YSBjYWNoZSBzbm9vcCBhbmQgZmx1c2guDQoNCldoYXQgYWJvdXQganVzdCB0aGUgY3B1IGRvaW5n
IGEgcmVhbCBtZW1vcnkgdHJhbnNmZXI/DQoNCk9yIGEgY29tYmluYXRpb24gb2YgdGhlIHR3byBh
Ym92ZSBoYXBwZW5pbmcganVzdCBiZWZvcmUgeW91ciByZXF1ZXN0Lg0KDQpJZiB5b3UgZG9uJ3Qg
aGF2ZSBhIGJpZyBlbm91Z2ggZmlmbyB5b3UnbGwgbG9zZS4NCg0KSSBkaWQgJ2ZpeCcgYSBzaW1p
bGFyKGlzaCkgaXNzdWUgd2l0aCB2aWRlbyBETUEgbGF0ZW5jeSBvbiBhbiBlbWJlZGRlZA0Kc3lz
dGVtIGJhc2VkIHRoZSBvbiBTQTExMDAvU0ExMTAxIGJ5IHNpZ25pZmljYW50bHkgcmVkdWNpbmcg
dGhlIGNsb2NrDQp0byB0aGUgVkdBIHBhbmVsIHdoZW5ldmVyIHRoZSBjcHUgd2FzIGRvaW5nICdz
bG93IGlvJy4NCihJbnRlcmxlYXZpbmcgYW4gdW5jYWNoZWQgY3B1IERSQU0gd3JpdGUgYmV0d2Vl
biB0aGUgc2xvdyBpbyBjeWNsZXMNCmFsc28gZml4ZWQgaXQuKQ0KQnV0IHRoZSB2aWRlbyB3YXMg
dGhlIG9ubHkgRE1BIGRldmljZSBhbmQgdGhhdCB3YXMgYW4gZW1iZWRkZWQgc3lzdGVtLg0KR2l2
ZW4gdGhlIGFwcGxpY2F0aW9uIG5vdGUgYWJvdXQgdmlkZW8gbGF0ZW5jeSBkaWRuJ3QgbWVudGlv
biB3aGF0IHdhcw0KYWN0dWFsbHkgaGFwcGVuaW5nLCBJJ20gbm90IHN1cmUgaG93IG1hbnkgcGVv
cGxlIGFjdHVhbGx5IGdvdCBpdCB3b3JraW5nIQ0KDQoJRGF2aWQNCg0KLQ0KUmVnaXN0ZXJlZCBB
ZGRyZXNzIExha2VzaWRlLCBCcmFtbGV5IFJvYWQsIE1vdW50IEZhcm0sIE1pbHRvbiBLZXluZXMs
IE1LMSAxUFQsIFVLDQpSZWdpc3RyYXRpb24gTm86IDEzOTczODYgKFdhbGVzKQ0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGlu
YXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
