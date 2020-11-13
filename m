Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 079802B21EF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Nov 2020 18:20:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2FBB7666F0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Nov 2020 17:20:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2401F666FB; Fri, 13 Nov 2020 17:20:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F78B6052D;
	Fri, 13 Nov 2020 17:19:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4B7DC6052D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Nov 2020 17:19:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3AFD7666F5; Fri, 13 Nov 2020 17:19:06 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id B9E086052D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Nov 2020 17:19:02 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id w24so9259589wmi.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Nov 2020 09:19:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Odh9S4GXnjRv304GJfgc5XVM032BtmrndNkaL6PWoQQ=;
 b=XSdEzM5j/g0pBXylY/cOVYjrIroMh8Ulx9GkQlE4fe8RwChq95klRL2y4bcsl2KUNI
 pHXlwM5Cxm1at+bXqHDsDKEN4ky7cTZz5TTmZ5pv99rR/TY9o6At25oTayOAnSv3THxO
 KcwLN/oXiR35LheWFrVVHOexmiqmjqiRmJiamQnyNR6WHzKY61pS0ILTM472n0oahTs2
 ArtHhdrI1eYhKcETJNSdCq/uNhEaSkSCMrjMph+3qg/qd2eihGtp4qhz3HN2IHMhZgVz
 3A6GEoipsx3gWk9OPVBYj6AquLO/BzgeFx22UIf31bqXkffnHSS8fNK6tztF65wIzaMv
 veAg==
X-Gm-Message-State: AOAM533YpnnDjBy/MuHMgcc1EYryIsKtY9rjAljTi1KanKN9bWj1RLrs
 UFvvR3aS9g5ANvUYBXYefIIzGOWUUZqLxobKeJM=
X-Google-Smtp-Source: ABdhPJw8aLTjdYh+1Z4YbylQ6OFrhzAqpIztbxmRHRPTy2NG/itvTCYemARbosA+4Fk6pXGQV6PdsyqChDTsqfogCyo=
X-Received: by 2002:a7b:c157:: with SMTP id z23mr3502636wmi.70.1605287936955; 
 Fri, 13 Nov 2020 09:18:56 -0800 (PST)
MIME-Version: 1.0
References: <20201113134938.4004947-1-lee.jones@linaro.org>
 <20201113134938.4004947-17-lee.jones@linaro.org>
In-Reply-To: <20201113134938.4004947-17-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 13 Nov 2020 12:18:45 -0500
Message-ID: <CADnq5_PUE3Hiv6dngNwEgZ_3hX=RQaZxiFtudt6-zesYbuLYQQ@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, Felix Kuehling <Felix.Kuehling@amd.com>,
 LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 16/40] drm/amd/amdgpu/amdgpu_sync: Fix
 misnamed, missing and extra param descriptions
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

T24gRnJpLCBOb3YgMTMsIDIwMjAgYXQgODo1MCBBTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IEZpeGVzIHRoZSBmb2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9zeW5jLmM6
ODY6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ2YnIG5vdCBkZXNjcmli
ZWQgaW4gJ2FtZGdwdV9zeW5jX2dldF9vd25lcicKPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X3N5bmMuYzo4Njogd2FybmluZzogRXhjZXNzIGZ1bmN0aW9uIHBhcmFtZXRlciAn
ZmVuY2UnIGRlc2NyaXB0aW9uIGluICdhbWRncHVfc3luY19nZXRfb3duZXInCj4gIGRyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9zeW5jLmM6MTgyOiB3YXJuaW5nOiBFeGNlc3MgZnVu
Y3Rpb24gcGFyYW1ldGVyICdhZGV2JyBkZXNjcmlwdGlvbiBpbiAnYW1kZ3B1X3N5bmNfdm1fZmVu
Y2UnCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9zeW5jLmM6MjAzOiB3YXJu
aW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdhZGV2JyBub3QgZGVzY3JpYmVkIGlu
ICdhbWRncHVfc3luY19yZXN2Jwo+Cj4gQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNo
ZXJAYW1kLmNvbT4KPiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+Cj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVs
IFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdh
bEBsaW5hcm8ub3JnPgo+IENjOiBGZWxpeCBLdWVobGluZyA8RmVsaXguS3VlaGxpbmdAYW1kLmNv
bT4KPiBDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogZHJpLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPiBD
YzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gU2lnbmVkLW9mZi1ieTogTGVlIEpv
bmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCkFwcGxpZWQuICBUaGFua3MhCgpBbGV4Cgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfc3luYy5jIHwgNCArKy0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3N5bmMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9zeW5jLmMKPiBpbmRleCA4ZWE2YzQ5NTI5ZTdk
Li40ZTU1ODYzMmE1ZDJiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9zeW5jLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
c3luYy5jCj4gQEAgLTc4LDcgKzc4LDcgQEAgc3RhdGljIGJvb2wgYW1kZ3B1X3N5bmNfc2FtZV9k
ZXYoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsCj4gIC8qKgo+ICAgKiBhbWRncHVfc3luY19n
ZXRfb3duZXIgLSBleHRyYWN0IHRoZSBvd25lciBvZiBhIGZlbmNlCj4gICAqCj4gLSAqIEBmZW5j
ZTogZmVuY2UgZ2V0IHRoZSBvd25lciBmcm9tCj4gKyAqIEBmOiBmZW5jZSBnZXQgdGhlIG93bmVy
IGZyb20KPiAgICoKPiAgICogRXh0cmFjdCB3aG8gb3JpZ2luYWxseSBjcmVhdGVkIHRoZSBmZW5j
ZS4KPiAgICovCj4gQEAgLTE3Miw3ICsxNzIsNiBAQCBpbnQgYW1kZ3B1X3N5bmNfZmVuY2Uoc3Ry
dWN0IGFtZGdwdV9zeW5jICpzeW5jLCBzdHJ1Y3QgZG1hX2ZlbmNlICpmKQo+ICAvKioKPiAgICog
YW1kZ3B1X3N5bmNfdm1fZmVuY2UgLSByZW1lbWJlciB0byBzeW5jIHRvIHRoaXMgVk0gZmVuY2UK
PiAgICoKPiAtICogQGFkZXY6IGFtZGdwdSBkZXZpY2UKPiAgICogQHN5bmM6IHN5bmMgb2JqZWN0
IHRvIGFkZCBmZW5jZSB0bwo+ICAgKiBAZmVuY2U6IHRoZSBWTSBmZW5jZSB0byBhZGQKPiAgICoK
PiBAQCAtMTkwLDYgKzE4OSw3IEBAIGludCBhbWRncHVfc3luY192bV9mZW5jZShzdHJ1Y3QgYW1k
Z3B1X3N5bmMgKnN5bmMsIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQo+ICAvKioKPiAgICogYW1k
Z3B1X3N5bmNfcmVzdiAtIHN5bmMgdG8gYSByZXNlcnZhdGlvbiBvYmplY3QKPiAgICoKPiArICog
QGFkZXY6IGFtZGdwdSBkZXZpY2UKPiAgICogQHN5bmM6IHN5bmMgb2JqZWN0IHRvIGFkZCBmZW5j
ZXMgZnJvbSByZXNlcnZhdGlvbiBvYmplY3QgdG8KPiAgICogQHJlc3Y6IHJlc2VydmF0aW9uIG9i
amVjdCB3aXRoIGVtYmVkZGVkIGZlbmNlCj4gICAqIEBtb2RlOiBob3cgb3duZXIgYWZmZWN0cyB3
aGljaCBmZW5jZXMgd2Ugc3luYyB0bwo+IC0tCj4gMi4yNS4xCj4KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QK
PiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
