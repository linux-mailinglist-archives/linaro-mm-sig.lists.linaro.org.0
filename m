Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF7483999
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Aug 2019 21:25:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 36F5F617C8
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Aug 2019 19:25:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1C312617C9; Tue,  6 Aug 2019 19:25:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB2C6617C3;
	Tue,  6 Aug 2019 19:24:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 551E0617B5
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Aug 2019 19:24:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 49A9561792; Tue,  6 Aug 2019 19:24:48 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id A163761792
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Aug 2019 19:24:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17909790-1500050 for multiple; Tue, 06 Aug 2019 20:24:41 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <20190806150134.104222-1-christian.koenig@amd.com>
 <20190806150134.104222-7-christian.koenig@amd.com>
In-Reply-To: <20190806150134.104222-7-christian.koenig@amd.com>
Message-ID: <156511947882.6198.3242911017545657039@skylake-alporthouse-com>
Date: Tue, 06 Aug 2019 20:24:38 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 7/8] dma-buf: add
	reservation_object_fences helper
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

UXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5LTA4LTA2IDE2OjAxOjMzKQo+IEFkZCBhIG5l
dyBoZWxwZXIgdG8gZ2V0IGEgY29uc2lzdGVudCBzZXQgb2YgcG9pbnRlcnMgZnJvbSB0aGUgcmVz
ZXJ2YXRpb24KPiBvYmplY3QuIFdoaWxlIGF0IGl0IGdyb3VwIGFsbCBhY2Nlc3MgaGVscGVycyB0
b2dldGhlciBpbiB0aGUgaGVhZGVyIGZpbGUuCgpBaCwgbmVlZHMgdG8gYmUgZWFybGllciA6KQog
Cj4gKy8qKgo+ICsgKiByZXNlcnZhdGlvbl9vYmplY3RfZmVuY2VzIC0gcmVhZCBjb25zaXN0ZW50
IGZlbmNlIHBvaW50ZXJzCj4gKyAqIEBvYmo6IHJlc2VydmF0aW9uIG9iamVjdCB3aGVyZSB3ZSBn
ZXQgdGhlIGZlbmNlcyBmcm9tCj4gKyAqIEBleGNsOiBwb2ludGVyIGZvciB0aGUgZXhjbHVzaXZl
IGZlbmNlCj4gKyAqIEBsaXN0OiBwb2ludGVyIGZvciB0aGUgc2hhcmVkIGZlbmNlIGxpc3QKPiAr
ICoKPiArICogTWFrZSBzdXJlIHdlIGhhdmUgYSBjb25zaXN0ZW4gZXhjbHVzaXZlIGZlbmNlIGFu
ZCBzaGFyZWQgZmVuY2UgbGlzdC4KPiArICogTXVzdCBiZSBjYWxsZWQgd2l0aCByY3UgcmVhZCBz
aWRlIGxvY2sgaGVsZC4KPiArICovCj4gK3N0YXRpYyBpbmxpbmUgdm9pZAo+ICtyZXNlcnZhdGlv
bl9vYmplY3RfZmVuY2VzKHN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3QgKm9iaiwKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkbWFfZmVuY2UgKipleGNsLAo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgc3RydWN0IHJlc2VydmF0aW9uX29iamVjdF9saXN0ICoqbGlzdCkKPiAr
ewo+ICsgICAgICAgdW5zaWduZWQgaW50IHNlcTsKPiArCj4gKyAgICAgICBkbyB7Cj4gKyAgICAg
ICAgICAgICAgIHNlcSA9IHJlYWRfc2VxY291bnRfYmVnaW4oJm9iai0+c2VxKTsKPiArICAgICAg
ICAgICAgICAgKmV4Y2wgPSByY3VfZGVyZWZlcmVuY2Uob2JqLT5mZW5jZV9leGNsKTsKPiArICAg
ICAgICAgICAgICAgKmxpc3QgPSByY3VfZGVyZWZlcmVuY2Uob2JqLT5mZW5jZSk7Cj4gKyAgICAg
ICB9IHdoaWxlIChyZWFkX3NlcWNvdW50X3JldHJ5KCZvYmotPnNlcSwgc2VxKSk7Cj4gK30KCkkg
d291bGQgcGVyc29uYWxseSBwcmVmZXIgcmV0dXJuIGV4Y2wgcmF0aGVyIHRoYW4gaGF2ZSBpdCBh
cyBhIHNlY29uZApvdXRwYXJhbSwgYnV0IEknZCBsZWF2ZSB0aGF0IHRvIGdjYyB0byBkZWNpZGUu
CgpIYXZpbmcgc3RhcmVkIGF0IHRoaXMsIEkgYWdyZWUgdGhpcyBkb2VzIHRoZSByaWdodCB0aGlu
Zy4gVGhlIGltcG9ydGFudApwb2ludCBmcm9tIGFsbCBjYWxsZXJzJyBwZXJzcGVjdGl2ZSBpcyB0
aGF0IHRoZSBjb21iaW5hdGlvbiBvZiBwb2ludGVycwppcyBjb25zaXN0ZW50IGZvciB0aGlzIHJj
dV9yZWFkX2xvY2suIEFuZCByY3VfZGVyZWZlcmVuY2UgZW5mb3JjZXMgdGhlCmNhbGxlcnMgZG8g
aG9sZCByY3VfcmVhZF9sb2NrLgoKSSBkaWRuJ3QgY2hlY2sgYWxsIHRoZSBjb252ZXJzaW9ucywg
anVzdCBzdGFyZWQgYXQgdGhlIGhlYXJ0IG9mIHRoZQpwcm9ibGVtLgoKUmV2aWV3ZWQtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
