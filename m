Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E65F02B2233
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Nov 2020 18:27:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0530E666F2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Nov 2020 17:27:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EB935666F3; Fri, 13 Nov 2020 17:27:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F2CD2666EE;
	Fri, 13 Nov 2020 17:26:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8E9B26052D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Nov 2020 17:26:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 72CBE666EE; Fri, 13 Nov 2020 17:26:50 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id 1A31B6052D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Nov 2020 17:26:49 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id j7so10774913wrp.3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Nov 2020 09:26:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8iS1C8UHBhMpLbbDu7TV/SpqEICX1ZS5TAuJhzzyFG8=;
 b=Hvmi0jcGn1AJ+40v4ns+kNgsXHLUoCr1+W4J/JipFj3PqL6R0nchAgMkFrv7H5JENa
 NbGgr58xpXatvuYotrCtJPKGqpWu7bgTCLCqolyYfY2kPzjONXXbJQed9OImUhadjRZb
 TJsdajcv9k+InZLBwjUmPBEbmmTVeiUqkqyYeYjxa0+Gujd1GX0TE37x7k/rPJodyrLI
 5FQM769mFpms9fqRPk/2uewVg6loLpP84G8gKDALc/d57NJ1Lnr8iqhEA1sL+/uukZpM
 OIMH9i/i76aeC2PhnjaVowXQI2CowZnsILaBrYUsFPlS3jY/+FCA+AIyOw1aK2rYnrDu
 3bGQ==
X-Gm-Message-State: AOAM532/q3dRNLvOmKXPz+spupmDrzJm0QQSmR4l2DYD4HLR4bA555ID
 nik7SHvbtnUZQBvkwF9lv0o3BSR8kfRdb484miQ=
X-Google-Smtp-Source: ABdhPJw2y+1b413Jn+9zmNl1pSTWBVJVbiN4CtaDcHcoAKp0WI5kqKs1HII5R7BSA3JX8BC/e5jFUhTzaT4i/cboQ1c=
X-Received: by 2002:adf:e350:: with SMTP id n16mr4962082wrj.419.1605288403359; 
 Fri, 13 Nov 2020 09:26:43 -0800 (PST)
MIME-Version: 1.0
References: <20201113134938.4004947-1-lee.jones@linaro.org>
 <20201113134938.4004947-25-lee.jones@linaro.org>
In-Reply-To: <20201113134938.4004947-25-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 13 Nov 2020 12:26:32 -0500
Message-ID: <CADnq5_OL0taGuQFnzxZUSVm8yJ6yOA0fj9xW91WKsa8zYRMyeg@mail.gmail.com>
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
Subject: Re: [Linaro-mm-sig] [PATCH 24/40] drm/amd/amdgpu/amdgpu_ids: Supply
 missing docs for 'id' and 'vmhub'
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
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMuYzoy
NzE6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ2lkJyBub3QgZGVzY3Jp
YmVkIGluICdhbWRncHVfdm1pZF9ncmFiX3Jlc2VydmVkJwo+ICBkcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfaWRzLmM6NTIzOiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3Ig
bWVtYmVyICd2bWh1Yicgbm90IGRlc2NyaWJlZCBpbiAnYW1kZ3B1X3ZtaWRfcmVzZXQnCj4KPiBD
YzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPgo+IENjOiAiQ2hyaXN0
aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiBDYzogRGF2aWQgQWlybGll
IDxhaXJsaWVkQGxpbnV4LmllPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+
Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gQ2M6IEZlbGl4
IEt1ZWhsaW5nIDxGZWxpeC5LdWVobGluZ0BhbWQuY29tPgo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6
IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3Jn
PgoKQXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9pZHMuYyB8IDIgKysKPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9p
ZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMuYwo+IGluZGV4IDZl
OWE5ZTVkYmVhMDcuLjYxYTEzMzFmNDgyYzUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2lkcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X2lkcy5jCj4gQEAgLTI1OSw2ICsyNTksNyBAQCBzdGF0aWMgaW50IGFtZGdwdV92
bWlkX2dyYWJfaWRsZShzdHJ1Y3QgYW1kZ3B1X3ZtICp2bSwKPiAgICogQHN5bmM6IHN5bmMgb2Jq
ZWN0IHdoZXJlIHdlIGFkZCBkZXBlbmRlbmNpZXMKPiAgICogQGZlbmNlOiBmZW5jZSBwcm90ZWN0
aW5nIElEIGZyb20gcmV1c2UKPiAgICogQGpvYjogam9iIHdobyB3YW50cyB0byB1c2UgdGhlIFZN
SUQKPiArICogQGlkOiByZXN1bHRpbmcgVk1JRAo+ICAgKgo+ICAgKiBUcnkgdG8gYXNzaWduIGEg
cmVzZXJ2ZWQgVk1JRC4KPiAgICovCj4gQEAgLTUxNCw2ICs1MTUsNyBAQCB2b2lkIGFtZGdwdV92
bWlkX2ZyZWVfcmVzZXJ2ZWQoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsCj4gICAqIGFtZGdw
dV92bWlkX3Jlc2V0IC0gcmVzZXQgVk1JRCB0byB6ZXJvCj4gICAqCj4gICAqIEBhZGV2OiBhbWRn
cHUgZGV2aWNlIHN0cnVjdHVyZQo+ICsgKiBAdm1odWI6IHZtaHViIHR5cGUKPiAgICogQHZtaWQ6
IHZtaWQgbnVtYmVyIHRvIHVzZQo+ICAgKgo+ICAgKiBSZXNldCBzYXZlZCBHRFcsIEdXUyBhbmQg
T0EgdG8gZm9yY2Ugc3dpdGNoIG9uIG5leHQgZmx1c2guCj4gLS0KPiAyLjI1LjEKPgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJpLWRldmVsIG1h
aWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
