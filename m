Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C4F2C0D10
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Nov 2020 15:17:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CF4966661F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Nov 2020 14:17:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C419D666E6; Mon, 23 Nov 2020 14:17:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E189E66608;
	Mon, 23 Nov 2020 14:15:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1E053608F6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Nov 2020 14:15:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 12ACB66608; Mon, 23 Nov 2020 14:15:54 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by lists.linaro.org (Postfix) with ESMTPS id DD83D608F6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Nov 2020 14:15:51 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-323-Hz5xVMq2PWqq9P4fJRRGJQ-1; Mon, 23 Nov 2020 09:15:46 -0500
X-MC-Unique: Hz5xVMq2PWqq9P4fJRRGJQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 45BAC100B713;
 Mon, 23 Nov 2020 14:15:43 +0000 (UTC)
Received: from [10.36.114.57] (ovpn-114-57.ams2.redhat.com [10.36.114.57])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1B3E35C1BD;
 Mon, 23 Nov 2020 14:15:38 +0000 (UTC)
To: Minchan Kim <minchan@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
References: <20201117181935.3613581-1-minchan@kernel.org>
 <20201117181935.3613581-2-minchan@kernel.org>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <a2c33b8f-e4fb-1f1c-7ed0-496a1256ea09@redhat.com>
Date: Mon, 23 Nov 2020 15:15:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201117181935.3613581-2-minchan@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: robh@kernel.org, devicetree@vger.kernel.org, hyesoo.yu@samsung.com,
 LKML <linux-kernel@vger.kernel.org>, willy@infradead.org,
 Brian.Starkey@arm.com, linaro-mm-sig@lists.linaro.org,
 linux-mm <linux-mm@kvack.org>, john.stultz@linaro.org,
 christian.koenig@amd.com, joaodias@google.com, hridya@google.com,
 iamjoonsoo.kim@lge.com, pullip.cho@samsung.com, surenb@google.com,
 vbabka@suse.cz, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/4] mm: introduce cma_alloc_bulk API
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

T24gMTcuMTEuMjAgMTk6MTksIE1pbmNoYW4gS2ltIHdyb3RlOgo+IFRoZXJlIGlzIGEgbmVlZCBm
b3Igc3BlY2lhbCBIVyB0byByZXF1aXJlIGJ1bGsgYWxsb2NhdGlvbiBvZgo+IGhpZ2gtb3JkZXIg
cGFnZXMuIEZvciBleGFtcGxlLCA0ODAwICogb3JkZXItNCBwYWdlcywgd2hpY2gKPiB3b3VsZCBi
ZSBtaW5pbXVtLCBzb21ldGltZXMsIGl0IHJlcXVpcmVzIG1vcmUuCj4gCj4gVG8gbWVldCB0aGUg
cmVxdWlyZW1lbnQsIGEgb3B0aW9uIHJlc2VydmVzIDMwME0gQ01BIGFyZWEgYW5kCj4gcmVxdWVz
dHMgdGhlIHdob2xlIDMwME0gY29udGlndW91cyBtZW1vcnkuIEhvd2V2ZXIsIGl0IGRvZXNuJ3QK
PiB3b3JrIGlmIGV2ZW4gb25lIG9mIHRob3NlIHBhZ2VzIGluIHRoZSByYW5nZSBpcyBsb25nLXRl
cm0gcGlubmVkCj4gZGlyZWN0bHkgb3IgaW5kaXJlY3RseS4gVGhlIG90aGVyIG9wdGlvbiBpcyB0
byBhc2sgaGlnaGVyLW9yZGVyCj4gc2l6ZSAoZS5nLiwgMk0pIHRoYW4gcmVxdWVzdGVkIG9yZGVy
KDY0SykgcmVwZWF0ZWRseSB1bnRpbCBkcml2ZXIKPiBjb3VsZCBnYXRoZXIgbmVjZXNzYXJ5IGFt
b3VudCBvZiBtZW1vcnkuIEJhc2ljYWxseSwgdGhpcyBhcHByb2FjaAo+IG1ha2VzIHRoZSBhbGxv
Y2F0aW9uIHZlcnkgc2xvdyBkdWUgdG8gY21hX2FsbG9jJ3MgZnVuY3Rpb24KPiBzbG93bmVzcyBh
bmQgaXQgY291bGQgYmUgc3R1Y2sgb24gb25lIG9mIHRoZSBwYWdlYmxvY2tzIGlmIGl0Cj4gZW5j
b3VudGVycyB1bm1pZ3JhdGFibGUgcGFnZS4KPiAKPiBUbyBzb2x2ZSB0aGUgaXNzdWUsIHRoaXMg
cGF0Y2ggaW50cm9kdWNlcyBjbWFfYWxsb2NfYnVsay4KPiAKPiAJaW50IGNtYV9hbGxvY19idWxr
KHN0cnVjdCBjbWEgKmNtYSwgdW5zaWduZWQgaW50IGFsaWduLAo+IAkJZ2ZwX3QgZ2ZwX21hc2ss
IHVuc2lnbmVkIGludCBvcmRlciwgc2l6ZV90IG5yX3JlcXVlc3RzLAo+IAkJc3RydWN0IHBhZ2Ug
KipwYWdlX2FycmF5LCBzaXplX3QgKm5yX2FsbG9jYXRlZCk7Cj4gCj4gTW9zdCBwYXJhbWV0ZXJz
IGFyZSBzYW1lIHdpdGggY21hX2FsbG9jIGJ1dCBpdCBhZGRpdGlvbmFsbHkgcGFzc2VzCj4gdmVj
dG9yIGFycmF5IHRvIHN0b3JlIGFsbG9jYXRlZCBtZW1vcnkuIFdoYXQncyBkaWZmZXJlbnQgd2l0
aCBjbWFfYWxsb2MKPiBpcyBpdCB3aWxsIHNraXAgcGFnZWJsb2NrcyB3aXRob3V0IHdhaXRpbmcv
c3RvcHBpbmcgaWYgaXQgaGFzIHVubW92YWJsZQo+IHBhZ2Ugc28gdGhhdCBBUEkgY29udGludWVz
IHRvIHNjYW4gb3RoZXIgcGFnZWJsb2NrcyB0byBmaW5kIHJlcXVlc3RlZAo+IG9yZGVyIHBhZ2Uu
Cj4gCj4gY21hX2FsbG9jX2J1bGsgaXMgYmVzdCBlZmZvcnQgYXBwcm9hY2ggaW4gdGhhdCBpdCBz
a2lwcyBzb21lIHBhZ2VibG9ja3MKPiBpZiB0aGV5IGhhdmUgdW5tb3ZhYmxlIHBhZ2VzIHVubGlr
ZSBjbWFfYWxsb2MuIEl0IGRvZXNuJ3QgbmVlZCB0byBiZQo+IHBlcmZlY3QgZnJvbSB0aGUgYmVn
aW5uaW5nIGF0IHRoZSBjb3N0IG9mIHBlcmZvcm1hbmNlLiBUaHVzLCB0aGUgQVBJCj4gdGFrZXMg
Z2ZwX3QgdG8gc3VwcG9ydCBfX0dGUF9OT1JFVFJZIHdoaWNoIGlzIHByb3BhZ2F0ZWQgaW50bwo+
IGFsbG9jX2NvbnRpZ19wYWdlIHRvIGF2b2lkIHNpZ25pZmljYXQgb3ZlcmhlYWQgZnVuY3Rpb25z
IHRvIGlucmVjYXNlCj4gQ01BIGFsbG9jYXRpb24gc3VjY2VzcyByYXRpbyhlLmcuLCBtaWdyYXRp
b24gcmV0cmlhbCwgUENQLCBMUlUgZHJhaW5pbmcKPiBwZXIgcGFnZWJsb2NrKSBhdCB0aGUgY29z
dCBvZiBsZXNzIGFsbG9jYXRpb24gc3VjY2VzcyByYXRpby4KPiBJZiB0aGUgY2FsbGVyIGNvdWxk
bid0IGFsbG9jYXRlIGVub3VnaCBwYWdlcyB3aXRoIF9fR0ZQX05PUkVUUlksIHRoZXkKPiBjb3Vs
ZCBjYWxsIGl0IHdpdGhvdXQgX19HRlBfTk9SRVRSWSB0byBpbmNyZWFzZSBzdWNjZXNzIHJhdGlv
IHRoaXMgdGltZQo+IGlmIHRoZXkgYXJlIG9rYXkgdG8gZXhwZW5zZSB0aGUgb3ZlcmhlYWQgZm9y
IHRoZSBzdWNjZXNzIHJhdGlvLgoKSSdtIG5vdCBhIGZyaWVuZCBvZiBjb25uZWN0aW5nIF9fR0ZQ
X05PUkVUUlkgIHRvIFBDUCBhbmQgTFJVIGRyYWluaW5nLgpBbHNvLCBnZnAgZmxhZ3MgYXBwbHkg
bW9zdGx5IHRvIGNvbXBhY3Rpb24gKGUuZy4sIGhvdyB0byBhbGxvY2F0ZSBmcmVlCnBhZ2VzIGZv
ciBtaWdyYXRpb24pLCBzbyB0aGlzIHNlZW1zIGEgbGl0dGxlIHdyb25nLgoKQ2FuIHdlIGluc3Rl
YWQgaW50cm9kdWNlCgplbnVtIGFsbG9jX2NvbnRpZ19tb2RlIHsKCS8qCgkgKiBOb3JtYWwgbW9k
ZToKCSAqCgkgKiBSZXRyeSBwYWdlIG1pZ3JhdGlvbiA1IHRpbWVzLCAuLi4gVEJECgkgKgoJICov
CglBTExPQ19DT05USUdfTk9STUFMID0gMCwKCS8qCgkgKiBGYXN0IG1vZGU6IGUuZy4sIHVzZWQg
Zm9yIGJ1bGsgYWxsb2NhdGlvbnMuCiAgICAgICAgICoKCSAqIERvbid0IHJldHJ5IHBhZ2UgbWln
cmF0aW9uIGlmIGl0IGZhaWxzLCBkb24ndCBkcmFpbiBQQ1AKICAgICAgICAgKiBsaXN0cywgZG9u
J3QgZHJhaW4gTFJVLgoJICovCglBTExPQ19DT05USUdfRkFTVCwKfTsKClRvIGJlIGV4dGVuZGVk
IGJ5IEFMTE9DX0NPTlRJR19IQVJEIGluIHRoZSBmdXR1cmUgdG8gYmUgdXNlZCBlLmcuLCBieQp2
aXJ0aW8tbWVtIChkaXNhYmxlIFBDUCwgcmV0cnkgYSBjb3VwbGUgb2YgdGltZXMgbW9yZSBvZnRl
biApIC4uLgoKLS0gClRoYW5rcywKCkRhdmlkIC8gZGhpbGRlbmIKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
