Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E542F1B8B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Jan 2021 17:54:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C51E618C2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Jan 2021 16:54:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 40D1561915; Mon, 11 Jan 2021 16:54:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 37D19618B2;
	Mon, 11 Jan 2021 16:53:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9B7566167C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jan 2021 16:53:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8E35D618B2; Mon, 11 Jan 2021 16:53:46 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by lists.linaro.org (Postfix) with ESMTPS id 5FDC06167C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jan 2021 16:53:45 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id a6so413396wmc.2
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jan 2021 08:53:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BKC0evkXZWcyXdGHOdDWdLxv+2YIG23jjrv2ITmXGIQ=;
 b=PdCN572SaMeR8SBLQIVIcMhaYidIPjQtgtWgUHTnqcLxUF9+GYZMPtCybHs+nldl6y
 6ozuoZo3LmsuVjYcGJZbjM7VQG6BYOqYclePw4OfDljgc3jkVdGFTTei/rQ9Cq0SPShr
 apndRNOD5mXFKm6MxX06cP8it4qXTXqAIp5O9xnYX5KMzIe7VQXP8Ae1hhyP6exCUBjj
 Gwtu0Jx9JXEH2XwHC1D0mq0KMeN/qwOVO98joji8eOaMvGKfguZL5cmo8aWbx0rE2Fwh
 oAI1qLvu3T7bQPHQDYVO33mZLrJAGf5/xPD2+j8xGzGkKhtilpdh4ieEWdJFQPa1aSx5
 8hEA==
X-Gm-Message-State: AOAM531iulUl+fROgWVBZfJwqweP0hDBtxmFs4+BtwpVVnubimCguaPq
 DLp9r7FAacEnD1YMHg/tz0xY5w==
X-Google-Smtp-Source: ABdhPJyVeudWNsRG/VKpD0MFuEfV8F2YrsSfFQ/sscFBJ0jdG0Vu75xdwPKdNjqVKbdnVXqp/usYtQ==
X-Received: by 2002:a1c:2182:: with SMTP id h124mr545791wmh.25.1610384024539; 
 Mon, 11 Jan 2021 08:53:44 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u83sm440737wmu.12.2021.01.11.08.53.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Jan 2021 08:53:43 -0800 (PST)
Date: Mon, 11 Jan 2021 17:53:41 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <X/yClQZQ0B5AMfEP@phenom.ffwll.local>
References: <20210108094340.15290-1-tzimmermann@suse.de>
 <20210108094340.15290-6-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210108094340.15290-6-tzimmermann@suse.de>
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

T24gRnJpLCBKYW4gMDgsIDIwMjEgYXQgMTA6NDM6MzJBTSArMDEwMCwgVGhvbWFzIFppbW1lcm1h
bm4gd3JvdGU6Cj4gRGFtYWdlIGhhbmRsaW5nIGluIG1nYWcyMDAgcmVxdWlyZXMgYSBzaG9ydC10
ZXJtIG1hcHBpbmcgb2YgdGhlIHNvdXJjZQo+IEJPLiBVc2UgZHJtX2dlbV9zaG1lbV92bWFwX2xv
Y2FsKCkuCj4gCj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5u
QHN1c2UuZGU+CgpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZnds
bC5jaD4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9tZ2FnMjAwL21nYWcyMDBfbW9kZS5jIHwg
MTYgKysrKysrKysrKysrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwg
MyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21nYWcyMDAv
bWdhZzIwMF9tb2RlLmMgYi9kcml2ZXJzL2dwdS9kcm0vbWdhZzIwMC9tZ2FnMjAwX21vZGUuYwo+
IGluZGV4IDFkZmM0MjE3MDA1OS4uYTMzZTI4ZDRjNWU5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9tZ2FnMjAwL21nYWcyMDBfbW9kZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21n
YWcyMDAvbWdhZzIwMF9tb2RlLmMKPiBAQCAtMTU1MiwyMiArMTU1MiwzMiBAQCBtZ2FnMjAwX2hh
bmRsZV9kYW1hZ2Uoc3RydWN0IG1nYV9kZXZpY2UgKm1kZXYsIHN0cnVjdCBkcm1fZnJhbWVidWZm
ZXIgKmZiLAo+ICAJCSAgICAgIHN0cnVjdCBkcm1fcmVjdCAqY2xpcCkKPiAgewo+ICAJc3RydWN0
IGRybV9kZXZpY2UgKmRldiA9ICZtZGV2LT5iYXNlOwo+ICsJc3RydWN0IGRybV9nZW1fb2JqZWN0
ICpvYmogPSBmYi0+b2JqWzBdOwo+ICAJc3RydWN0IGRtYV9idWZfbWFwIG1hcDsKPiAgCXZvaWQg
KnZtYXA7Cj4gIAlpbnQgcmV0Owo+ICAKPiAtCXJldCA9IGRybV9nZW1fc2htZW1fdm1hcChmYi0+
b2JqWzBdLCAmbWFwKTsKPiArCXJldCA9IGRtYV9yZXN2X2xvY2sob2JqLT5yZXN2LCBOVUxMKTsK
PiAgCWlmIChkcm1fV0FSTl9PTihkZXYsIHJldCkpCj4gLQkJcmV0dXJuOyAvKiBCVUc6IFNITUVN
IEJPIHNob3VsZCBhbHdheXMgYmUgdm1hcHBlZCAqLwo+ICsJCXJldHVybjsKPiArCXJldCA9IGRy
bV9nZW1fc2htZW1fdm1hcF9sb2NhbChvYmosICZtYXApOwo+ICsJaWYgKGRybV9XQVJOX09OKGRl
diwgcmV0KSkKPiArCQlnb3RvIGVycl9kbWFfcmVzdl91bmxvY2s7IC8qIEJVRzogU0hNRU0gQk8g
c2hvdWxkIGFsd2F5cyBiZSB2bWFwcGVkICovCj4gIAl2bWFwID0gbWFwLnZhZGRyOyAvKiBUT0RP
OiBVc2UgbWFwcGluZyBhYnN0cmFjdGlvbiBwcm9wZXJseSAqLwo+ICAKPiAgCWRybV9mYl9tZW1j
cHlfZHN0Y2xpcChtZGV2LT52cmFtLCB2bWFwLCBmYiwgY2xpcCk7Cj4gIAo+IC0JZHJtX2dlbV9z
aG1lbV92dW5tYXAoZmItPm9ialswXSwgJm1hcCk7Cj4gKwlkcm1fZ2VtX3NobWVtX3Z1bm1hcF9s
b2NhbChvYmosICZtYXApOwo+ICsJZG1hX3Jlc3ZfdW5sb2NrKG9iai0+cmVzdik7Cj4gIAo+ICAJ
LyogQWx3YXlzIHNjYW5vdXQgaW1hZ2UgYXQgVlJBTSBvZmZzZXQgMCAqLwo+ICAJbWdhZzIwMF9z
ZXRfc3RhcnRhZGQobWRldiwgKHUzMikwKTsKPiAgCW1nYWcyMDBfc2V0X29mZnNldChtZGV2LCBm
Yik7Cj4gKwo+ICsJcmV0dXJuOwo+ICsKPiArZXJyX2RtYV9yZXN2X3VubG9jazoKPiArCWRtYV9y
ZXN2X3VubG9jayhvYmotPnJlc3YpOwo+ICB9Cj4gIAo+ICBzdGF0aWMgdm9pZAo+IC0tIAo+IDIu
MjkuMgo+IAoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBv
cmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
