Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 538A32F1BB1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Jan 2021 18:02:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 580D3618C2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Jan 2021 17:02:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4B7E16671D; Mon, 11 Jan 2021 17:02:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 24D61618C2;
	Mon, 11 Jan 2021 17:01:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2CD3C6189D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jan 2021 17:01:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 19B986671D; Mon, 11 Jan 2021 17:01:26 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by lists.linaro.org (Postfix) with ESMTPS id 9C79B6189D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jan 2021 17:01:07 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id r4so535846wmh.5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jan 2021 09:01:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=h0Vcdr3u2Wixid8zktcI7cI+5TKj52I2FHlTJKRSBHc=;
 b=d50GNv5LKBPCgtuj2Li/+oLL+6DyCqRpePERixBa8gTH8g0TIAmAXHBcaOXFi77/2/
 ImBwE6YlNNrZ4KgbqEzVw3DfVM4GCoYA2rgBhOCZ7hsh5BYimW2encdT1m/6/67v16G3
 qWT41CBDcR3nUMbI/0Z8EnhYHSlve3RGjbUjsPoEaHzkztnuKpaBPOrawygkANfOE/il
 3FbvG4ityB6vZL/UWOf6Ce2MLjQJ1p7VLkBxrJQE01Gw2Py3N/yNnzysEeuZwKnUVKDW
 NweRLx7xPQ+hSuwPdN2Ur8H4jU/UwzonXgmSAiH+alctO9XJjx99LqYBw9xk1bWRACVK
 2XZw==
X-Gm-Message-State: AOAM532LGuOnoGc2ww9B2VRmfVRgY97G99nkdhI8ABPHaXMIAlDCzlrY
 FF0Tuj6uth+s/SyjxmXh9EI1GQ==
X-Google-Smtp-Source: ABdhPJwL/K8/fonepgQIrr8Jh7d27AlEEHxuAM3nq6S2KLm42gWIC6KhBdKdioyLbnmUAZH47MqlaQ==
X-Received: by 2002:a7b:c3c8:: with SMTP id t8mr577402wmj.88.1610384466811;
 Mon, 11 Jan 2021 09:01:06 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b12sm431296wmj.2.2021.01.11.09.01.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Jan 2021 09:01:06 -0800 (PST)
Date: Mon, 11 Jan 2021 18:01:04 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <X/yEUPX+H66Q129T@phenom.ffwll.local>
References: <20210108094340.15290-1-tzimmermann@suse.de>
 <20210108094340.15290-8-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210108094340.15290-8-tzimmermann@suse.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: eric@anholt.net, sam@ravnborg.org, dri-devel@lists.freedesktop.org,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 christian.koenig@amd.com, linaro-mm-sig@lists.linaro.org, hdegoede@redhat.com,
 kraxel@redhat.com, daniel@ffwll.ch, airlied@redhat.com,
 virtualization@lists.linux-foundation.org, sean@poorly.run,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v4 07/13] drm/gm12u320: Use
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

T24gRnJpLCBKYW4gMDgsIDIwMjEgYXQgMTA6NDM6MzRBTSArMDEwMCwgVGhvbWFzIFppbW1lcm1h
bm4gd3JvdGU6Cj4gRGFtYWdlIGhhbmRsaW5nIGluIGdtMTJ1MzIwIHJlcXVpcmVzIGEgc2hvcnQt
dGVybSBtYXBwaW5nIG9mIHRoZSBzb3VyY2UKPiBCTy4gVXNlIGRybV9nZW1fc2htZW1fdm1hcF9s
b2NhbCgpLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFu
bkBzdXNlLmRlPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vdGlueS9nbTEydTMyMC5jIHwgMTQg
KysrKysrKysrKystLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90aW55L2dtMTJ1MzIw
LmMgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9nbTEydTMyMC5jCj4gaW5kZXggMzNmNjVmNDYyNmU1
Li5iMGM2ZTM1MGYyYjMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3RpbnkvZ20xMnUz
MjAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90aW55L2dtMTJ1MzIwLmMKPiBAQCAtMjY1LDEx
ICsyNjUsMTYgQEAgc3RhdGljIHZvaWQgZ20xMnUzMjBfY29weV9mYl90b19ibG9ja3Moc3RydWN0
IGdtMTJ1MzIwX2RldmljZSAqZ20xMnUzMjApCj4gIAl5MSA9IGdtMTJ1MzIwLT5mYl91cGRhdGUu
cmVjdC55MTsKPiAgCXkyID0gZ20xMnUzMjAtPmZiX3VwZGF0ZS5yZWN0LnkyOwo+ICAKPiAtCXJl
dCA9IGRybV9nZW1fc2htZW1fdm1hcChmYi0+b2JqWzBdLCAmbWFwKTsKPiArCXJldCA9IGRtYV9y
ZXN2X2xvY2soZmItPm9ialswXS0+cmVzdiwgTlVMTCk7Cj4gIAlpZiAocmV0KSB7Cj4gLQkJR00x
MlUzMjBfRVJSKCJmYWlsZWQgdG8gdm1hcCBmYjogJWRcbiIsIHJldCk7Cj4gKwkJR00xMlUzMjBf
RVJSKCJmYWlsZWQgdG8gcmVzZXJ2ZSBmYjogJWRcbiIsIHJldCk7Cj4gIAkJZ290byBwdXRfZmI7
Cj4gIAl9Cj4gKwlyZXQgPSBkcm1fZ2VtX3NobWVtX3ZtYXBfbG9jYWwoZmItPm9ialswXSwgJm1h
cCk7Cj4gKwlpZiAocmV0KSB7Cj4gKwkJR00xMlUzMjBfRVJSKCJmYWlsZWQgdG8gdm1hcCBmYjog
JWRcbiIsIHJldCk7Cj4gKwkJZ290byB1bmxvY2tfcmVzdjsKPiArCX0KPiAgCXZhZGRyID0gbWFw
LnZhZGRyOyAvKiBUT0RPOiBVc2UgbWFwcGluZyBhYnN0cmFjdGlvbiBwcm9wZXJseSAqLwo+ICAK
PiAgCWlmIChmYi0+b2JqWzBdLT5pbXBvcnRfYXR0YWNoKSB7Cj4gQEAgLTMyMSw4ICszMjYsMTEg
QEAgc3RhdGljIHZvaWQgZ20xMnUzMjBfY29weV9mYl90b19ibG9ja3Moc3RydWN0IGdtMTJ1MzIw
X2RldmljZSAqZ20xMnUzMjApCj4gIAkJaWYgKHJldCkKPiAgCQkJR00xMlUzMjBfRVJSKCJkbWFf
YnVmX2VuZF9jcHVfYWNjZXNzIGVycjogJWRcbiIsIHJldCk7Cj4gIAl9Cj4gKwo+ICt1bmxvY2tf
cmVzdjoKPiArCWRtYV9yZXN2X3VubG9jayhmYi0+b2JqWzBdLT5yZXN2KTsKClVubG9jayBiZWZv
cmUgdnVubWFwLgotRGFuaWVsCgo+ICB2dW5tYXA6Cj4gLQlkcm1fZ2VtX3NobWVtX3Z1bm1hcChm
Yi0+b2JqWzBdLCAmbWFwKTsKPiArCWRybV9nZW1fc2htZW1fdnVubWFwX2xvY2FsKGZiLT5vYmpb
MF0sICZtYXApOwo+ICBwdXRfZmI6Cj4gIAlkcm1fZnJhbWVidWZmZXJfcHV0KGZiKTsKPiAgCWdt
MTJ1MzIwLT5mYl91cGRhdGUuZmIgPSBOVUxMOwo+IC0tIAo+IDIuMjkuMgo+IAoKLS0gCkRhbmll
bCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9n
LmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==
