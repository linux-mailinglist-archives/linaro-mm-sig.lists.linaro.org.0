Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5692F1BA1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Jan 2021 17:58:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C87C4618B2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Jan 2021 16:58:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BA9306670D; Mon, 11 Jan 2021 16:58:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 98AB3618C2;
	Mon, 11 Jan 2021 16:58:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6E8FD6189D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jan 2021 16:58:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5682A618C2; Mon, 11 Jan 2021 16:58:18 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id CED606189D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jan 2021 16:58:16 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id m5so468314wrx.9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jan 2021 08:58:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4FqdUl+82w6WQ3AgKtaR9Ms7/D3PccxuSOkwBbIHSfQ=;
 b=G0h8Ks1p+zigezqN3pRo4HhTkqUTm9fvWJNfc68fJKzFJ6xz9T/GZMBrOFkC6NvyQI
 9gTBifhJwkQlFrcV0DbdgfB/Fl5jFMNjmSWPvvO/lW2Bm5tkGuvFaaqZ8x+JZDwg0uNM
 PK45hVBPcsOnzBJ0DIlnBaDx+4RPv4fpwP8FSY1PEV0h1FAbtEKojBJ5Fd5gnpXaSpcw
 bnefbqyqvX+sS7ngc/MvxtbJZmm3ZCUVuXZG6dx1QONjUEtVG8eUaAeDextLrAGt5gTs
 fOT81zbh+Tnlq4hHAk4q+gtMFv/VnkjVFtjB2P9xwsyK3Gs4uFz8G7D9foaciOFTiW6J
 PDFQ==
X-Gm-Message-State: AOAM5337SI5zE8J15oA2DcBRkNaIUsChAEQ8aZNSgac2NCzVKt7h0znZ
 dIKqsFXzEPI5Pnck7k8N/wF6XQ==
X-Google-Smtp-Source: ABdhPJzUUtudaQHIkwtOF8q9nDHaJ26/sAlo6U/GtHff2RUsJVajVjlbhR+QS23CmuIMHVZP8Twt1Q==
X-Received: by 2002:adf:e406:: with SMTP id g6mr44798wrm.255.1610384296005;
 Mon, 11 Jan 2021 08:58:16 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p15sm296486wrt.15.2021.01.11.08.58.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Jan 2021 08:58:15 -0800 (PST)
Date: Mon, 11 Jan 2021 17:58:13 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <X/yDpZbtRhe2YlCp@phenom.ffwll.local>
References: <20210108094340.15290-1-tzimmermann@suse.de>
 <20210108094340.15290-6-tzimmermann@suse.de>
 <X/yClQZQ0B5AMfEP@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <X/yClQZQ0B5AMfEP@phenom.ffwll.local>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: eric@anholt.net, sam@ravnborg.org, dri-devel@lists.freedesktop.org,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 christian.koenig@amd.com, linaro-mm-sig@lists.linaro.org, hdegoede@redhat.com,
 kraxel@redhat.com, daniel@ffwll.ch, airlied@redhat.com,
 virtualization@lists.linux-foundation.org, sean@poorly.run,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v4 05/13] drm/mgag200: Use
 drm_gem_shmem_vmap_local() in damage handling
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

T24gTW9uLCBKYW4gMTEsIDIwMjEgYXQgMDU6NTM6NDFQTSArMDEwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBPbiBGcmksIEphbiAwOCwgMjAyMSBhdCAxMDo0MzozMkFNICswMTAwLCBUaG9tYXMg
WmltbWVybWFubiB3cm90ZToKPiA+IERhbWFnZSBoYW5kbGluZyBpbiBtZ2FnMjAwIHJlcXVpcmVz
IGEgc2hvcnQtdGVybSBtYXBwaW5nIG9mIHRoZSBzb3VyY2UKPiA+IEJPLiBVc2UgZHJtX2dlbV9z
aG1lbV92bWFwX2xvY2FsKCkuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJt
YW5uIDx0emltbWVybWFubkBzdXNlLmRlPgo+IAo+IFJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVy
IDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgoKT24gc2Vjb25kIHRob3VnaHQsIHN0cmlrZSB0aGF0
IHItYiwgSSBoYXZlIGEgY29uZnVzZWQgcXVlc3Rpb24uCj4gCj4gPiAtLS0KPiA+ICBkcml2ZXJz
L2dwdS9kcm0vbWdhZzIwMC9tZ2FnMjAwX21vZGUuYyB8IDE2ICsrKysrKysrKysrKystLS0KPiA+
ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+IAo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZ2FnMjAwL21nYWcyMDBfbW9kZS5jIGIv
ZHJpdmVycy9ncHUvZHJtL21nYWcyMDAvbWdhZzIwMF9tb2RlLmMKPiA+IGluZGV4IDFkZmM0MjE3
MDA1OS4uYTMzZTI4ZDRjNWU5IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21nYWcy
MDAvbWdhZzIwMF9tb2RlLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZ2FnMjAwL21nYWcy
MDBfbW9kZS5jCj4gPiBAQCAtMTU1MiwyMiArMTU1MiwzMiBAQCBtZ2FnMjAwX2hhbmRsZV9kYW1h
Z2Uoc3RydWN0IG1nYV9kZXZpY2UgKm1kZXYsIHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLAo+
ID4gIAkJICAgICAgc3RydWN0IGRybV9yZWN0ICpjbGlwKQo+ID4gIHsKPiA+ICAJc3RydWN0IGRy
bV9kZXZpY2UgKmRldiA9ICZtZGV2LT5iYXNlOwo+ID4gKwlzdHJ1Y3QgZHJtX2dlbV9vYmplY3Qg
Km9iaiA9IGZiLT5vYmpbMF07Cj4gPiAgCXN0cnVjdCBkbWFfYnVmX21hcCBtYXA7Cj4gPiAgCXZv
aWQgKnZtYXA7Cj4gPiAgCWludCByZXQ7Cj4gPiAgCj4gPiAtCXJldCA9IGRybV9nZW1fc2htZW1f
dm1hcChmYi0+b2JqWzBdLCAmbWFwKTsKPiA+ICsJcmV0ID0gZG1hX3Jlc3ZfbG9jayhvYmotPnJl
c3YsIE5VTEwpOwo+ID4gIAlpZiAoZHJtX1dBUk5fT04oZGV2LCByZXQpKQo+ID4gLQkJcmV0dXJu
OyAvKiBCVUc6IFNITUVNIEJPIHNob3VsZCBhbHdheXMgYmUgdm1hcHBlZCAqLwo+ID4gKwkJcmV0
dXJuOwo+ID4gKwlyZXQgPSBkcm1fZ2VtX3NobWVtX3ZtYXBfbG9jYWwob2JqLCAmbWFwKTsKPiA+
ICsJaWYgKGRybV9XQVJOX09OKGRldiwgcmV0KSkKPiA+ICsJCWdvdG8gZXJyX2RtYV9yZXN2X3Vu
bG9jazsgLyogQlVHOiBTSE1FTSBCTyBzaG91bGQgYWx3YXlzIGJlIHZtYXBwZWQgKi8KCldoeSBp
cyB0aGlzIGd1YXJhbnRlZWQ/IEkgdHJpZWQgdG8gaHVudCBmb3IgYSB2bWFwIGluIG1nYTIwMGcg
Y29kZSwgYW5kCmRpbmQndCBmaW5kIGFueS4gSSdkIGFodmUgZXhwZWN0ZWQgc29tZXRoaW5nIGlu
IHByZXBhcmUvZmluaXNoX2ZiLgoKQWxzbyBzaW5jZSB0aGlzIGlzIG5vdCBhIHZyYW0taGVscGVy
IHVzaW5nIGRyaXZlciwgd2h5IGNvbnZlcnQgaXQgb3ZlciB0bwp2bWFwX2xvY2FsPyBJIGd1ZXNz
IHRoYXQgc2hvdWxkIGFsc28gYmUgZXhwbGFpbmVkIGluIHRoZSBjb21taXQgbWVzc2FnZSBhCmJp
dCBiZXR0ZXIuCi1EYW5pZWwKCj4gPiAgCXZtYXAgPSBtYXAudmFkZHI7IC8qIFRPRE86IFVzZSBt
YXBwaW5nIGFic3RyYWN0aW9uIHByb3Blcmx5ICovCj4gPiAgCj4gPiAgCWRybV9mYl9tZW1jcHlf
ZHN0Y2xpcChtZGV2LT52cmFtLCB2bWFwLCBmYiwgY2xpcCk7Cj4gPiAgCj4gPiAtCWRybV9nZW1f
c2htZW1fdnVubWFwKGZiLT5vYmpbMF0sICZtYXApOwo+ID4gKwlkcm1fZ2VtX3NobWVtX3Z1bm1h
cF9sb2NhbChvYmosICZtYXApOwo+ID4gKwlkbWFfcmVzdl91bmxvY2sob2JqLT5yZXN2KTsKPiA+
ICAKPiA+ICAJLyogQWx3YXlzIHNjYW5vdXQgaW1hZ2UgYXQgVlJBTSBvZmZzZXQgMCAqLwo+ID4g
IAltZ2FnMjAwX3NldF9zdGFydGFkZChtZGV2LCAodTMyKTApOwo+ID4gIAltZ2FnMjAwX3NldF9v
ZmZzZXQobWRldiwgZmIpOwo+ID4gKwo+ID4gKwlyZXR1cm47Cj4gPiArCj4gPiArZXJyX2RtYV9y
ZXN2X3VubG9jazoKPiA+ICsJZG1hX3Jlc3ZfdW5sb2NrKG9iai0+cmVzdik7Cj4gPiAgfQo+ID4g
IAo+ID4gIHN0YXRpYyB2b2lkCj4gPiAtLSAKPiA+IDIuMjkuMgo+ID4gCj4gCj4gLS0gCj4gRGFu
aWVsIFZldHRlcgo+IFNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgo+IGh0dHA6
Ly9ibG9nLmZmd2xsLmNoCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50
ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
