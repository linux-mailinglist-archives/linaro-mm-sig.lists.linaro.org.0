Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB7D2C912A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Nov 2020 23:33:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 106B3617A2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Nov 2020 22:33:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 02C73617DE; Mon, 30 Nov 2020 22:33:38 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8A2476087F;
	Mon, 30 Nov 2020 22:33:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1A1AC61655
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Nov 2020 22:32:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0BD9261523; Mon, 30 Nov 2020 22:32:58 +0000 (UTC)
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by lists.linaro.org (Postfix) with ESMTPS id A0EF561523
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Nov 2020 22:31:07 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id s18so16044484oih.1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Nov 2020 14:31:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6axFwa4jYEHmjVpGCVL9P267wNGg+Z8nK+eBebSlIQ8=;
 b=UZ2Wd9D1pMnSxbvS7vxsd2j2yQa5mw6+/56B+18ht0zNcvaAIXAT88j+d0kcYPWkLp
 4U8rs7PFUCMJ511pSCIXTQGjTNxxFEY0hZ/Ip9yfCv/lvDhkwbP9C3yx68ba/ewB/NnF
 28+xfub0gzIbMeAX9OqdNd3xgTnQqP7o0e6QIUI1SgXyd2HrGJxMt6cC+rMQMv3IFiqM
 RpEu4TqHzuoMXl/lDaHh8ws/qAU0dTtGAJuWtz8JzKQBMNzQBGE+Y6I5Rrg6l1rWHdru
 C9eIy/T2jf06dE5qMwZaeW5JnlIF/5iS4ylFNrJhrf9jkkw/9ChL8RLXpMZWbhm+FUaO
 2fZA==
X-Gm-Message-State: AOAM533rh0D+5ZnCjvJI+Xnoc7AO9Q7foMkf9n5KqVKEVl4In5geYkVL
 IQwRicdyEt1HmJgNc+g8X8ykP54oJY9w2K1PjgE=
X-Google-Smtp-Source: ABdhPJz+RMb175/ocrV0ND3r0KcHMsc1iBrnmvlAuhIHG9qAafkYK3PGhD1YFhiowR4RIw83/KNz/Mq6XFFpNsCHBDY=
X-Received: by 2002:aca:4f53:: with SMTP id d80mr931942oib.120.1606775467209; 
 Mon, 30 Nov 2020 14:31:07 -0800 (PST)
MIME-Version: 1.0
References: <20201124193824.1118741-1-lee.jones@linaro.org>
 <20201124193824.1118741-23-lee.jones@linaro.org>
In-Reply-To: <20201124193824.1118741-23-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 30 Nov 2020 17:30:55 -0500
Message-ID: <CADnq5_NX8=X-naMvn9pA--rjSDmZ_xiXYWfUSgoPJKFeN_6A0g@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 22/40] drm/amd/amdgpu/amdgpu_uvd: Fix
 some function documentation headers
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

T24gVHVlLCBOb3YgMjQsIDIwMjAgYXQgMjo0NCBQTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IEZpeGVzIHRoZSBmb2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV91dmQuYzo5
NTogd2FybmluZzogY2Fubm90IHVuZGVyc3RhbmQgZnVuY3Rpb24gcHJvdG90eXBlOiAnc3RydWN0
IGFtZGdwdV91dmRfY3NfY3R4ICcKPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X3V2ZC5jOjU1NTogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAnYWRldicg
bm90IGRlc2NyaWJlZCBpbiAnYW1kZ3B1X3V2ZF9jc19tc2dfZGVjb2RlJwo+ICBkcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdXZkLmM6MTAxMjogd2FybmluZzogRnVuY3Rpb24gcGFy
YW1ldGVyIG9yIG1lbWJlciAnaWJfaWR4JyBub3QgZGVzY3JpYmVkIGluICdhbWRncHVfdXZkX3Jp
bmdfcGFyc2VfY3MnCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV91dmQuYzox
Mjg2OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVyICd0aW1lb3V0JyBub3Qg
ZGVzY3JpYmVkIGluICdhbWRncHVfdXZkX3JpbmdfdGVzdF9pYicKPgo+IENjOiBBbGV4IERldWNo
ZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGlu
dXguaWU+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBDYzogU3VtaXQg
U2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPiBDYzogYW1kLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBs
aW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCj4gU2lnbmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4K
CkFwcGxpZWQuICBUaGFua3MhCgpBbGV4Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfdXZkLmMgfCA2ICsrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV91dmQuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV91dmQuYwo+IGluZGV4IGY4YmViZjE4ZWUzNjIuLmY4ZjAzODRhOGQ5YWQgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3V2ZC5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3V2ZC5jCj4gQEAgLTg3LDcgKzg3LDcgQEAKPiAg
I2RlZmluZSBVVkRfTk9fT1AgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAweDAzZmYKPiAg
I2RlZmluZSBVVkRfQkFTRV9TSSAgICAgICAgICAgICAgICAgICAgICAgICAgICAweDM4MDAKPgo+
IC0vKioKPiArLyoKPiAgICogYW1kZ3B1X3V2ZF9jc19jdHggLSBDb21tYW5kIHN1Ym1pc3Npb24g
cGFyc2VyIGNvbnRleHQKPiAgICoKPiAgICogVXNlZCBmb3IgZW11bGF0aW5nIHZpcnR1YWwgbWVt
b3J5IHN1cHBvcnQgb24gVVZEIDQuMi4KPiBAQCAtNTQ1LDggKzU0NSw4IEBAIHN0YXRpYyBpbnQg
YW1kZ3B1X3V2ZF9jc19wYXNzMShzdHJ1Y3QgYW1kZ3B1X3V2ZF9jc19jdHggKmN0eCkKPiAgLyoq
Cj4gICAqIGFtZGdwdV91dmRfY3NfbXNnX2RlY29kZSAtIGhhbmRsZSBVVkQgZGVjb2RlIG1lc3Nh
Z2UKPiAgICoKPiArICogQGFkZXY6IGFtZGdwdV9kZXZpY2UgcG9pbnRlcgo+ICAgKiBAbXNnOiBw
b2ludGVyIHRvIG1lc3NhZ2Ugc3RydWN0dXJlCj4gLSAqIEBidWZfc2l6ZXM6IHJldHVybmVkIGJ1
ZmZlciBzaXplcwo+ICAgKgo+ICAgKiBQZWVrIGludG8gdGhlIGRlY29kZSBtZXNzYWdlIGFuZCBj
YWxjdWxhdGUgdGhlIG5lY2Vzc2FyeSBidWZmZXIgc2l6ZXMuCj4gICAqLwo+IEBAIC0xMDA1LDYg
KzEwMDUsNyBAQCBzdGF0aWMgaW50IGFtZGdwdV91dmRfY3NfcGFja2V0cyhzdHJ1Y3QgYW1kZ3B1
X3V2ZF9jc19jdHggKmN0eCwKPiAgICogYW1kZ3B1X3V2ZF9yaW5nX3BhcnNlX2NzIC0gVVZEIGNv
bW1hbmQgc3VibWlzc2lvbiBwYXJzZXIKPiAgICoKPiAgICogQHBhcnNlcjogQ29tbWFuZCBzdWJt
aXNzaW9uIHBhcnNlciBjb250ZXh0Cj4gKyAqIEBpYl9pZHg6IFdoaWNoIGluZGlyZWN0IGJ1ZmZl
ciB0byB1c2UKPiAgICoKPiAgICogUGFyc2UgdGhlIGNvbW1hbmQgc3RyZWFtLCBwYXRjaCBpbiBh
ZGRyZXNzZXMgYXMgbmVjZXNzYXJ5Lgo+ICAgKi8KPiBAQCAtMTI3OSw2ICsxMjgwLDcgQEAgdm9p
ZCBhbWRncHVfdXZkX3JpbmdfZW5kX3VzZShzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcpCj4gICAq
IGFtZGdwdV91dmRfcmluZ190ZXN0X2liIC0gdGVzdCBpYiBleGVjdXRpb24KPiAgICoKPiAgICog
QHJpbmc6IGFtZGdwdV9yaW5nIHBvaW50ZXIKPiArICogQHRpbWVvdXQ6IHRpbWVvdXQgdmFsdWUg
aW4gamlmZmllcywgb3IgTUFYX1NDSEVEVUxFX1RJTUVPVVQKPiAgICoKPiAgICogVGVzdCBpZiB3
ZSBjYW4gc3VjY2Vzc2Z1bGx5IGV4ZWN1dGUgYW4gSUIKPiAgICovCj4gLS0KPiAyLjI1LjEKPgo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJpLWRl
dmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
