Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F1AFD2F1BAC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Jan 2021 18:01:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 07F4A666E9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Jan 2021 17:01:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EF33E6670D; Mon, 11 Jan 2021 17:01:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7E9A461915;
	Mon, 11 Jan 2021 17:00:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 93A766189D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jan 2021 17:00:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 829FC61915; Mon, 11 Jan 2021 17:00:47 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by lists.linaro.org (Postfix) with ESMTPS id 3D1586189D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jan 2021 17:00:46 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id y23so558186wmi.1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jan 2021 09:00:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2g3cL0wvqzFtjOXKvL27N3/6q4I3I6VjBCf04+f3nDE=;
 b=ufG3cXrmnRT/tBkRHg2BWkNm+mVG14z+DbUdIFfCNENV0p9cIVpCuxOO6SM6134GXF
 RYFKRzkwv0LmkRx1j731HWaaPrXWW1YnuAirSddU0+nkeMV0pxX+m0Xp10A5rafUgMhT
 te887ihI1/idubDDdsHmSkz6LSKJKpU/lCkdu3TZibM+H34wvsq2VldsVITVY4wIlur2
 Z+YFN2PCoXkzg7BRLk6LC1aJRK5mm+kgbkSknperKycvoH0Vbs2SquERmdUMQq3O0hvW
 oWI9IBYcuAtadU+lmP6PWTjE2gmvOSxaQoaGawMDbhB/UBdtWx7o6eyUjF/Y01eMrEhn
 3rVg==
X-Gm-Message-State: AOAM530cNTiBYDByPzCc1dbr3I1GI9JvZ0gXk2CP54mRMuArk+fnMDjH
 kE0Y3N+yvjHo0bJZOAi1v3f1TQ==
X-Google-Smtp-Source: ABdhPJyG0LrXbaUIyyZRlVK36Q2xpcxqNl5BuI6ZeTG2aGDwDFmf1Yi6zoWIMIlGAfmk+GjScniy3Q==
X-Received: by 2002:a7b:cc94:: with SMTP id p20mr590675wma.22.1610384445461;
 Mon, 11 Jan 2021 09:00:45 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z13sm432713wmz.3.2021.01.11.09.00.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Jan 2021 09:00:44 -0800 (PST)
Date: Mon, 11 Jan 2021 18:00:42 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <X/yEOiDNYmRo+17/@phenom.ffwll.local>
References: <20210108094340.15290-1-tzimmermann@suse.de>
 <20210108094340.15290-7-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210108094340.15290-7-tzimmermann@suse.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: eric@anholt.net, sam@ravnborg.org, dri-devel@lists.freedesktop.org,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 christian.koenig@amd.com, linaro-mm-sig@lists.linaro.org, hdegoede@redhat.com,
 kraxel@redhat.com, daniel@ffwll.ch, airlied@redhat.com,
 virtualization@lists.linux-foundation.org, sean@poorly.run,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v4 06/13] drm/cirrus: Use
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

T24gRnJpLCBKYW4gMDgsIDIwMjEgYXQgMTA6NDM6MzNBTSArMDEwMCwgVGhvbWFzIFppbW1lcm1h
bm4gd3JvdGU6Cj4gRGFtYWdlIGhhbmRsaW5nIGluIGNpcnJ1cyByZXF1aXJlcyBhIHNob3J0LXRl
cm0gbWFwcGluZyBvZiB0aGUgc291cmNlCj4gQk8uIFVzZSBkcm1fZ2VtX3NobWVtX3ZtYXBfbG9j
YWwoKS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5A
c3VzZS5kZT4KCkhtIG1vcmUgcG9zc2libGUgZXJyb3JzIHRoYXQgd2UgZG9uJ3QgcmVwb3J0IHRv
IHVzZXJzcGFjZSAuLi4gV2h5IGRvbid0IHdlCnZtYXAvdnVubWFwIHRoZXNlIGluIHByZXBhcmUv
Y2xlYW51cF9mYj8gR2VuZXJhbGx5IHdlJ2Qgd2FudCBhIGxvbmctdGVybQp2bWFwIGhlcmUgdG8g
bWFrZSBzdXJlIHRoaXMgYWxsIHdvcmtzIG5pY2VseS4KClNpbmNlIGl0J3Mgbm90aGluZyBuZXcs
IG9uIHRoaXMgcGF0Y2g6CgpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRl
ckBmZndsbC5jaD4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS90aW55L2NpcnJ1cy5jIHwgMTAg
KysrKysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdGlueS9jaXJydXMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS90aW55L2NpcnJ1cy5jCj4gaW5kZXggYTA0M2U2MDIxOTllLi4yMWNkNzA1
NmQ0NWYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3RpbnkvY2lycnVzLmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vdGlueS9jaXJydXMuYwo+IEBAIC0zMTUsNiArMzE1LDcgQEAgc3Rh
dGljIGludCBjaXJydXNfZmJfYmxpdF9yZWN0KHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLAo+
ICAJCQkgICAgICAgc3RydWN0IGRybV9yZWN0ICpyZWN0KQo+ICB7Cj4gIAlzdHJ1Y3QgY2lycnVz
X2RldmljZSAqY2lycnVzID0gdG9fY2lycnVzKGZiLT5kZXYpOwo+ICsJc3RydWN0IGRybV9nZW1f
b2JqZWN0ICpvYmogPSBmYi0+b2JqWzBdOwo+ICAJc3RydWN0IGRtYV9idWZfbWFwIG1hcDsKPiAg
CXZvaWQgKnZtYXA7Cj4gIAlpbnQgaWR4LCByZXQ7Cj4gQEAgLTMyMyw5ICszMjQsMTIgQEAgc3Rh
dGljIGludCBjaXJydXNfZmJfYmxpdF9yZWN0KHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLAo+
ICAJaWYgKCFkcm1fZGV2X2VudGVyKCZjaXJydXMtPmRldiwgJmlkeCkpCj4gIAkJZ290byBvdXQ7
Cj4gIAo+IC0JcmV0ID0gZHJtX2dlbV9zaG1lbV92bWFwKGZiLT5vYmpbMF0sICZtYXApOwo+ICsJ
cmV0ID0gZG1hX3Jlc3ZfbG9jayhvYmotPnJlc3YsIE5VTEwpOwo+ICAJaWYgKHJldCkKPiAgCQln
b3RvIG91dF9kZXZfZXhpdDsKPiArCXJldCA9IGRybV9nZW1fc2htZW1fdm1hcF9sb2NhbChmYi0+
b2JqWzBdLCAmbWFwKTsKPiArCWlmIChyZXQpCj4gKwkJZ290byBvdXRfZG1hX3Jlc3ZfdW5sb2Nr
Owo+ICAJdm1hcCA9IG1hcC52YWRkcjsgLyogVE9ETzogVXNlIG1hcHBpbmcgYWJzdHJhY3Rpb24g
cHJvcGVybHkgKi8KPiAgCj4gIAlpZiAoY2lycnVzLT5jcHAgPT0gZmItPmZvcm1hdC0+Y3BwWzBd
KQo+IEBAIC0zNDUsOSArMzQ5LDExIEBAIHN0YXRpYyBpbnQgY2lycnVzX2ZiX2JsaXRfcmVjdChz
dHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwKPiAgCWVsc2UKPiAgCQlXQVJOX09OX09OQ0UoImNw
cCBtaXNtYXRjaCIpOwo+ICAKPiAtCWRybV9nZW1fc2htZW1fdnVubWFwKGZiLT5vYmpbMF0sICZt
YXApOwo+ICAJcmV0ID0gMDsKPiAgCj4gKwlkcm1fZ2VtX3NobWVtX3Z1bm1hcF9sb2NhbChvYmos
ICZtYXApOwo+ICtvdXRfZG1hX3Jlc3ZfdW5sb2NrOgo+ICsJZG1hX3Jlc3ZfdW5sb2NrKG9iai0+
cmVzdik7Cj4gIG91dF9kZXZfZXhpdDoKPiAgCWRybV9kZXZfZXhpdChpZHgpOwo+ICBvdXQ6Cj4g
LS0gCj4gMi4yOS4yCj4gCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50
ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
