Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 637A11A3155
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Apr 2020 10:56:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8EB4E6618A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Apr 2020 08:56:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8191D664F5; Thu,  9 Apr 2020 08:56:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	TVD_SUBJ_WIPE_DEBT,T_SPF_HELO_PERMERROR autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C6D0C62BBE;
	Thu,  9 Apr 2020 08:55:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E5A8F619F1
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 08:55:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D875262BBE; Thu,  9 Apr 2020 08:55:43 +0000 (UTC)
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
 by lists.linaro.org (Postfix) with ESMTPS id B96CE619F1
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 08:55:41 +0000 (UTC)
Received: from localhost (gate.crashing.org [63.228.1.57])
 (authenticated bits=0)
 by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 0398s3us004063
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 9 Apr 2020 03:54:07 -0500
Message-ID: <eb48f7b6327e482ea9911b129210c0417ab48345.camel@kernel.crashing.org>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Daniel Vetter <daniel@ffwll.ch>, Christoph Hellwig <hch@lst.de>
Date: Thu, 09 Apr 2020 18:54:01 +1000
In-Reply-To: <20200408122504.GO3456981@phenom.ffwll.local>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-20-hch@lst.de>
 <20200408122504.GO3456981@phenom.ffwll.local>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, x86@kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Nitin Gupta <ngupta@vflare.org>,
 Haiyang Zhang <haiyangz@microsoft.com>, linaro-mm-sig@lists.linaro.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Minchan Kim <minchan@kernel.org>, iommu@lists.linux-foundation.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Subject: Re: [Linaro-mm-sig] [PATCH 19/28] gpu/drm: remove the powerpc hack
 in drm_legacy_sg_alloc
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

T24gV2VkLCAyMDIwLTA0LTA4IGF0IDE0OjI1ICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+
IE9uIFdlZCwgQXByIDA4LCAyMDIwIGF0IDAxOjU5OjE3UE0gKzAyMDAsIENocmlzdG9waCBIZWxs
d2lnIHdyb3RlOgo+ID4gSWYgdGhpcyBjb2RlIHdhcyBicm9rZW4gZm9yIG5vbi1jb2hlcmVudCBj
YWNoZXMgYSBjcnVkZSBwb3dlcnBjIGhhY2sKPiA+IGlzbid0IGdvaW5nIHRvIGhlbHAgYW55b25l
IGVsc2UuICBSZW1vdmUgdGhlIGhhY2sgYXMgaXQgaXMgdGhlIGxhc3QKPiA+IHVzZXIgb2YgX192
bWFsbG9jIHBhc3NpbmcgYSBwYWdlIHByb3RlY3Rpb24gZmxhZyBvdGhlciB0aGFuIFBBR0VfS0VS
TkVMLgo+IAo+IFdlbGwgQmVuIGFkZGVkIHRoaXMgdG8gbWFrZSBzdHVmZiB3b3JrIG9uIHBwYywg
b2ZjIHRoZSBob21lIGdyb3duIGRtYQo+IGxheWVyIGluIGRybSBmcm9tIGJhY2sgdGhlbiBpc24n
dCBnb2luZyB0byB3b3JrIGluIG90aGVyIHBsYWNlcy4gSSBndWVzcwo+IHNob3VsZCBoYXZlIGF0
IGxlYXN0IGFuIGFjayBmcm9tIGhpbSwgaW4gY2FzZSBhbnlvbmUgc3RpbGwgY2FyZXMgYWJvdXQK
PiB0aGlzIG9uIHBwYy4gQWRkaW5nIEJlbiB0byBjYy4KClRoaXMgd2FzIGR1ZSB0byBzb21lIGRy
aXZlcnMgKHJhZGVvbiA/KSB0cnlpbmcgdG8gdXNlIHZtYWxsb2MgcGFnZXMgZm9yCmNvaGVyZW50
IERNQSwgd2hpY2ggbWVhbnMgb24gdGhvc2UgNHh4IHBvd2VycGMncyBuZWVkIHRvIGJlIG5vbi1j
YWNoZWQuCgpUaGVyZSB3ZXJlIG1hY2hpbmVzIHVzaW5nIHRoYXQgKDQ0MCBiYXNlZCBpaXJjKSwg
dGhvdWdoIEkgaG9uZXN0bHkKY2FuJ3QgdGVsbCBpZiBhbnlib2R5IHN0aWxsIHVzZXMgYW55IG9m
IGl0LgoKQ2hlZXJzLApCZW4uCgo+IC1EYW5pZWwKPiAKPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTog
Q2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9k
cm0vZHJtX3NjYXR0ZXIuYyB8IDExICstLS0tLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxMCBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9kcm1fc2NhdHRlci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9zY2F0dGVyLmMK
PiA+IGluZGV4IGNhNTIwMDI4YjJjYi4uZjRlNjE4NGQxODc3IDEwMDY0NAo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2RybV9zY2F0dGVyLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1f
c2NhdHRlci5jCj4gPiBAQCAtNDMsMTUgKzQzLDYgQEAKPiA+ICAKPiA+ICAjZGVmaW5lIERFQlVH
X1NDQVRURVIgMAo+ID4gIAo+ID4gLXN0YXRpYyBpbmxpbmUgdm9pZCAqZHJtX3ZtYWxsb2NfZG1h
KHVuc2lnbmVkIGxvbmcgc2l6ZSkKPiA+IC17Cj4gPiAtI2lmIGRlZmluZWQoX19wb3dlcnBjX18p
ICYmIGRlZmluZWQoQ09ORklHX05PVF9DT0hFUkVOVF9DQUNIRSkKPiA+IC0JcmV0dXJuIF9fdm1h
bGxvYyhzaXplLCBHRlBfS0VSTkVMLCBwZ3Byb3Rfbm9uY2FjaGVkX3djKFBBR0VfS0VSTkVMKSk7
Cj4gPiAtI2Vsc2UKPiA+IC0JcmV0dXJuIHZtYWxsb2NfMzIoc2l6ZSk7Cj4gPiAtI2VuZGlmCj4g
PiAtfQo+ID4gLQo+ID4gIHN0YXRpYyB2b2lkIGRybV9zZ19jbGVhbnVwKHN0cnVjdCBkcm1fc2df
bWVtICogZW50cnkpCj4gPiAgewo+ID4gIAlzdHJ1Y3QgcGFnZSAqcGFnZTsKPiA+IEBAIC0xMjYs
NyArMTE3LDcgQEAgaW50IGRybV9sZWdhY3lfc2dfYWxsb2Moc3RydWN0IGRybV9kZXZpY2UgKmRl
diwgdm9pZCAqZGF0YSwKPiA+ICAJCXJldHVybiAtRU5PTUVNOwo+ID4gIAl9Cj4gPiAgCj4gPiAt
CWVudHJ5LT52aXJ0dWFsID0gZHJtX3ZtYWxsb2NfZG1hKHBhZ2VzIDw8IFBBR0VfU0hJRlQpOwo+
ID4gKwllbnRyeS0+dmlydHVhbCA9IHZtYWxsb2NfMzIocGFnZXMgPDwgUEFHRV9TSElGVCk7Cj4g
PiAgCWlmICghZW50cnktPnZpcnR1YWwpIHsKPiA+ICAJCWtmcmVlKGVudHJ5LT5idXNhZGRyKTsK
PiA+ICAJCWtmcmVlKGVudHJ5LT5wYWdlbGlzdCk7Cj4gPiAtLSAKPiA+IDIuMjUuMQo+ID4gCj4g
Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
