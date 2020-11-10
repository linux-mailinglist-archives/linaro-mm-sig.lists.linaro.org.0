Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 403EE2AE31D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 23:18:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5DED9665F2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 22:18:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 52CF1665F3; Tue, 10 Nov 2020 22:18:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C7108665E9;
	Tue, 10 Nov 2020 22:17:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0FD396192C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 22:17:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E9702665E9; Tue, 10 Nov 2020 22:17:27 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 697E86192C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 22:17:26 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id c17so14403479wrc.11
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 14:17:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PybHYHD7oH2aLnG+yvTddEPZqr7VRvhfNzCANa+XKfA=;
 b=mCJzsnpJBmgm2DUuvAthNqdYtJ1g0uTeHh0ZgFQgGoGodPen+6Xx40OYD43GhmYhRf
 w62Iu8gFUfsMk0ZKKk1qbogSQSZIMZpGlXcfVLfb8Lxn8Jwv71HvSHlR/yve0FyD8UeG
 bzWe/2LcbMNbSB1Gm/y774zjOKZVW3omx8AgWxBBOmm0wecwOyQZ6/oO+5bAB/yKLeY9
 UHqU7pAENZtGJPHkJIeFR6c+8ivhXYPPP/5bQyW4+sDZbIhp57fMl0SFupdT0KSkRsIM
 8qOErzWS0wPEHozezE/eXfV4kWKSOFEM9UY7CDXeAyIVJyyC3iQUJBDDCZ+0zIQpTCrv
 3nDA==
X-Gm-Message-State: AOAM531n79KNdaeO+llUPgIvfm4e/U7RnJq2Kl7AVmsNiBZTme1dZEST
 DEgnkAzxcWRUA5+E+LXR3LPCMdK5NDgnN7XlDYU=
X-Google-Smtp-Source: ABdhPJxh2GeljpewW2T0ti487h5NvVsa43l5KqIELZfR5hDC7Aj0bILRpfkBVbdUXZQrjDANOnsCVpXmp8jNi1eT12o=
X-Received: by 2002:adf:e9c9:: with SMTP id l9mr27815711wrn.124.1605046645534; 
 Tue, 10 Nov 2020 14:17:25 -0800 (PST)
MIME-Version: 1.0
References: <20201109211855.3340030-1-lee.jones@linaro.org>
 <20201109211855.3340030-12-lee.jones@linaro.org>
In-Reply-To: <20201109211855.3340030-12-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 10 Nov 2020 17:17:13 -0500
Message-ID: <CADnq5_MJQExKjyigHaYc4Vqy7H755qQC80Y7uSqxBPdR41B1cQ@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 11/20] drm/radeon/r600: Strip out set
	but unused 'tmp' variables
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

T24gTW9uLCBOb3YgOSwgMjAyMCBhdCA0OjE5IFBNIExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFy
by5vcmc+IHdyb3RlOgo+Cj4gRml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdh
cm5pbmcocyk6Cj4KPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yNjAwLmM6IEluIGZ1bmN0aW9u
IOKAmHI2MDBfcGNpZV9nYXJ0X3RsYl9mbHVzaOKAmToKPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVv
bi9yNjAwLmM6MTA4Mzo3OiB3YXJuaW5nOiB2YXJpYWJsZSDigJh0bXDigJkgc2V0IGJ1dCBub3Qg
dXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVv
bi9yNjAwLmM6IEF0IHRvcCBsZXZlbDoKPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yNjAwLmM6
IEluIGZ1bmN0aW9uIOKAmHI2MDBfbW1pb19oZHBfZmx1c2jigJk6Cj4gIGRyaXZlcnMvZ3B1L2Ry
bS9yYWRlb24vcjYwMC5jOjQzOTM6Nzogd2FybmluZzogdmFyaWFibGUg4oCYdG1w4oCZIHNldCBi
dXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCj4KPiBDYzogQWxleCBEZXVj
aGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPgo+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxp
bnV4LmllPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj4gQ2M6IFN1bWl0
IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gQ2M6IGFtZC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzog
bGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwo+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+
CgpBcHBsaWVkLiAgVGhhbmtzIQoKQWxleAoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVv
bi9yNjAwLmMgfCA2ICsrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcjYw
MC5jIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yNjAwLmMKPiBpbmRleCBkOWEzM2NhNzY4ZjM0
Li42ZTc4MGIwMTA5OTk1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcjYw
MC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yNjAwLmMKPiBAQCAtMTA4MCw3ICsx
MDgwLDYgQEAgdm9pZCByNjAwX3BjaWVfZ2FydF90bGJfZmx1c2goc3RydWN0IHJhZGVvbl9kZXZp
Y2UgKnJkZXYpCj4gICAgICAgICBpZiAoKHJkZXYtPmZhbWlseSA+PSBDSElQX1JWNzcwKSAmJiAo
cmRldi0+ZmFtaWx5IDw9IENISVBfUlY3NDApICYmCj4gICAgICAgICAgICAgIShyZGV2LT5mbGFn
cyAmIFJBREVPTl9JU19BR1ApKSB7Cj4gICAgICAgICAgICAgICAgIHZvaWQgX19pb21lbSAqcHRy
ID0gKHZvaWQgKilyZGV2LT5nYXJ0LnB0cjsKPiAtICAgICAgICAgICAgICAgdTMyIHRtcDsKPgo+
ICAgICAgICAgICAgICAgICAvKiByN3h4IGh3IGJ1Zy4gIHdyaXRlIHRvIEhEUF9ERUJVRzEgZm9s
bG93ZWQgYnkgZmIgcmVhZAo+ICAgICAgICAgICAgICAgICAgKiByYXRoZXIgdGhhbiB3cml0ZSB0
byBIRFBfUkVHX0NPSEVSRU5DWV9GTFVTSF9DTlRMCj4gQEAgLTEwODgsNyArMTA4Nyw3IEBAIHZv
aWQgcjYwMF9wY2llX2dhcnRfdGxiX2ZsdXNoKHN0cnVjdCByYWRlb25fZGV2aWNlICpyZGV2KQo+
ICAgICAgICAgICAgICAgICAgKiBtZXRob2QgZm9yIHRoZW0uCj4gICAgICAgICAgICAgICAgICAq
Lwo+ICAgICAgICAgICAgICAgICBXUkVHMzIoSERQX0RFQlVHMSwgMCk7Cj4gLSAgICAgICAgICAg
ICAgIHRtcCA9IHJlYWRsKCh2b2lkIF9faW9tZW0gKilwdHIpOwo+ICsgICAgICAgICAgICAgICBy
ZWFkbCgodm9pZCBfX2lvbWVtICopcHRyKTsKPiAgICAgICAgIH0gZWxzZQo+ICAgICAgICAgICAg
ICAgICBXUkVHMzIoUl8wMDU0ODBfSERQX01FTV9DT0hFUkVOQ1lfRkxVU0hfQ05UTCwgMHgxKTsK
Pgo+IEBAIC00MzkwLDEwICs0Mzg5LDkgQEAgdm9pZCByNjAwX21taW9faGRwX2ZsdXNoKHN0cnVj
dCByYWRlb25fZGV2aWNlICpyZGV2KQo+ICAgICAgICAgaWYgKChyZGV2LT5mYW1pbHkgPj0gQ0hJ
UF9SVjc3MCkgJiYgKHJkZXYtPmZhbWlseSA8PSBDSElQX1JWNzQwKSAmJgo+ICAgICAgICAgICAg
IHJkZXYtPnZyYW1fc2NyYXRjaC5wdHIgJiYgIShyZGV2LT5mbGFncyAmIFJBREVPTl9JU19BR1Ap
KSB7Cj4gICAgICAgICAgICAgICAgIHZvaWQgX19pb21lbSAqcHRyID0gKHZvaWQgKilyZGV2LT52
cmFtX3NjcmF0Y2gucHRyOwo+IC0gICAgICAgICAgICAgICB1MzIgdG1wOwo+Cj4gICAgICAgICAg
ICAgICAgIFdSRUczMihIRFBfREVCVUcxLCAwKTsKPiAtICAgICAgICAgICAgICAgdG1wID0gcmVh
ZGwoKHZvaWQgX19pb21lbSAqKXB0cik7Cj4gKyAgICAgICAgICAgICAgIHJlYWRsKCh2b2lkIF9f
aW9tZW0gKilwdHIpOwo+ICAgICAgICAgfSBlbHNlCj4gICAgICAgICAgICAgICAgIFdSRUczMihS
XzAwNTQ4MF9IRFBfTUVNX0NPSEVSRU5DWV9GTFVTSF9DTlRMLCAweDEpOwo+ICB9Cj4gLS0KPiAy
LjI1LjEKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1k
ZXZlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
