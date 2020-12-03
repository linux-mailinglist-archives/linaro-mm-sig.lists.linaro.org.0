Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C502CDA1A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Dec 2020 16:26:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 14E24666E6
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Dec 2020 15:26:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 07339666EB; Thu,  3 Dec 2020 15:26:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 926A9666EC;
	Thu,  3 Dec 2020 15:26:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 37D9D666E6
 for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Dec 2020 15:26:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1D3BB666EC; Thu,  3 Dec 2020 15:26:08 +0000 (UTC)
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by lists.linaro.org (Postfix) with ESMTPS id 6CD6A666E6
 for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Dec 2020 15:26:05 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id d3so3075172wmb.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 03 Dec 2020 07:26:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=wM/I8RV7zXyM3w+Dkw/l/K1Ahb7hTXXO2nGI9ZI6qDI=;
 b=NDIb0GJVdNaUEYoVNuEzBbfZ1ivVm1Zy/0dVqTj6fEPIXgmliQDRKnXZ6AnzMdH5eu
 Qu5eXHogT8ZkdL/fJZa2Ijrj5nc8b06Jq9IGlC7sIqYiSarIvWmtnatgnFGXC9KTfhR4
 j1sGM+46yajnOS45dYvlmCS0ixFgETH24FyvLIZ8DEZrjzcEo37PpWeWm3ceYYlBf1ar
 jctwoUqJZb6WJvrotL+9xinqP5KuetJQbXWq/yWSGZ8EF/tYeBCUMU/feZUT93hUrUjj
 ca+gpMQucePi7atJjlHvkcsqPL05HvWOMc5rVbd37iwQ8sJuyj6c6Pl3+D3B0TQ7YeyD
 Gy+Q==
X-Gm-Message-State: AOAM530/2DtlzIGP2y25X3lteRo96krXsiFTvfoOY8YzsmbvalG4x3Qt
 srHQycNGEwJ3UkLNd4SqSzYlfA==
X-Google-Smtp-Source: ABdhPJwVV7mzdVhmNF2JM9gT7DntsOQF8ddieFxeGRPluwW9caDktD7s/Al9byRdu81G0haQqwBfQw==
X-Received: by 2002:a1c:9901:: with SMTP id b1mr3947710wme.18.1607009164432;
 Thu, 03 Dec 2020 07:26:04 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f199sm1915466wme.15.2020.12.03.07.26.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Dec 2020 07:26:03 -0800 (PST)
Date: Thu, 3 Dec 2020 16:26:01 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20201203152601.GB401619@phenom.ffwll.local>
References: <20201203140259.26580-1-tzimmermann@suse.de>
 <20201203140259.26580-8-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201203140259.26580-8-tzimmermann@suse.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 linaro-mm-sig@lists.linaro.org, hdegoede@redhat.com,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch, airlied@redhat.com,
 christian.koenig@amd.com, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v2 7/7] dma-buf: Write down some rules
	for vmap usage
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

T24gVGh1LCBEZWMgMDMsIDIwMjAgYXQgMDM6MDI6NTlQTSArMDEwMCwgVGhvbWFzIFppbW1lcm1h
bm4gd3JvdGU6Cj4gRG1hLWJ1ZidzIHZtYXAgYW5kIHZ1bm1hcCBjYWxsYmFja3MgYXJlIHVuZG9j
dW1lbnRlZCBhbmQgdmFyaW91cwo+IGV4cG9ydGVycyBjdXJyZW50bHkgaGF2ZSBzbGlnaHRseSBk
aWZmZXJlbnQgc2VtYW50aWNzIGZvciB0aGVtLiBBZGQKPiBkb2N1bWVudGF0aW9uIG9uIGhvdyB0
byBpbXBsZW1lbnQgYW5kIHVzZSB0aGVzZSBpbnRlcmZhY2VzIGNvcnJlY3RseS4KPiAKPiB2MjoK
PiAJKiBkb2N1bWVudCB2bWFwIHNlbWFudGljcyBpbiBzdHJ1Y3QgZG1hX2J1Zl9vcHMKPiAJKiBh
ZGQgVE9ETyBpdGVtIGZvciByZXZpZXdpbmcgYW5kIG1heWJlIGZpeGluZyBkbWEtYnVmIGV4cG9y
dGVycwo+IAo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBz
dXNlLmRlPgoKSSBzdGlsbCBkb24ndCB0aGluayB0aGlzIHdvcmtzLCB3ZSdyZSBicmVha2luZyBk
bWFfYnVmX3ZtYXAgZm9yIGV2ZXJ5b25lCmVsc2UgaGVyZS4KCj4gLS0tCj4gIERvY3VtZW50YXRp
b24vZ3B1L3RvZG8ucnN0IHwgMTUgKysrKysrKysrKysrKwo+ICBpbmNsdWRlL2RybS9kcm1fZ2Vt
LmggICAgICB8ICA0ICsrKysKPiAgaW5jbHVkZS9saW51eC9kbWEtYnVmLmggICAgfCA0NSArKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDY0
IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9ncHUvdG9kby5y
c3QgYi9Eb2N1bWVudGF0aW9uL2dwdS90b2RvLnJzdAo+IGluZGV4IDAwOWQ4ZTZjN2UzYy4uMzJi
Yjc5N2E4NGZjIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZ3B1L3RvZG8ucnN0Cj4gKysr
IGIvRG9jdW1lbnRhdGlvbi9ncHUvdG9kby5yc3QKPiBAQCAtNTA1LDYgKzUwNSwyMSBAQCBDb250
YWN0OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4sIENocmlzdGlhbiBL
w7ZuaWcsIERhbmllbCBWZXR0ZQo+ICBMZXZlbDogSW50ZXJtZWRpYXRlCj4gIAo+ICAKPiArRW5m
b3JjZSBydWxlcyBmb3IgZG1hLWJ1ZiB2bWFwIGFuZCBwaW4gb3BzCj4gKy0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICsKPiArRXhwb3J0ZXIgaW1wbGVtZW50YXRp
b25zIG9mIHZtYXAgYW5kIHBpbiBpbiBzdHJ1Y3QgZG1hX2J1Zl9vcHMgKGFuZCBjb25zZXF1ZW50
bHkKPiArc3RydWN0IGRybV9nZW1fb2JqZWN0X2Z1bmNzKSB1c2UgYSB2YXJpZXR5IG9mIGxvY2tp
bmcgc2VtYW50aWNzLiBTb21lIHJlbHkgb24KPiArdGhlIGNhbGxlciBob2xkaW5nIHRoZSBkbWEt
YnVmJ3MgcmVzZXJ2YXRpb24gbG9jaywgc29tZSBkbyB0aGVpciBvd24gbG9ja2luZywKPiArc29t
ZSBkb24ndCByZXF1aXJlIGFueSBsb2NraW5nLiBWUkFNIGhlbHBlcnMgZXZlbiB1c2VkIHRvIHBp
biBhcyBwYXJ0IG9mIHZtYXAuCj4gKwo+ICtXZSBuZWVkIHRvIHJldmlldyBlYWNoIGV4cG9ydGVy
IGFuZCBlbmZvcmNlIHRoZSBkb2N1bWVudGVkIHJ1bGVzLgo+ICsKPiArQ29udGFjdDogQ2hyaXN0
aWFuIEvDtm5pZywgRGFuaWVsIFZldHRlciwgVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5u
QHN1c2UuZGU+Cj4gKwo+ICtMZXZlbDogQWR2YW5jZWQKPiArCj4gKwo+ICBDb3JlIHJlZmFjdG9y
aW5ncwo+ICA9PT09PT09PT09PT09PT09PQo+ICAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0v
ZHJtX2dlbS5oIGIvaW5jbHVkZS9kcm0vZHJtX2dlbS5oCj4gaW5kZXggNWU2ZGFhMWM5ODJmLi4x
ODY0YzZhNzIxYjEgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2dlbS5oCj4gKysrIGIv
aW5jbHVkZS9kcm0vZHJtX2dlbS5oCj4gQEAgLTEzOCw2ICsxMzgsOCBAQCBzdHJ1Y3QgZHJtX2dl
bV9vYmplY3RfZnVuY3Mgewo+ICAJICogZHJtX2dlbV9kbWFidWZfdm1hcCgpIGhlbHBlci4KPiAg
CSAqCj4gIAkgKiBUaGlzIGNhbGxiYWNrIGlzIG9wdGlvbmFsLgo+ICsJICoKPiArCSAqIFNlZSBh
bHNvIHN0cnVjdCBkbWFfYnVmX29wcy52bWFwCj4gIAkgKi8KPiAgCWludCAoKnZtYXApKHN0cnVj
dCBkcm1fZ2VtX29iamVjdCAqb2JqLCBzdHJ1Y3QgZG1hX2J1Zl9tYXAgKm1hcCk7Cj4gIAo+IEBA
IC0xNDgsNiArMTUwLDggQEAgc3RydWN0IGRybV9nZW1fb2JqZWN0X2Z1bmNzIHsKPiAgCSAqIGRy
bV9nZW1fZG1hYnVmX3Z1bm1hcCgpIGhlbHBlci4KPiAgCSAqCj4gIAkgKiBUaGlzIGNhbGxiYWNr
IGlzIG9wdGlvbmFsLgo+ICsJICoKPiArCSAqIFNlZSBhbHNvIHN0cnVjdCBkbWFfYnVmX29wcy52
dW5tYXAKPiAgCSAqLwo+ICAJdm9pZCAoKnZ1bm1hcCkoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpv
YmosIHN0cnVjdCBkbWFfYnVmX21hcCAqbWFwKTsKPiAgCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUv
bGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgKPiBpbmRleCBjZjcyNjk5
Y2IyYmMuLmRjODFmZGMwMWRkYSAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYu
aAo+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oCj4gQEAgLTI2Nyw3ICsyNjcsNTIgQEAg
c3RydWN0IGRtYV9idWZfb3BzIHsKPiAgCSAqLwo+ICAJaW50ICgqbW1hcCkoc3RydWN0IGRtYV9i
dWYgKiwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpOwo+ICAKPiArCS8qKgo+ICsJICogQHZt
YXA6CgpUaGVyZSdzIGFscmVhZHkgYSBAdm1hcCBhbmQgQHZ1bmFtcCBrZXJuZWxkb2MgYXQgdGhl
IHRvcCBjb21tZW50LCB0aGF0Cm5lZWRzIHRvIGJlIHJlbW92ZWQuCi1EYW5pZWwKCj4gKwkgKgo+
ICsJICogUmV0dXJucyBhIHZpcnR1YWwgYWRkcmVzcyBmb3IgdGhlIGJ1ZmZlci4KPiArCSAqCj4g
KwkgKiBOb3RlcyB0byBjYWxsZXJzOgo+ICsJICoKPiArCSAqIC0gQ2FsbGVycyBtdXN0IGhvbGQg
dGhlIHN0cnVjdCBkbWFfYnVmLnJlc3YgbG9jayBiZWZvcmUgY2FsbGluZwo+ICsJICogICB0aGlz
IGludGVyZmFjZS4KPiArCSAqCj4gKwkgKiAtIENhbGxlcnMgbXVzdCBwcm92aWRlIG1lYW5zIHRv
IHByZXZlbnQgdGhlIG1hcHBpbmdzIGZyb20gZ29pbmcKPiArCSAqICAgc3RhbGUsIHN1Y2ggYXMg
aG9sZGluZyB0aGUgcmVzZXJ2YXRpb24gbG9jayBvciBwcm92aWRpbmcgYQo+ICsJICogICBtb3Zl
LW5vdGlmeSBjYWxsYmFjayB0byB0aGUgZXhwb3J0ZXIuCj4gKwkgKgo+ICsJICogTm90ZXMgdG8g
aW1wbGVtZW50b3JzOgo+ICsJICoKPiArCSAqIC0gSW1wbGVtZW50YXRpb25zIG11c3QgZXhwZWN0
IHBhaXJzIG9mIEB2bWFwIGFuZCBAdnVubWFwIHRvIGJlCj4gKwkgKiAgIGNhbGxlZCBmcmVxdWVu
dGx5IGFuZCBzaG91bGQgb3B0aW1pemUgZm9yIHRoaXMgY2FzZS4KPiArCSAqCj4gKwkgKiAtIElt
cGxlbWVudGF0aW9ucyBzaG91bGQgYXZvaWQgYWRkaXRpb25hbCBvcGVyYXRpb25zLCBzdWNoIGFz
Cj4gKwkgKiAgIHBpbm5pbmcuCj4gKwkgKgo+ICsJICogLSBJbXBsZW1lbnRhdGlvbnMgbWF5IGV4
cGVjdCB0aGUgY2FsbGVyIHRvIGhvbGQgdGhlIGRtYS1idWYncwo+ICsJICogICByZXNlcnZhdGlv
biBsb2NrIHRvIHByb3RlY3QgYWdhaW5zdCBjb25jdXJyZW50IGNhbGxzIGFuZAo+ICsJICogICBy
ZWxvY2F0aW9uLgo+ICsJICoKPiArCSAqIC0gSW1wbGVtZW50YXRpb25zIG1heSBwcm92aWRlIGFk
ZGl0aW9uYWwgZ3VhcmFudGVlcywgc3VjaCBhcyB3b3JraW5nCj4gKwkgKiAgIHdpdGhvdXQgaG9s
ZGluZyB0aGUgcmVzZXJ2YXRpb24gbG9jay4KPiArCSAqCj4gKwkgKiBUaGlzIGNhbGxiYWNrIGlz
IG9wdGlvbmFsLgo+ICsJICoKPiArCSAqIFJldHVybnM6Cj4gKwkgKgo+ICsJICogMCBvbiBzdWNj
ZXNzIG9yIGEgbmVnYXRpdmUgZXJyb3IgY29kZSBvbiBmYWlsdXJlLgo+ICsJICovCj4gIAlpbnQg
KCp2bWFwKShzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgZG1hX2J1Zl9tYXAgKm1hcCk7
Cj4gKwo+ICsJLyoqCj4gKwkgKiBAdnVubWFwOgo+ICsJICoKPiArCSAqIFJlbGVhc2VzIHRoZSBh
ZGRyZXNzIHByZXZpb3VzbHkgcmV0dXJuZWQgYnkgQHZtYXAuCj4gKwkgKgo+ICsJICogVGhpcyBj
YWxsYmFjayBpcyBvcHRpb25hbC4KPiArCSAqCj4gKwkgKiBTZWUgYWxzbyBAdm1hcCgpCj4gKwkg
Ki8KPiAgCXZvaWQgKCp2dW5tYXApKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBkbWFf
YnVmX21hcCAqbWFwKTsKPiAgfTsKPiAgCj4gLS0gCj4gMi4yOS4yCj4gCgotLSAKRGFuaWVsIFZl
dHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3
bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
