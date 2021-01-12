Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E99272F2AF9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Jan 2021 10:17:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1247266723
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Jan 2021 09:17:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 040A666720; Tue, 12 Jan 2021 09:17:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 04608666E8;
	Tue, 12 Jan 2021 09:17:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5910766627
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Jan 2021 09:17:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 482B6666E8; Tue, 12 Jan 2021 09:17:15 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id 865F966627
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Jan 2021 09:17:13 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id y17so1633951wrr.10
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Jan 2021 01:17:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=BkFPPAMUp2t1YrBY41qrS/Q9HpIRZgTIhFUpfiEfe3I=;
 b=TWFIKmVX0rhUXUGGStCCE3mu5OVqpwY5KM05+j9meW86cIhkpezSMSagKN6NcZ3UMI
 egNJeiTMPgzgSDMrs1YuJgM/c+LYzRI4KAmpadVDXfM5kYSXy4UAkP9+O7YIYkK7Rp2x
 EkhRXtwxTdeUPzhurS8ie+QhlucOwFghF8Clwl8vLK18seb8upZeqkws5KA7QDZl/88F
 XTuZDUSkthJowyvE5n2t7cg+bpniV7cVzcdGMvzlYFh4cgL47PYg+H4i5QsA/Sexz50W
 22yjCiYhbsO/gBd/cuAis3IgMK70NjunLODAH4S3Y1u4Aqb29YuiN8LMkDquLfzHVrvM
 ZSvg==
X-Gm-Message-State: AOAM5310GoEEp0AelCqiYG6Fy8Ga9OJS6aDdH0laat5l8gbI/5G6F0wQ
 xGUFnwJ6fWo/tMDmkYYHnmRmaA==
X-Google-Smtp-Source: ABdhPJx/V56gELooyGmDglikPZdA+XTA2xRFVdYCGu7EQxYoL6V/sTE/BkKNN5kG9dRt4iF6SIVi8g==
X-Received: by 2002:a5d:558a:: with SMTP id i10mr3256036wrv.363.1610443032442; 
 Tue, 12 Jan 2021 01:17:12 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l5sm3810117wrv.44.2021.01.12.01.17.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Jan 2021 01:17:11 -0800 (PST)
Date: Tue, 12 Jan 2021 10:17:09 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <X/1pFaa9I7WFjtJW@phenom.ffwll.local>
References: <20210108094340.15290-1-tzimmermann@suse.de>
 <20210108094340.15290-12-tzimmermann@suse.de>
 <X/yFj9zIdW52UKk4@phenom.ffwll.local>
 <a42dbfad-4280-eeea-5915-71061f732a4a@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a42dbfad-4280-eeea-5915-71061f732a4a@suse.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: eric@anholt.net, sam@ravnborg.org, dri-devel@lists.freedesktop.org,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 christian.koenig@amd.com, linaro-mm-sig@lists.linaro.org, hdegoede@redhat.com,
 kraxel@redhat.com, Daniel Vetter <daniel@ffwll.ch>, airlied@redhat.com,
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

T24gVHVlLCBKYW4gMTIsIDIwMjEgYXQgMDg6NTQ6MDJBTSArMDEwMCwgVGhvbWFzIFppbW1lcm1h
bm4gd3JvdGU6Cj4gSGkKPiAKPiBBbSAxMS4wMS4yMSB1bSAxODowNiBzY2hyaWViIERhbmllbCBW
ZXR0ZXI6Cj4gPiBPbiBGcmksIEphbiAwOCwgMjAyMSBhdCAxMDo0MzozOEFNICswMTAwLCBUaG9t
YXMgWmltbWVybWFubiB3cm90ZToKPiA+ID4gQ3Vyc29yIHVwZGF0ZXMgaW4gdmJveHZpZGVvIHJl
cXVpcmUgYSBzaG9ydC10ZXJtIG1hcHBpbmcgb2YgdGhlCj4gPiA+IHNvdXJjZSBCTy4gVXNlIGRy
bV9nZW1fdnJhbV92bWFwX2xvY2FsKCkgYW5kIGF2b2lkIHRoZSBwaW5uaW5nCj4gPiA+IG9wZXJh
dGlvbnMuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHpp
bW1lcm1hbm5Ac3VzZS5kZT4KPiA+IAo+ID4gQWxsIHRoZXNlIGRyaXZlcnMgcGF0Y2hlcyBicmVh
ayB0aGUgZG1hX3Jlc3ZfbG9jayB2cwo+ID4gZG1hX2ZlbmNlX2JlZ2luL2VuZF9zaWduYWxsaW5n
IG5lc3RpbmcgcnVsZXMsIHNvIHRoaXMgZG9lc24ndCB3b3JrLgo+ID4gCj4gPiBHZW5lcmFsbHkg
dGhpcyBpcyB3aGF0IHRoZSBwcmVwYXJlL2NsZWFudXBfZmIgaG9va3MgYXJlIGZvciwgdGhhdCdz
IHdoZXJlCj4gPiBtYXBwaW5ncyAoaW5jbHVkaW5nIHZtYXBzKSBhcmUgbWVhbnQgdG8gYmUgc2V0
IHVwLCBwZXJtYW5lbnRseS4KPiA+IAo+ID4gSSdtIGtpbmRhIG5vdCBjbGVhciBvbiB3aHkgd2Ug
bmVlZCBhbGwgdGhlc2UgY2hhbmdlcywgSSB0aG91Z2h0IHRoZQo+ID4gbG9ja2luZyBwcm9ibGVt
IGlzIGp1c3QgaW4gdGhlIGZiIGhlbHBlciBwYXRocywgYmVjYXVzZSBpdCdzIG91dHNpZGUgb2YK
PiA+IHRoZSBhdG9taWMgcGF0aCBhbmQgY291bGQgY29uZmxpY3Qgd2l0aCBhbiBhdG9taWMgdXBk
YXRlIGF0IHRoZSBzYW1lIHRpbWU/Cj4gPiBTbyBvbmx5IHRoYXQgb25lIHNob3VsZCBnZXQgdGhl
IHZtYXBfbG9jYWwgdHJlYXRtZW50LCBldmVyeXRoaW5nIGVsc2UKPiA+IHNob3VsZCBrZWVwIHRo
ZSBub3JtYWwgdm1hcCB0cmVhdG1lbnQuCj4gCj4gS2luZCBvZiByZXNwb25kaW5nIHRvIGFsbCB5
b3VyIGNvbW1lbnQgb24gdGhlIGRyaXZlciBjaGFuZ2VzOgo+IAo+IFRoZXNlIGRyaXZlcnMgb25s
eSByZXF1aXJlIHNob3J0LXRlcm0gbWFwcGluZ3MsIHNvIHVzaW5nIHZtYXBfbG9jYWwgd291bGQg
YmUKPiB0aGUgbmF0dXJhbCBjaG9pY2UuIEZvciBTSE1FTSBoZWxwZXJzLCBpdCdzIG1vc3RseSBh
IGNvc21ldGljIHRoaW5nLiBGb3IKPiBWUkFNIGhlbHBlcnMsIEkgd2FzIGhvcGluZyB0byByZW1v
dmUgdGhlIHZtYXAvdnVubWFwIGhlbHBlcnMgZW50aXJlbHkuIE9uZQo+IGNhbm5vdCByZWFsbHkg
bWFwIHRoZSBCT3MgZm9yIHRoZSBsb25nLXRlcm0sIHNvIG5vdCBoYXZpbmcgdGhlIGhlbHBlcnMg
YXQKPiBhbGwgd291bGQgbWFrZSBzZW5zZS4KPiAKPiBCdXQgcmVhZGluZyBhbGwgeW91ciBjb21t
ZW50cyBvbiB0aGUgZHJpdmVyIHBhdGNoZXMsIEknZCByYXRoZXIgbm90IHVwZGF0ZQo+IHRoZSBk
cml2ZXJzIGhlcmUgYnV0IGxhdGVyIGNvbnZlcnQgdGhlbSB0byB1c2UgcHJlcGFyZV9mYi9jbGVh
bnVwX2ZiIGluIHRoZQo+IGNvcnJlY3Qgd2F5LgoKQWNrIGZyb20gbWUgb24gdGhpcyBwbGFuLiBJ
IHRoaW5rIEkgZ290IGFsbCB0aGUgb3RoZXIgcGF0Y2hlcyB3aXRoIGFuIHItYgpvciBhY2s/Ci1E
YW5pZWwKCj4gCj4gQmVzdCByZWdhcmRzCj4gVGhvbWFzCj4gCj4gPiAtRGFuaWVsCj4gPiA+IC0t
LQo+ID4gPiAgIGRyaXZlcnMvZ3B1L2RybS92Ym94dmlkZW8vdmJveF9tb2RlLmMgfCAxNSArKysr
KysrKystLS0tLS0KPiA+ID4gICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA2IGRl
bGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92Ym94
dmlkZW8vdmJveF9tb2RlLmMgYi9kcml2ZXJzL2dwdS9kcm0vdmJveHZpZGVvL3Zib3hfbW9kZS5j
Cj4gPiA+IGluZGV4IGRiYzBkZDUzYzY5ZS4uMjE1YjM3Yzc4YzEwIDEwMDY0NAo+ID4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vdmJveHZpZGVvL3Zib3hfbW9kZS5jCj4gPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS92Ym94dmlkZW8vdmJveF9tb2RlLmMKPiA+ID4gQEAgLTM4MSw3ICszODEsOCBA
QCBzdGF0aWMgdm9pZCB2Ym94X2N1cnNvcl9hdG9taWNfdXBkYXRlKHN0cnVjdCBkcm1fcGxhbmUg
KnBsYW5lLAo+ID4gPiAgIAkJY29udGFpbmVyX29mKHBsYW5lLT5kZXYsIHN0cnVjdCB2Ym94X3By
aXZhdGUsIGRkZXYpOwo+ID4gPiAgIAlzdHJ1Y3QgdmJveF9jcnRjICp2Ym94X2NydGMgPSB0b192
Ym94X2NydGMocGxhbmUtPnN0YXRlLT5jcnRjKTsKPiA+ID4gICAJc3RydWN0IGRybV9mcmFtZWJ1
ZmZlciAqZmIgPSBwbGFuZS0+c3RhdGUtPmZiOwo+ID4gPiAtCXN0cnVjdCBkcm1fZ2VtX3ZyYW1f
b2JqZWN0ICpnYm8gPSBkcm1fZ2VtX3ZyYW1fb2ZfZ2VtKGZiLT5vYmpbMF0pOwo+ID4gPiArCXN0
cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqID0gZmItPm9ialswXTsKPiA+ID4gKwlzdHJ1Y3QgZHJt
X2dlbV92cmFtX29iamVjdCAqZ2JvID0gZHJtX2dlbV92cmFtX29mX2dlbShvYmopOwo+ID4gPiAg
IAl1MzIgd2lkdGggPSBwbGFuZS0+c3RhdGUtPmNydGNfdzsKPiA+ID4gICAJdTMyIGhlaWdodCA9
IHBsYW5lLT5zdGF0ZS0+Y3J0Y19oOwo+ID4gPiAgIAlzaXplX3QgZGF0YV9zaXplLCBtYXNrX3Np
emU7Cj4gPiA+IEBAIC00MDEsMTEgKzQwMiwxMiBAQCBzdGF0aWMgdm9pZCB2Ym94X2N1cnNvcl9h
dG9taWNfdXBkYXRlKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLAo+ID4gPiAgIAl2Ym94X2NydGMt
PmN1cnNvcl9lbmFibGVkID0gdHJ1ZTsKPiA+ID4gLQlyZXQgPSBkcm1fZ2VtX3ZyYW1fdm1hcChn
Ym8sICZtYXApOwo+ID4gPiArCXJldCA9IGRtYV9yZXN2X2xvY2sob2JqLT5yZXN2LCBOVUxMKTsK
PiA+ID4gKwlpZiAocmV0KQo+ID4gPiArCQlyZXR1cm47Cj4gPiA+ICsJcmV0ID0gZHJtX2dlbV92
cmFtX3ZtYXBfbG9jYWwoZ2JvLCAmbWFwKTsKPiA+ID4gICAJaWYgKHJldCkgewo+ID4gPiAtCQkv
Kgo+ID4gPiAtCQkgKiBCVUc6IHdlIHNob3VsZCBoYXZlIHBpbm5lZCB0aGUgQk8gaW4gcHJlcGFy
ZV9mYigpLgo+ID4gPiAtCQkgKi8KPiA+ID4gKwkJZG1hX3Jlc3ZfdW5sb2NrKG9iai0+cmVzdik7
Cj4gPiA+ICAgCQltdXRleF91bmxvY2soJnZib3gtPmh3X211dGV4KTsKPiA+ID4gICAJCURSTV9X
QVJOKCJDb3VsZCBub3QgbWFwIGN1cnNvciBibywgc2tpcHBpbmcgdXBkYXRlXG4iKTsKPiA+ID4g
ICAJCXJldHVybjsKPiA+ID4gQEAgLTQyMSw3ICs0MjMsOCBAQCBzdGF0aWMgdm9pZCB2Ym94X2N1
cnNvcl9hdG9taWNfdXBkYXRlKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLAo+ID4gPiAgIAlkYXRh
X3NpemUgPSB3aWR0aCAqIGhlaWdodCAqIDQgKyBtYXNrX3NpemU7Cj4gPiA+ICAgCWNvcHlfY3Vy
c29yX2ltYWdlKHNyYywgdmJveC0+Y3Vyc29yX2RhdGEsIHdpZHRoLCBoZWlnaHQsIG1hc2tfc2l6
ZSk7Cj4gPiA+IC0JZHJtX2dlbV92cmFtX3Z1bm1hcChnYm8sICZtYXApOwo+ID4gPiArCWRybV9n
ZW1fdnJhbV92dW5tYXBfbG9jYWwoZ2JvLCAmbWFwKTsKPiA+ID4gKwlkbWFfcmVzdl91bmxvY2so
b2JqLT5yZXN2KTsKPiA+ID4gICAJZmxhZ3MgPSBWQk9YX01PVVNFX1BPSU5URVJfVklTSUJMRSB8
IFZCT1hfTU9VU0VfUE9JTlRFUl9TSEFQRSB8Cj4gPiA+ICAgCQlWQk9YX01PVVNFX1BPSU5URVJf
QUxQSEE7Cj4gPiA+IC0tIAo+ID4gPiAyLjI5LjIKPiA+ID4gCj4gPiAKPiAKPiAtLSAKPiBUaG9t
YXMgWmltbWVybWFubgo+IEdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXIKPiBTVVNFIFNvZnR3YXJl
IFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKPiBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcs
IEdlcm1hbnkKPiAoSFJCIDM2ODA5LCBBRyBOw7xybmJlcmcpCj4gR2VzY2jDpGZ0c2bDvGhyZXI6
IEZlbGl4IEltZW5kw7ZyZmZlcgo+IAoKCgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5n
aW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
