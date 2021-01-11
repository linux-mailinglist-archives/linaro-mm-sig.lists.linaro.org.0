Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EF17F2F1BB7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Jan 2021 18:04:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06FDA6167C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Jan 2021 17:04:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E8E9E618C2; Mon, 11 Jan 2021 17:04:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 340E86189D;
	Mon, 11 Jan 2021 17:03:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1986E6013A
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jan 2021 17:03:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0B2EE6189D; Mon, 11 Jan 2021 17:03:43 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id 428F06013A
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jan 2021 17:03:41 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id d13so457306wrc.13
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jan 2021 09:03:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ALtIbbdLffgue6tI4Zq52HkQm8jHa5cuL6H+tIYyZvw=;
 b=DsETYbBpY3L4ho8rS51esosckZXQ4X9uukUGi1I55EZzmZCY5gu7ATU9kaOSMUlaVZ
 KJz1e14v6Gi3xhiZvyC9O8L8qobKL/aacr6UD+67GNMRM8MF+mMGYMjM60+OaEL/lSPf
 b0D0RbvVhQdnAfYrAl/uJvH1OK5xABDfKhIsQKhggEwardTVeU4gCdFY7LI3o+W8ieXx
 W7YIhJBFSXQ+GiWsDGdIRHI4cEzhhy+EM7kxC8a8i67H2bEMm1ryITiHNarceNH97D8s
 abMx1ptBK4FSAyYS6ziDdRZ26qjuKKxQpDZ042XYgAjtMx5CWmkGdZuGj25CcPaHG9xX
 dWOA==
X-Gm-Message-State: AOAM531uX+HHZXJ37fLCkd8mh2SE2YrGay8uP17lesmVVEz52VJhdwMS
 TC7U+02ZuIxfHX9WMOOSn3UpXQ==
X-Google-Smtp-Source: ABdhPJxFI7jKE0bGZWc1WaBEC3v4a5PjcJyxs5JgUHTFcbju1xWGCLxnPt0/We5va+1YMmoe1yCj3g==
X-Received: by 2002:a5d:4b44:: with SMTP id w4mr77723wrs.155.1610384620424;
 Mon, 11 Jan 2021 09:03:40 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b12sm439139wmj.2.2021.01.11.09.03.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Jan 2021 09:03:39 -0800 (PST)
Date: Mon, 11 Jan 2021 18:03:37 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <X/yE6bxLBpgXtiXy@phenom.ffwll.local>
References: <20210108094340.15290-1-tzimmermann@suse.de>
 <20210108094340.15290-7-tzimmermann@suse.de>
 <X/yEOiDNYmRo+17/@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <X/yEOiDNYmRo+17/@phenom.ffwll.local>
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

T24gTW9uLCBKYW4gMTEsIDIwMjEgYXQgMDY6MDA6NDJQTSArMDEwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBPbiBGcmksIEphbiAwOCwgMjAyMSBhdCAxMDo0MzozM0FNICswMTAwLCBUaG9tYXMg
WmltbWVybWFubiB3cm90ZToKPiA+IERhbWFnZSBoYW5kbGluZyBpbiBjaXJydXMgcmVxdWlyZXMg
YSBzaG9ydC10ZXJtIG1hcHBpbmcgb2YgdGhlIHNvdXJjZQo+ID4gQk8uIFVzZSBkcm1fZ2VtX3No
bWVtX3ZtYXBfbG9jYWwoKS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIFppbW1lcm1h
bm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+Cj4gCj4gSG0gbW9yZSBwb3NzaWJsZSBlcnJvcnMgdGhh
dCB3ZSBkb24ndCByZXBvcnQgdG8gdXNlcnNwYWNlIC4uLiBXaHkgZG9uJ3Qgd2UKPiB2bWFwL3Z1
bm1hcCB0aGVzZSBpbiBwcmVwYXJlL2NsZWFudXBfZmI/IEdlbmVyYWxseSB3ZSdkIHdhbnQgYSBs
b25nLXRlcm0KPiB2bWFwIGhlcmUgdG8gbWFrZSBzdXJlIHRoaXMgYWxsIHdvcmtzIG5pY2VseS4K
PiAKPiBTaW5jZSBpdCdzIG5vdGhpbmcgbmV3LCBvbiB0aGlzIHBhdGNoOgo+IAo+IFJldmlld2Vk
LWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgoKT2ssIGFsc28gc3Ry
aWtlIHRoaXMgci1iIGhlcmUuIFRoaXMgaXMgY2FsbGVkIGZyb20gdGhhdCBhdG9taWMgY29tbWl0
CnBhdGhzLCBhbmQgd2UgY2Fubm90IGNhbGwgZG1hX3Jlc3ZfbG9jayBoZXJlLiBUaGlzIHNob3Vs
ZCBzcGxhdCB3aXRoCmxvY2tkZXAgZW5hYmxlZCBhZ2FpbnN0IHRoZSBkbWEtZmVuY2UgYW5ub3Rh
dGlvbnMgSSd2ZSBtZXJnZWQsIEknbSBraW5kYQpzdXJwcmlzZWQgaXQgZG9lc24ndD8KLURhbmll
bAoKPiAKPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS90aW55L2NpcnJ1cy5jIHwgMTAgKysr
KysrKystLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdGlueS9jaXJydXMuYyBi
L2RyaXZlcnMvZ3B1L2RybS90aW55L2NpcnJ1cy5jCj4gPiBpbmRleCBhMDQzZTYwMjE5OWUuLjIx
Y2Q3MDU2ZDQ1ZiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS90aW55L2NpcnJ1cy5j
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9jaXJydXMuYwo+ID4gQEAgLTMxNSw2ICsz
MTUsNyBAQCBzdGF0aWMgaW50IGNpcnJ1c19mYl9ibGl0X3JlY3Qoc3RydWN0IGRybV9mcmFtZWJ1
ZmZlciAqZmIsCj4gPiAgCQkJICAgICAgIHN0cnVjdCBkcm1fcmVjdCAqcmVjdCkKPiA+ICB7Cj4g
PiAgCXN0cnVjdCBjaXJydXNfZGV2aWNlICpjaXJydXMgPSB0b19jaXJydXMoZmItPmRldik7Cj4g
PiArCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqID0gZmItPm9ialswXTsKPiA+ICAJc3RydWN0
IGRtYV9idWZfbWFwIG1hcDsKPiA+ICAJdm9pZCAqdm1hcDsKPiA+ICAJaW50IGlkeCwgcmV0Owo+
ID4gQEAgLTMyMyw5ICszMjQsMTIgQEAgc3RhdGljIGludCBjaXJydXNfZmJfYmxpdF9yZWN0KHN0
cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLAo+ID4gIAlpZiAoIWRybV9kZXZfZW50ZXIoJmNpcnJ1
cy0+ZGV2LCAmaWR4KSkKPiA+ICAJCWdvdG8gb3V0Owo+ID4gIAo+ID4gLQlyZXQgPSBkcm1fZ2Vt
X3NobWVtX3ZtYXAoZmItPm9ialswXSwgJm1hcCk7Cj4gPiArCXJldCA9IGRtYV9yZXN2X2xvY2so
b2JqLT5yZXN2LCBOVUxMKTsKPiA+ICAJaWYgKHJldCkKPiA+ICAJCWdvdG8gb3V0X2Rldl9leGl0
Owo+ID4gKwlyZXQgPSBkcm1fZ2VtX3NobWVtX3ZtYXBfbG9jYWwoZmItPm9ialswXSwgJm1hcCk7
Cj4gPiArCWlmIChyZXQpCj4gPiArCQlnb3RvIG91dF9kbWFfcmVzdl91bmxvY2s7Cj4gPiAgCXZt
YXAgPSBtYXAudmFkZHI7IC8qIFRPRE86IFVzZSBtYXBwaW5nIGFic3RyYWN0aW9uIHByb3Blcmx5
ICovCj4gPiAgCj4gPiAgCWlmIChjaXJydXMtPmNwcCA9PSBmYi0+Zm9ybWF0LT5jcHBbMF0pCj4g
PiBAQCAtMzQ1LDkgKzM0OSwxMSBAQCBzdGF0aWMgaW50IGNpcnJ1c19mYl9ibGl0X3JlY3Qoc3Ry
dWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsCj4gPiAgCWVsc2UKPiA+ICAJCVdBUk5fT05fT05DRSgi
Y3BwIG1pc21hdGNoIik7Cj4gPiAgCj4gPiAtCWRybV9nZW1fc2htZW1fdnVubWFwKGZiLT5vYmpb
MF0sICZtYXApOwo+ID4gIAlyZXQgPSAwOwo+ID4gIAo+ID4gKwlkcm1fZ2VtX3NobWVtX3Z1bm1h
cF9sb2NhbChvYmosICZtYXApOwo+ID4gK291dF9kbWFfcmVzdl91bmxvY2s6Cj4gPiArCWRtYV9y
ZXN2X3VubG9jayhvYmotPnJlc3YpOwo+ID4gIG91dF9kZXZfZXhpdDoKPiA+ICAJZHJtX2Rldl9l
eGl0KGlkeCk7Cj4gPiAgb3V0Ogo+ID4gLS0gCj4gPiAyLjI5LjIKPiA+IAo+IAo+IC0tIAo+IERh
bmllbCBWZXR0ZXIKPiBTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KPiBodHRw
Oi8vYmxvZy5mZndsbC5jaAoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIElu
dGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
