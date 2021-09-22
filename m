Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A49C41472D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 13:00:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C18866197A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 11:00:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 02C4C61A49; Wed, 22 Sep 2021 11:00:12 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9857E61725;
	Wed, 22 Sep 2021 11:00:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A40C1610C2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 11:00:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 986D161725; Wed, 22 Sep 2021 11:00:08 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id 8EDF0610C2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 11:00:06 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id d6so5401844wrc.11
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 04:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=4g6a23eFtTo29hJc/EesJyqk+i6yL2oemrveRwRZhhw=;
 b=CUCFaz2n+xatYDb02XfF6UjyiZqwQGqRfeziLVtAMA8dJMWM3+gCmFAY8dtk4MXEYl
 L9fXdYfnzcPsWCoM4480VYxMCBTkbb2TL6InOA9couilEWK8U00Fa0CaAGgIvHtWhvYw
 AzTvBVAbx+zxZkC0Dx5cHihobTP/9mT7MKkIJGBrir8rGDhMlbxGTWFGtt2lZ2HdfFHr
 Nr6DgbGTI/lR3FQiBHm3oGsI//aL7txWfgqUntNHQF5QJVj2GHW3woJmHRkVXyK3dLRr
 ILG746H6v0fZso7Oy2LOsTL3BjXIImxarRD7A96nN95gNOj3BtwUNPV4jjgwVRrccokY
 yl6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=4g6a23eFtTo29hJc/EesJyqk+i6yL2oemrveRwRZhhw=;
 b=XKERkL9TwaITEc7tHIb9AKbFAT9qyR7vGfWPKnQCDR5jGg3NTHpOnLFGxI7aPbjoue
 NFRQWSJ627ayeDgHXEh965gJ470G0Xjwk1WnUcge5T374vrYzFl1wyN8NiiutQiyuIal
 eA+ypVCSLdeJn+6Ygs1x7mfCM3NqmLcQ4eZE6T8o2ax35ReDOcvtJsrn5nbKF3Mlmwbx
 nSDChu1/drfCVTvyubadFaWV1DdKIvGF5vP+620RgnXpw+0R0dwGjSx/No9henet+z+1
 73TzdI98qlaKiu9fGFkpxd8g4t9arW7xpsLoXZkjDntYXqHNpxhfW6/mArhulIky4Rti
 Zxnw==
X-Gm-Message-State: AOAM530zVLFHgdvVrF8dimYFh5P4A+ISW/sY0bO7QtuL70kQOLr1GVrc
 7GKxxPIGgFj+hjN5lubm+zI=
X-Google-Smtp-Source: ABdhPJyjYgC29P1McsGvDeZkXiBtlQKw3QpMUh6IhB2Lj81ZLzBgMgqPqot6ZYAhRv6PheyNjeW5NA==
X-Received: by 2002:a5d:65ce:: with SMTP id e14mr41647853wrw.328.1632308405163; 
 Wed, 22 Sep 2021 04:00:05 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea1b5.dip0.t-ipconnect.de.
 [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id w5sm1801014wra.87.2021.09.22.04.00.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Sep 2021 04:00:04 -0700 (PDT)
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210922091044.2612-1-christian.koenig@amd.com>
 <20210922091044.2612-19-christian.koenig@amd.com>
 <92e428d5-76d5-e63f-5322-aa5cf1a1952a@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <db679020-b35b-8664-a6b8-3d88ed2ca8c6@gmail.com>
Date: Wed, 22 Sep 2021 13:00:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <92e428d5-76d5-e63f-5322-aa5cf1a1952a@linux.intel.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 18/26] drm/i915: use new iterator in
 i915_gem_object_last_write_engine
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: daniel@ffwll.ch
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjIuMDkuMjEgdW0gMTI6Mjcgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPgo+IE9uIDIyLzA5
LzIwMjEgMTA6MTAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IFRoaXMgaXMgbWF5YmUgZXZl
biBhIGZpeCBzaW5jZSB0aGUgUkNVIHVzYWdlIGhlcmUgbG9va3MgaW5jb3JyZWN0Lgo+Cj4gSSdt
IGFmcmFpZCBJIGdhenVtcGVkIHlvdSBoZXJlIGJ5IHJlbW92aW5nIHRoaXMgZnVuY3Rpb24gc2hv
cnRseSAKPiBiZWZvcmUgeW91IHBvc3RlZCB0aGUgcmVzcGluLgoKSXMgdGhhdCBhbHJlYWR5IGxh
bmRlZCBpbiBkcm0tbWlzYy1uZXh0PyBJZiBub3QganVzdCBnaXZlIG1lIGFuIEFja2VkLWJ5IAph
bmQgaXQgd2lsbCBiZSBmaXhlZCB3aGVuIG1lcmdpbmcgdHJlZXMgdG9nZXRoZXIgYWdhaW4gYnkg
anVzdCBkcm9wcGluZyAKdGhlIGNoYW5nZS4KCkFsdGVybmF0aXZlbHkgaWYgaXQgaXMgbm90IGlu
IGRybS1uZXh0IEkgd2lsbCBwaW5nIHRoZSBkcm0tbWlzYy1uZXh0IAptYWludGFpbmVyIGZvciBh
IG1lcmdlLgoKUmVnYXJkcywKQ2hyaXN0aWFuLgoKPgo+IFJlZ2FyZHMsCj4KPiBUdnJ0a28KPgo+
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0
LmggfCAxNiArKysrKysrKy0tLS0tLS0tCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKyksIDggZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX29iamVjdC5oCj4+IGluZGV4IDQ4MTEyYjlkNzZkZi4uZTIwZWZmZmNlM2E5IDEw
MDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgK
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCj4+IEBA
IC01MDcsMTYgKzUwNywxNiBAQCBzdGF0aWMgaW5saW5lIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
Kgo+PiDCoCBpOTE1X2dlbV9vYmplY3RfbGFzdF93cml0ZV9lbmdpbmUoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaikKPj4gwqAgewo+PiDCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZSA9IE5VTEw7Cj4+ICvCoMKgwqAgc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vy
c29yOwo+PiDCoMKgwqDCoMKgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwo+PiDCoCAtwqDCoMKg
IHJjdV9yZWFkX2xvY2soKTsKPj4gLcKgwqDCoCBmZW5jZSA9IGRtYV9yZXN2X2dldF9leGNsX3Vu
bG9ja2VkKG9iai0+YmFzZS5yZXN2KTsKPj4gLcKgwqDCoCByY3VfcmVhZF91bmxvY2soKTsKPj4g
LQo+PiAtwqDCoMKgIGlmIChmZW5jZSAmJiBkbWFfZmVuY2VfaXNfaTkxNShmZW5jZSkgJiYgCj4+
ICFkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpKQo+PiAtwqDCoMKgwqDCoMKgwqAgZW5naW5l
ID0gdG9fcmVxdWVzdChmZW5jZSktPmVuZ2luZTsKPj4gLcKgwqDCoCBkbWFfZmVuY2VfcHV0KGZl
bmNlKTsKPj4gLQo+PiArwqDCoMKgIGRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2JqLT5i
YXNlLnJlc3YsIGZhbHNlKTsKPj4gK8KgwqDCoCBkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxv
Y2tlZCgmY3Vyc29yLCBmZW5jZSkgewo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKGZlbmNlICYmIGRt
YV9mZW5jZV9pc19pOTE1KGZlbmNlKSAmJgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAhZG1h
X2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW5n
aW5lID0gdG9fcmVxdWVzdChmZW5jZSktPmVuZ2luZTsKPj4gK8KgwqDCoCB9Cj4+ICvCoMKgwqAg
ZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7Cj4+IMKgwqDCoMKgwqAgcmV0dXJuIGVuZ2luZTsK
Pj4gwqAgfQo+PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
