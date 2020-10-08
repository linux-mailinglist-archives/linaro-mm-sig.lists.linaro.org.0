Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D1428737B
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Oct 2020 13:41:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7553C60EB0
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Oct 2020 11:41:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6881E6602A; Thu,  8 Oct 2020 11:41:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 785AE61081;
	Thu,  8 Oct 2020 11:40:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6EA3D6602A
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Oct 2020 11:39:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5A0EF60EB0; Thu,  8 Oct 2020 11:39:46 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by lists.linaro.org (Postfix) with ESMTPS id 1F7CE60EB0
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Oct 2020 11:39:44 +0000 (UTC)
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kQUGn-0001yz-7F; Thu, 08 Oct 2020 11:39:37 +0000
Date: Thu, 8 Oct 2020 12:39:37 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20201008113937.GB20115@casper.infradead.org>
References: <20201008112342.9394-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201008112342.9394-1-christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, daniel@ffwll.ch,
 airlied@redhat.com, akpm@linux-foundation.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/4] mm: introduce vma_set_file function
	v2
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

T24gVGh1LCBPY3QgMDgsIDIwMjAgYXQgMDE6MjM6MzlQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyAgICAgICAgICAgICAgICAgIHwg
MTYgKysrKystLS0tLS0tLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dl
bS5jICAgICAgfCAgNCArLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9k
bWFidWYuYyB8ICAzICstLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1h
bi5jICAgfCAgNCArKy0tCj4gIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jICAgICAgICAg
ICAgICB8ICA0ICstLS0KPiAgZHJpdmVycy9ncHUvZHJtL29tYXBkcm0vb21hcF9nZW0uYyAgICAg
ICAgIHwgIDMgKy0tCj4gIGRyaXZlcnMvZ3B1L2RybS92Z2VtL3ZnZW1fZHJ2LmMgICAgICAgICAg
ICB8ICAzICstLQo+ICBkcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9hc2htZW0uYyAgICAgICAgICAg
fCAgNSArKy0tLQouLi4KPiArKysgYi9tbS9tbWFwLmMKPiBAQCAtMTM2LDYgKzEzNiwyMiBAQCB2
b2lkIHZtYV9zZXRfcGFnZV9wcm90KHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQo+ICAJV1JJ
VEVfT05DRSh2bWEtPnZtX3BhZ2VfcHJvdCwgdm1fcGFnZV9wcm90KTsKPiAgfQo+ICAKPiArLyoK
PiArICogQ2hhbmdlIGJhY2tpbmcgZmlsZSwgb25seSB2YWxpZCB0byB1c2UgZHVyaW5nIGluaXRp
YWwgVk1BIHNldHVwLgo+ICsgKi8KPiArc3RydWN0IGZpbGUgKnZtYV9zZXRfZmlsZShzdHJ1Y3Qg
dm1fYXJlYV9zdHJ1Y3QgKnZtYSwgc3RydWN0IGZpbGUgKmZpbGUpCj4gK3sKPiArCWlmIChmaWxl
KQo+ICsJICAgICAgICBnZXRfZmlsZShmaWxlKTsKPiArCj4gKwlzd2FwKHZtYS0+dm1fZmlsZSwg
ZmlsZSk7Cj4gKwo+ICsJaWYgKGZpbGUpCj4gKwkJZnB1dChmaWxlKTsKPiArCj4gKwlyZXR1cm4g
ZmlsZTsKPiArfQo+ICsKClRoZXNlIHVzZXJzIGFyZSBhbGwgcG90ZW50aWFsbHkgbW9kdWxlcy4g
IFlvdSBuZWVkIGFuIEVYUE9SVF9TWU1CT0woKT8KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK
