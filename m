Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B8730219F4C
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 13:50:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C85216183E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 11:50:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BD0A06606D; Thu,  9 Jul 2020 11:50:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 476CA6661F;
	Thu,  9 Jul 2020 11:34:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1916961633
 for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jun 2020 08:22:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 09615664FE; Wed, 17 Jun 2020 08:22:23 +0000 (UTC)
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
 by lists.linaro.org (Postfix) with ESMTPS id EDD7861633
 for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jun 2020 08:21:31 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-151-NNVoDzt9NdeCYy0h9mSXPw-1; Wed, 17 Jun 2020 09:21:29 +0100
X-MC-Unique: NNVoDzt9NdeCYy0h9mSXPw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Wed, 17 Jun 2020 09:21:28 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Wed, 17 Jun 2020 09:21:28 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Charan Teja Kalla' <charante@codeaurora.org>, "Ruhl, Michael J"
 <michael.j.ruhl@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, "open
 list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "DRI
 mailing list" <dri-devel@lists.freedesktop.org>
Thread-Topic: [PATCH] dmabuf: use spinlock to access dmabuf->name
Thread-Index: AQHWRHCUCFGeEhsHd0uEJ3SlJWBlmajcdwBw
Date: Wed, 17 Jun 2020 08:21:28 +0000
Message-ID: <b686a288cff640acaea1111fed650b02@AcuMS.aculab.com>
References: <316a5cf9-ca71-6506-bf8b-e79ded9055b2@codeaurora.org>
 <14063C7AD467DE4B82DEDB5C278E8663010F365EF5@fmsmsx107.amr.corp.intel.com>
 <14063C7AD467DE4B82DEDB5C278E8663010F365F7D@fmsmsx107.amr.corp.intel.com>
 <5b960c9a-ef9d-b43d-716d-113efc793fe5@codeaurora.org>
In-Reply-To: <5b960c9a-ef9d-b43d-716d-113efc793fe5@codeaurora.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
Cc: Linaro MM SIG <linaro-mm-sig@lists.linaro.org>,
 "vinmenon@codeaurora.org" <vinmenon@codeaurora.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] dmabuf: use spinlock to access
	dmabuf->name
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

RnJvbTogQ2hhcmFuIFRlamEgS2FsbGENCj4gU2VudDogMTcgSnVuZSAyMDIwIDA3OjI5DQouLi4N
Cj4gPj4gSWYgbmFtZSBpcyBmcmVlZCB5b3Ugd2lsbCBjb3B5IGdhcmJhZ2UsIGJ1dCB0aGUgb25s
eSB3YXkNCj4gPj4gZm9yIHRoYXQgdG8gaGFwcGVuIGlzIHRoYXQgX3NldF9uYW1lIG9yIF9yZWxl
YXNlIGhhdmUgdG8gYmUgY2FsbGVkDQo+ID4+IGF0IGp1c3QgdGhlIHJpZ2h0IHRpbWUuDQo+ID4+
DQo+ID4+IEFuZCB0aGUgYWJvdmUgd291bGQgcHJvYmFibHkgb25seSBiZSBhbiBpc3N1ZSBpZiB0
aGUgc2V0X25hbWUNCj4gPj4gd2FzIGNhbGxlZCwgc28geW91IHdpbGwgZ2V0IE5VTEwgb3IgYSBy
ZWFsIG5hbWUuDQo+IA0KPiBBbmQgdGhlcmUgZXhpc3RzIGEgdXNlLWFmdGVyLWZyZWUgdG8gYXZv
aWQgd2hpY2ggcmVxdWlyZXMgdGhlIGxvY2suIFNheQ0KPiB0aGF0IG1lbWNweSgpIGluIGRtYWJ1
ZmZzX2RuYW1lIGlzIGluIHByb2dyZXNzIGFuZCBpbiBwYXJhbGxlbCBfc2V0X25hbWUNCj4gd2ls
bCBmcmVlIHRoZSBzYW1lIGJ1ZmZlciB0aGF0IG1lbWNweSBpcyBvcGVyYXRpbmcgb24uDQoNCklm
IHRoZSBuYW1lIGlzIGJlaW5nIGxvb2tlZCBhdCB3aGlsZSB0aGUgaXRlbSBpcyBiZWluZyBmcmVl
ZA0KeW91IGFsbW9zdCBjZXJ0YWlubHkgaGF2ZSBtdWNoIGJpZ2dlciBwcm9ibGVtcyB0aGF0IGp1
c3QNCnRoZSBuYW1lIGJlaW5nIGEgJ2p1bmsnIHBvaW50ZXIuDQoNCglEYXZpZC4NCg0KLQ0KUmVn
aXN0ZXJlZCBBZGRyZXNzIExha2VzaWRlLCBCcmFtbGV5IFJvYWQsIE1vdW50IEZhcm0sIE1pbHRv
biBLZXluZXMsIE1LMSAxUFQsIFVLDQpSZWdpc3RyYXRpb24gTm86IDEzOTczODYgKFdhbGVzKQ0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
