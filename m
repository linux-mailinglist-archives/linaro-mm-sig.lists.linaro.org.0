Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1FF2B531C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Nov 2020 21:46:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7B6F666EF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Nov 2020 20:46:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D620F666ED; Mon, 16 Nov 2020 20:46:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8AC1E666E0;
	Mon, 16 Nov 2020 20:45:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id ACE0A619B0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 20:45:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9DC1C666E0; Mon, 16 Nov 2020 20:45:41 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id 16D62619B0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 20:45:40 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id m125so583780wmm.3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 12:45:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=tUf+hLuTWmV9Lrrq70vQEtFjHd9qJhhsAirpAP6Z+pg=;
 b=dfpWRewUil6eda60lqQIP/qqjKGtbzvEq/eB2C5n0ENbv2SBJiKRbm0oO0A53/VXoa
 gt8oDm2PbVPcRTfUkTujnWFNCtEIE+1zlp1aOQum5QdKfrJN8dSPSSQFvGl1GM9ZUghq
 j7HBTFhD26lmbu/3GxIVLTiWHBUCP7WJN5C56SM/2wPbw3nmlCGoQb8SCZzNr83dvaZT
 apqvbNg0nSyfJPDGggx4kwIXIFdYLlemNLhKFcgpRifSEue2XWQO9A7a9Rqa5ffWh3bv
 69ysiUnRl5+DOAy7gLnxSUvaB6tuwpyFvyc4d/ucA2cZyBtkCMeQ1Hf9Bad6LMshfnZ9
 bNnw==
X-Gm-Message-State: AOAM531CkzW8ueyEjyNqXBMLYWLDTspp6wG/E/4aHr7FW4sOKb18IiM3
 P+1ibsYA7lX9j3QiXM4y65ZfZUnVPJTrCKs8Sp0=
X-Google-Smtp-Source: ABdhPJwbvslghUU5OAz63L5KkVFc6VvkczPD/RPO9qq6rbYNvw0Kw0jZmg9wNV4J3AJz7tSNYHWdzYk9p6QfYTuCnE0=
X-Received: by 2002:a7b:c157:: with SMTP id z23mr730703wmi.70.1605559539244;
 Mon, 16 Nov 2020 12:45:39 -0800 (PST)
MIME-Version: 1.0
References: <20201116173700.1830487-1-lee.jones@linaro.org>
 <20201116173700.1830487-41-lee.jones@linaro.org>
In-Reply-To: <20201116173700.1830487-41-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 16 Nov 2020 15:45:28 -0500
Message-ID: <CADnq5_MfZBnSPegGHvPvYJDVjaxabP94M_KNtX98gFT5ok_=vA@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 40/43] drm/radeon/cik: Move
 'vce_v2_0_enable_mgcg()'s prototype to shared header
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

T24gTW9uLCBOb3YgMTYsIDIwMjAgYXQgMTI6MzggUE0gTGVlIEpvbmVzIDxsZWUuam9uZXNAbGlu
YXJvLm9yZz4gd3JvdGU6Cj4KPiBGaXhlcyB0aGUgZm9sbG93aW5nIFc9MSBrZXJuZWwgYnVpbGQg
d2FybmluZyhzKToKPgo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3ZjZV92Ml8wLmM6MTExOjY6
IHdhcm5pbmc6IG5vIHByZXZpb3VzIHByb3RvdHlwZSBmb3Ig4oCYdmNlX3YyXzBfZW5hYmxlX21n
Y2figJkgWy1XbWlzc2luZy1wcm90b3R5cGVzXQo+ICAxMTEgfCB2b2lkIHZjZV92Ml8wX2VuYWJs
ZV9tZ2NnKHN0cnVjdCByYWRlb25fZGV2aWNlICpyZGV2LCBib29sIGVuYWJsZSkKPiAgfCBefn5+
fn5+fn5+fn5+fn5+fn5+fgo+Cj4gQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJA
YW1kLmNvbT4KPiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+Cj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVsIFZl
dHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBs
aW5hcm8ub3JnPgo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBkcmkt
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVs
Lm9yZwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiBTaWduZWQtb2ZmLWJ5
OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgoKQXBwbGllZC4gIFRoYW5rcyEKCkFs
ZXgKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vY2lrLmMgICAgICB8IDIgKy0KPiAg
ZHJpdmVycy9ncHUvZHJtL3JhZGVvbi92Y2UuaCAgICAgIHwgMSArCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9yYWRlb24vdmNlX3YyXzAuYyB8IDEgKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yYWRl
b24vY2lrLmMgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL2Npay5jCj4gaW5kZXggMmFmNzY0NjM5
MDZhZC4uOGI3YTRmN2I3NTc2NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9u
L2Npay5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9jaWsuYwo+IEBAIC00MSw2ICs0
MSw3IEBACj4gICNpbmNsdWRlICJyYWRlb25fYXVkaW8uaCIKPiAgI2luY2x1ZGUgInJhZGVvbl91
Y29kZS5oIgo+ICAjaW5jbHVkZSAic2kuaCIKPiArI2luY2x1ZGUgInZjZS5oIgo+Cj4gICNkZWZp
bmUgU0hfTUVNX0NPTkZJR19HRlhfREVGQVVMVCBcCj4gICAgICAgICBBTElHTk1FTlRfTU9ERShT
SF9NRU1fQUxJR05NRU5UX01PREVfVU5BTElHTkVEKQo+IEBAIC0xMjksNyArMTMwLDYgQEAgTU9E
VUxFX0ZJUk1XQVJFKCJyYWRlb24vbXVsbGluc19ybGMuYmluIik7Cj4gIE1PRFVMRV9GSVJNV0FS
RSgicmFkZW9uL211bGxpbnNfc2RtYS5iaW4iKTsKPgo+ICBzdGF0aWMgdTMyIGNpa19nZXRfY3Vf
YWN0aXZlX2JpdG1hcChzdHJ1Y3QgcmFkZW9uX2RldmljZSAqcmRldiwgdTMyIHNlLCB1MzIgc2gp
Owo+IC1leHRlcm4gdm9pZCB2Y2VfdjJfMF9lbmFibGVfbWdjZyhzdHJ1Y3QgcmFkZW9uX2Rldmlj
ZSAqcmRldiwgYm9vbCBlbmFibGUpOwo+ICBzdGF0aWMgdm9pZCBjaWtfcmxjX3N0b3Aoc3RydWN0
IHJhZGVvbl9kZXZpY2UgKnJkZXYpOwo+ICBzdGF0aWMgdm9pZCBjaWtfcGNpZV9nZW4zX2VuYWJs
ZShzdHJ1Y3QgcmFkZW9uX2RldmljZSAqcmRldik7Cj4gIHN0YXRpYyB2b2lkIGNpa19wcm9ncmFt
X2FzcG0oc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vcmFkZW9uL3ZjZS5oIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi92Y2UuaAo+IGlu
ZGV4IDFlYjRmNTcxNTIwMmUuLmNjYzljMDBmMGQwMmMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL3JhZGVvbi92Y2UuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vdmNlLmgK
PiBAQCAtMzAsNSArMzAsNiBAQAo+ICBzdHJ1Y3QgcmFkZW9uX2RldmljZTsKPgo+ICB2b2lkIHZj
ZV92MV8wX2VuYWJsZV9tZ2NnKHN0cnVjdCByYWRlb25fZGV2aWNlICpyZGV2LCBib29sIGVuYWJs
ZSk7Cj4gK3ZvaWQgdmNlX3YyXzBfZW5hYmxlX21nY2coc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJk
ZXYsIGJvb2wgZW5hYmxlKTsKPgo+ICAjZW5kaWYgICAgICAgICAgICAgICAgICAgICAgICAgLyog
X19WQ0VfSF9fICovCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vdmNlX3Yy
XzAuYyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vdmNlX3YyXzAuYwo+IGluZGV4IGQ2ZmRlMzY1
OWU2NWYuLjE2M2M5YmZjMDNkYTggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JhZGVv
bi92Y2VfdjJfMC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi92Y2VfdjJfMC5jCj4g
QEAgLTMwLDYgKzMwLDcgQEAKPiAgI2luY2x1ZGUgInJhZGVvbi5oIgo+ICAjaW5jbHVkZSAicmFk
ZW9uX2FzaWMuaCIKPiAgI2luY2x1ZGUgImNpa2QuaCIKPiArI2luY2x1ZGUgInZjZS5oIgo+Cj4g
ICNkZWZpbmUgVkNFX1YyXzBfRldfU0laRSAgICAgICAoMjU2ICogMTAyNCkKPiAgI2RlZmluZSBW
Q0VfVjJfMF9TVEFDS19TSVpFICAgICg2NCAqIDEwMjQpCj4gLS0KPiAyLjI1LjEKPgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJpLWRldmVsIG1h
aWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
