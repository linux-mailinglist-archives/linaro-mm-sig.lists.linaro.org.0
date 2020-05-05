Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CD21C53FE
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 13:10:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2D15261999
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 11:10:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1E38166078; Tue,  5 May 2020 11:10:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7EDE2619F1;
	Tue,  5 May 2020 11:09:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2DD4060F57
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 11:09:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1F112619F1; Tue,  5 May 2020 11:09:54 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id 1142960F57
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 11:09:53 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4A89768C4E; Tue,  5 May 2020 13:09:50 +0200 (CEST)
Date: Tue, 5 May 2020 13:09:50 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <20200505110950.GA19067@lst.de>
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084625eucas1p1a3c25fd171f360e0aab2f76700699454@eucas1p1.samsung.com>
 <20200505084614.30424-2-m.szyprowski@samsung.com>
 <20200505101508.GA14860@lst.de>
 <5dd1cb55-accb-0dc6-4ca5-90c57cd19527@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5dd1cb55-accb-0dc6-4ca5-90c57cd19527@samsung.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, iommu@lists.linux-foundation.org,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v3 02/25] drm: core: fix common struct
 sg_table related issues
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

T24gVHVlLCBNYXkgMDUsIDIwMjAgYXQgMTI6NTE6NThQTSArMDIwMCwgTWFyZWsgU3p5cHJvd3Nr
aSB3cm90ZToKPiBIaSBDaHJpc3RvcGgsCj4gCj4gT24gMDUuMDUuMjAyMCAxMjoxNSwgQ2hyaXN0
b3BoIEhlbGx3aWcgd3JvdGU6Cj4gPj4gLQkJZm9yX2VhY2hfc2dfcGFnZShzdC0+c2dsLCAmc2df
aXRlciwgc3QtPm5lbnRzLCAwKQo+ID4+ICsJCWZvcl9lYWNoX3NnX3BhZ2Uoc3QtPnNnbCwgJnNn
X2l0ZXIsIHN0LT5vcmlnX25lbnRzLCAwKQo+ID4gV291bGQgaXQgbWFrZSBzZW5zZSB0byBhbHNv
IGFkZCBhIGZvcl9lYWNoX3NndGFibGVfcGFnZSBoZWxwZXIgdGhhdAo+ID4gaGlkZXMgdGhlIHVz
ZSBvZiBvcmlnX25lbnRzPyAgVG8gYmUgdXNlZCBsaWtlOgo+ID4KPiA+IAkJZm9yX2VhY2hfc2d0
YWJsZV9wYWdlKHN0LCAmc2dfaXRlciwgMCkgewo+IAo+IFdlIHdvdWxkIG5lZWQgdHdvIGhlbHBl
cnM6Cj4gCj4gZm9yX2VhY2hfc2d0YWJsZV9jcHVfcGFnZSgpIGFuZCBmb3JfZWFjaF9zZ3RhYmxl
X2RtYV9wYWdlKCkuCj4gCj4gSSBjb25zaWRlcmVkIHRoZW0sIGJ1dCB0aGVuIEkgZm91bmQgdGhh
dCB0aGVyZSBhcmUgYWxyZWFkeSAKPiBmb3JfZWFjaF9zZ19wYWdlKCksIGZvcl9lYWNoX3NnX2Rt
YV9wYWdlKCkgYW5kIHZhcmlvdXMgc3BlY2lhbCBpdGVyYXRvcnMgCj4gbGlrZSBzZ19wYWdlX2l0
ZXIsIHNnX2RtYV9wYWdlX2l0ZXIgYW5kIHNnX21hcHBpbmdfaXRlci4gVG9vIGJhZCB0aGF0IAo+
IHRoZXkgYXJlIGFsbW9zdCBub3QgdXNlZCwgYXQgbGVhc3QgaW4gdGhlIERSTSBzdWJzeXN0ZW0u
IEkgd29uZGVyIGlmIGl0IAo+IG1ha2Ugc2Vuc2UgdG8gYXBwbHkgdGhlbSBvciBzaW1wbHkgcHJv
dmlkZSB0aGUgdHdvIGFib3ZlIG1lbnRpb25lZCAKPiB3cmFwcGVycz8KCk5vbmUgb2YgdGhlIGhl
bHBlcnMgaGVscHMgd2l0aCBwYXNzaW5nIHRoZSByaWdodCBwYXJhbWV0ZXJzIGZyb20gdGhlCnNn
X3RhYmxlLiAgU28gaW4gZG91YmUgd2UnZCBuZWVkIHdyYXBwZXJzIGZvciBhbGwgb2YgdGhlIGFi
b3ZlLCBvcgpub25lLi4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1t
bS1zaWcK
