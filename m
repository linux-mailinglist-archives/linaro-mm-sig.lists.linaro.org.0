Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FCE3662D5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Apr 2021 02:03:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C43086684F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Apr 2021 00:03:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B585E66855; Wed, 21 Apr 2021 00:03:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A33AA66850;
	Wed, 21 Apr 2021 00:03:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 442DC6684D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Apr 2021 00:03:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 354FD66850; Wed, 21 Apr 2021 00:03:16 +0000 (UTC)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
 [209.85.167.181])
 by lists.linaro.org (Postfix) with ESMTPS id 9F3286684D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Apr 2021 00:03:14 +0000 (UTC)
Received: by mail-oi1-f181.google.com with SMTP id i81so40756247oif.6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 17:03:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Bzy1XVE3pX0bVpKOU6c03egp1B/YRIMRasUEXcl28pk=;
 b=RAA4hWSML//mkZiqo7a32vbCs/EeBP6DaRXsvndBKPFDkZUscWowjwITSf5MdU5Igp
 adubf2U5jqbIrne7hHZpxyUzdH5V51W/kCs6FXDvIXwdhjjbw1JHjcL0/n54HKrGYoqG
 2QgmgUBuJtgbE/FPS5MOEZqzWzuZOpRzXIXbxvpnSiAJ+d7x5KgJytH2NIDt9riOZYGZ
 mArQXNxvaoIyPP1MFGMFKQ8AnuimkPTjR3SUzpGYBxUBZ9viX2gHMQ1SzcA1DziCTfXb
 F7bSkRcrdtzWVZzeYhyX1UfFrUrrLBscX6chlSMIRtY0A9U9Mp71GpaQ0ZwwvD+VwVfb
 ZEZQ==
X-Gm-Message-State: AOAM532aNFyDmcMwqcwc1oNXEPNXJ1Bqp74HpHy1Tcx3V1jy1hKhRc67
 otNv+JQAzaOheIh7hKifdzH7kxjWnhmmm8IzIy0=
X-Google-Smtp-Source: ABdhPJy+DqK7M4J1LuG62c3cPuiea8egSrJJt94kyNl27+TAnlda55H4l4jGWLJr2QzKApIH+mn+qXtI134+dclonow=
X-Received: by 2002:a05:6808:68a:: with SMTP id
 k10mr4882531oig.120.1618963394237; 
 Tue, 20 Apr 2021 17:03:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210416143725.2769053-1-lee.jones@linaro.org>
 <20210416143725.2769053-36-lee.jones@linaro.org>
 <59a21fb5-224e-882f-5d2f-e337e78eb7db@amd.com>
In-Reply-To: <59a21fb5-224e-882f-5d2f-e337e78eb7db@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 20 Apr 2021 20:03:03 -0400
Message-ID: <CADnq5_MHCpUPR764FNp-A8_9xQhq1tTHAXkRc0foAKqKRFyaAw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jerome Glisse <glisse@freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Lee Jones <lee.jones@linaro.org>, linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 35/40] drm/amd/amdgpu/amdgpu_cs: Repair
 some function naming disparity
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

QXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCk9uIEZyaSwgQXByIDE2LCAyMDIxIGF0IDExOjU0IEFN
IENocmlzdGlhbiBLw7ZuaWcKPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6Cj4KPiBB
bSAxNi4wNC4yMSB1bSAxNjozNyBzY2hyaWViIExlZSBKb25lczoKPiA+IEZpeGVzIHRoZSBmb2xs
b3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3YXJuaW5nKHMpOgo+ID4KPiA+ICAgZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmM6Njg1OiB3YXJuaW5nOiBleHBlY3RpbmcgcHJvdG90
eXBlIGZvciBjc19wYXJzZXJfZmluaSgpLiBQcm90b3R5cGUgd2FzIGZvciBhbWRncHVfY3NfcGFy
c2VyX2ZpbmkoKSBpbnN0ZWFkCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9jcy5jOjE1MDI6IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90b3R5cGUgZm9yIGFtZGdwdV9jc193
YWl0X2FsbF9mZW5jZSgpLiBQcm90b3R5cGUgd2FzIGZvciBhbWRncHVfY3Nfd2FpdF9hbGxfZmVu
Y2VzKCkgaW5zdGVhZAo+ID4gICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3Mu
YzoxNjU2OiB3YXJuaW5nOiBleHBlY3RpbmcgcHJvdG90eXBlIGZvciBhbWRncHVfY3NfZmluZF9i
b192YSgpLiBQcm90b3R5cGUgd2FzIGZvciBhbWRncHVfY3NfZmluZF9tYXBwaW5nKCkgaW5zdGVh
ZAo+ID4KPiA+IENjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+Cj4g
PiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gPiBD
YzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgo+ID4gQ2M6IERhbmllbCBWZXR0ZXIg
PGRhbmllbEBmZndsbC5jaD4KPiA+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5h
cm8ub3JnPgo+ID4gQ2M6IEplcm9tZSBHbGlzc2UgPGdsaXNzZUBmcmVlZGVza3RvcC5vcmc+Cj4g
PiBDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IENjOiBkcmktZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4g
PiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gPiBTaWduZWQtb2ZmLWJ5OiBM
ZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+Cj4gUmV2aWV3ZWQtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPgo+ID4gLS0tCj4gPiAgIGRyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jIHwgNiArKystLS0KPiA+ICAgMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYwo+ID4gaW5kZXggYjVjNzY2OTk4MDQ1OC4uOTAx
MzZmOWRlZGQ2NSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9jcy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3Mu
Ywo+ID4gQEAgLTY3Miw3ICs2NzIsNyBAQCBzdGF0aWMgaW50IGFtZGdwdV9jc19zeW5jX3Jpbmdz
KHN0cnVjdCBhbWRncHVfY3NfcGFyc2VyICpwKQo+ID4gICB9Cj4gPgo+ID4gICAvKioKPiA+IC0g
KiBjc19wYXJzZXJfZmluaSgpIC0gY2xlYW4gcGFyc2VyIHN0YXRlcwo+ID4gKyAqIGFtZGdwdV9j
c19wYXJzZXJfZmluaSgpIC0gY2xlYW4gcGFyc2VyIHN0YXRlcwo+ID4gICAgKiBAcGFyc2VyOiBw
YXJzZXIgc3RydWN0dXJlIGhvbGRpbmcgcGFyc2luZyBjb250ZXh0Lgo+ID4gICAgKiBAZXJyb3I6
ICBlcnJvciBudW1iZXIKPiA+ICAgICogQGJhY2tvZmY6ICAgICAgICBpbmRpY2F0b3IgdG8gYmFj
a29mZiB0aGUgcmVzZXJ2YXRpb24KPiA+IEBAIC0xNDg4LDcgKzE0ODgsNyBAQCBpbnQgYW1kZ3B1
X2NzX2ZlbmNlX3RvX2hhbmRsZV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpk
YXRhLAo+ID4gICB9Cj4gPgo+ID4gICAvKioKPiA+IC0gKiBhbWRncHVfY3Nfd2FpdF9hbGxfZmVu
Y2UgLSB3YWl0IG9uIGFsbCBmZW5jZXMgdG8gc2lnbmFsCj4gPiArICogYW1kZ3B1X2NzX3dhaXRf
YWxsX2ZlbmNlcyAtIHdhaXQgb24gYWxsIGZlbmNlcyB0byBzaWduYWwKPiA+ICAgICoKPiA+ICAg
ICogQGFkZXY6IGFtZGdwdSBkZXZpY2UKPiA+ICAgICogQGZpbHA6IGZpbGUgcHJpdmF0ZQo+ID4g
QEAgLTE2MzksNyArMTYzOSw3IEBAIGludCBhbWRncHVfY3Nfd2FpdF9mZW5jZXNfaW9jdGwoc3Ry
dWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPiA+ICAgfQo+ID4KPiA+ICAgLyoqCj4g
PiAtICogYW1kZ3B1X2NzX2ZpbmRfYm9fdmEgLSBmaW5kIGJvX3ZhIGZvciBWTSBhZGRyZXNzCj4g
PiArICogYW1kZ3B1X2NzX2ZpbmRfbWFwcGluZyAtIGZpbmQgYm9fdmEgZm9yIFZNIGFkZHJlc3MK
PiA+ICAgICoKPiA+ICAgICogQHBhcnNlcjogY29tbWFuZCBzdWJtaXNzaW9uIHBhcnNlciBjb250
ZXh0Cj4gPiAgICAqIEBhZGRyOiBWTSBhZGRyZXNzCj4KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IGFtZC1nZnggbWFpbGluZyBsaXN0Cj4gYW1kLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2FtZC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK
