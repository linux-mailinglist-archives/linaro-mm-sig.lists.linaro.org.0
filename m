Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F842F1BC8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Jan 2021 18:07:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5EE1C61915
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Jan 2021 17:07:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 50771666E8; Mon, 11 Jan 2021 17:07:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A23186189D;
	Mon, 11 Jan 2021 17:06:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 775646013A
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jan 2021 17:06:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5A80E6189D; Mon, 11 Jan 2021 17:06:28 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id 3FC5D6013A
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jan 2021 17:06:27 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id w5so485069wrm.11
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jan 2021 09:06:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=p7Uc2OyCpbZc27r6+RhlQios2u1l6dYrQyaRRy//21k=;
 b=Xsgcjcsshyi1QUsJ7qG8qM48Uh9Y3QGDhP0vpEYj9bGOxLVM+lRGJ3dY1yTJ2AwjTa
 dGwq9ABx3nnVeXK0roY4SnpPcWiLC0P+INjrqHZaUxCnH5U7ck1R/ecajciF2IFsUhTN
 k7tc7Cy9wx+dXJ/4dvSZNNRraCcHg5GtgBoMpSyhJz4n2lpoeNGGEJ/o5BVugKHsHJ+X
 RhrnwWTCLVsmyCQbDJx6tC4lMXzVVhxlm9ro3pucGp6v6IRBvgY5Aa9803mdbyfCB0mM
 qrIPEihDHPpXuc4ZbCSLrnyEVoTPUZWl6aUN/aJDCydum2JcW2iZevnVsNHdfbhusQ24
 dWkQ==
X-Gm-Message-State: AOAM531ELD2vMz5i9EVsiiRCYyc36Q4eXHGjZlrcjbHGSeHUsInHFqi2
 d4zQlIWbWJ29SbZb79ifs/Iipg==
X-Google-Smtp-Source: ABdhPJyegMlvqCqOihCDnGvYO+RAtSicUNBZxCpbQB3gvjm2ZoKp8GO/MFPQDu1494yGCJmdOUhrwg==
X-Received: by 2002:adf:b1ca:: with SMTP id r10mr122544wra.252.1610384786298; 
 Mon, 11 Jan 2021 09:06:26 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r20sm326591wrg.66.2021.01.11.09.06.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Jan 2021 09:06:25 -0800 (PST)
Date: Mon, 11 Jan 2021 18:06:23 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <X/yFj9zIdW52UKk4@phenom.ffwll.local>
References: <20210108094340.15290-1-tzimmermann@suse.de>
 <20210108094340.15290-12-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210108094340.15290-12-tzimmermann@suse.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: eric@anholt.net, sam@ravnborg.org, dri-devel@lists.freedesktop.org,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 christian.koenig@amd.com, linaro-mm-sig@lists.linaro.org, hdegoede@redhat.com,
 kraxel@redhat.com, daniel@ffwll.ch, airlied@redhat.com,
 virtualization@lists.linux-foundation.org, sean@poorly.run,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v4 11/13] drm/vboxvideo: Use
 drm_gem_vram_vmap_local() in cursor update
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

T24gRnJpLCBKYW4gMDgsIDIwMjEgYXQgMTA6NDM6MzhBTSArMDEwMCwgVGhvbWFzIFppbW1lcm1h
bm4gd3JvdGU6Cj4gQ3Vyc29yIHVwZGF0ZXMgaW4gdmJveHZpZGVvIHJlcXVpcmUgYSBzaG9ydC10
ZXJtIG1hcHBpbmcgb2YgdGhlCj4gc291cmNlIEJPLiBVc2UgZHJtX2dlbV92cmFtX3ZtYXBfbG9j
YWwoKSBhbmQgYXZvaWQgdGhlIHBpbm5pbmcKPiBvcGVyYXRpb25zLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgoKQWxsIHRoZXNlIGRy
aXZlcnMgcGF0Y2hlcyBicmVhayB0aGUgZG1hX3Jlc3ZfbG9jayB2cwpkbWFfZmVuY2VfYmVnaW4v
ZW5kX3NpZ25hbGxpbmcgbmVzdGluZyBydWxlcywgc28gdGhpcyBkb2Vzbid0IHdvcmsuCgpHZW5l
cmFsbHkgdGhpcyBpcyB3aGF0IHRoZSBwcmVwYXJlL2NsZWFudXBfZmIgaG9va3MgYXJlIGZvciwg
dGhhdCdzIHdoZXJlCm1hcHBpbmdzIChpbmNsdWRpbmcgdm1hcHMpIGFyZSBtZWFudCB0byBiZSBz
ZXQgdXAsIHBlcm1hbmVudGx5LgoKSSdtIGtpbmRhIG5vdCBjbGVhciBvbiB3aHkgd2UgbmVlZCBh
bGwgdGhlc2UgY2hhbmdlcywgSSB0aG91Z2h0IHRoZQpsb2NraW5nIHByb2JsZW0gaXMganVzdCBp
biB0aGUgZmIgaGVscGVyIHBhdGhzLCBiZWNhdXNlIGl0J3Mgb3V0c2lkZSBvZgp0aGUgYXRvbWlj
IHBhdGggYW5kIGNvdWxkIGNvbmZsaWN0IHdpdGggYW4gYXRvbWljIHVwZGF0ZSBhdCB0aGUgc2Ft
ZSB0aW1lPwpTbyBvbmx5IHRoYXQgb25lIHNob3VsZCBnZXQgdGhlIHZtYXBfbG9jYWwgdHJlYXRt
ZW50LCBldmVyeXRoaW5nIGVsc2UKc2hvdWxkIGtlZXAgdGhlIG5vcm1hbCB2bWFwIHRyZWF0bWVu
dC4KLURhbmllbAo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vdmJveHZpZGVvL3Zib3hfbW9kZS5j
IHwgMTUgKysrKysrKysrLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyks
IDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92Ym94dmlk
ZW8vdmJveF9tb2RlLmMgYi9kcml2ZXJzL2dwdS9kcm0vdmJveHZpZGVvL3Zib3hfbW9kZS5jCj4g
aW5kZXggZGJjMGRkNTNjNjllLi4yMTViMzdjNzhjMTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL3Zib3h2aWRlby92Ym94X21vZGUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS92Ym94
dmlkZW8vdmJveF9tb2RlLmMKPiBAQCAtMzgxLDcgKzM4MSw4IEBAIHN0YXRpYyB2b2lkIHZib3hf
Y3Vyc29yX2F0b21pY191cGRhdGUoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsCj4gIAkJY29udGFp
bmVyX29mKHBsYW5lLT5kZXYsIHN0cnVjdCB2Ym94X3ByaXZhdGUsIGRkZXYpOwo+ICAJc3RydWN0
IHZib3hfY3J0YyAqdmJveF9jcnRjID0gdG9fdmJveF9jcnRjKHBsYW5lLT5zdGF0ZS0+Y3J0Yyk7
Cj4gIAlzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9IHBsYW5lLT5zdGF0ZS0+ZmI7Cj4gLQlz
dHJ1Y3QgZHJtX2dlbV92cmFtX29iamVjdCAqZ2JvID0gZHJtX2dlbV92cmFtX29mX2dlbShmYi0+
b2JqWzBdKTsKPiArCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqID0gZmItPm9ialswXTsKPiAr
CXN0cnVjdCBkcm1fZ2VtX3ZyYW1fb2JqZWN0ICpnYm8gPSBkcm1fZ2VtX3ZyYW1fb2ZfZ2VtKG9i
aik7Cj4gIAl1MzIgd2lkdGggPSBwbGFuZS0+c3RhdGUtPmNydGNfdzsKPiAgCXUzMiBoZWlnaHQg
PSBwbGFuZS0+c3RhdGUtPmNydGNfaDsKPiAgCXNpemVfdCBkYXRhX3NpemUsIG1hc2tfc2l6ZTsK
PiBAQCAtNDAxLDExICs0MDIsMTIgQEAgc3RhdGljIHZvaWQgdmJveF9jdXJzb3JfYXRvbWljX3Vw
ZGF0ZShzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKPiAgCj4gIAl2Ym94X2NydGMtPmN1cnNvcl9l
bmFibGVkID0gdHJ1ZTsKPiAgCj4gLQlyZXQgPSBkcm1fZ2VtX3ZyYW1fdm1hcChnYm8sICZtYXAp
Owo+ICsJcmV0ID0gZG1hX3Jlc3ZfbG9jayhvYmotPnJlc3YsIE5VTEwpOwo+ICsJaWYgKHJldCkK
PiArCQlyZXR1cm47Cj4gKwlyZXQgPSBkcm1fZ2VtX3ZyYW1fdm1hcF9sb2NhbChnYm8sICZtYXAp
Owo+ICAJaWYgKHJldCkgewo+IC0JCS8qCj4gLQkJICogQlVHOiB3ZSBzaG91bGQgaGF2ZSBwaW5u
ZWQgdGhlIEJPIGluIHByZXBhcmVfZmIoKS4KPiAtCQkgKi8KPiArCQlkbWFfcmVzdl91bmxvY2so
b2JqLT5yZXN2KTsKPiAgCQltdXRleF91bmxvY2soJnZib3gtPmh3X211dGV4KTsKPiAgCQlEUk1f
V0FSTigiQ291bGQgbm90IG1hcCBjdXJzb3IgYm8sIHNraXBwaW5nIHVwZGF0ZVxuIik7Cj4gIAkJ
cmV0dXJuOwo+IEBAIC00MjEsNyArNDIzLDggQEAgc3RhdGljIHZvaWQgdmJveF9jdXJzb3JfYXRv
bWljX3VwZGF0ZShzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKPiAgCWRhdGFfc2l6ZSA9IHdpZHRo
ICogaGVpZ2h0ICogNCArIG1hc2tfc2l6ZTsKPiAgCj4gIAljb3B5X2N1cnNvcl9pbWFnZShzcmMs
IHZib3gtPmN1cnNvcl9kYXRhLCB3aWR0aCwgaGVpZ2h0LCBtYXNrX3NpemUpOwo+IC0JZHJtX2dl
bV92cmFtX3Z1bm1hcChnYm8sICZtYXApOwo+ICsJZHJtX2dlbV92cmFtX3Z1bm1hcF9sb2NhbChn
Ym8sICZtYXApOwo+ICsJZG1hX3Jlc3ZfdW5sb2NrKG9iai0+cmVzdik7Cj4gIAo+ICAJZmxhZ3Mg
PSBWQk9YX01PVVNFX1BPSU5URVJfVklTSUJMRSB8IFZCT1hfTU9VU0VfUE9JTlRFUl9TSEFQRSB8
Cj4gIAkJVkJPWF9NT1VTRV9QT0lOVEVSX0FMUEhBOwo+IC0tIAo+IDIuMjkuMgo+IAoKLS0gCkRh
bmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9i
bG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0t
c2lnCg==
