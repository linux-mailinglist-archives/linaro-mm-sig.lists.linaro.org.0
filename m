Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E77CF2C9088
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Nov 2020 23:05:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B109D617DE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Nov 2020 22:05:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A4DF1617EF; Mon, 30 Nov 2020 22:05:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D4F4F6164D;
	Mon, 30 Nov 2020 22:05:05 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E1C3761523
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Nov 2020 22:04:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D544361655; Mon, 30 Nov 2020 22:04:59 +0000 (UTC)
Received: from mail-oo1-f65.google.com (mail-oo1-f65.google.com
 [209.85.161.65])
 by lists.linaro.org (Postfix) with ESMTPS id 1343561523
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Nov 2020 22:04:58 +0000 (UTC)
Received: by mail-oo1-f65.google.com with SMTP id i13so3042919oou.11
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Nov 2020 14:04:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5jOvGDqYf8zwrULgytMiBGj6XTmbLQAdGK6UJTFHbSU=;
 b=HiPyz+96gXzNBhr/c4bvjn9Heu1StXQJR89FPdw3ngM7GCfPLy+Mn8DpazorxTdCqt
 G/v1+1MDNR4cSK5Zum1QI/Lrs9Tjm12PBDgISnxxL0RqCYPSuh9u/r1sDqaYDEQzoxh1
 xCworrx2OBzNjObDTixbfCo7evRK/PfVYw8DzVMS9qjRSepR+Gw7gIwYi5LrtjwO2qIr
 1OcI3NANC0EzLihtjjGdSfu1yjGPD9vwhtorR7zBs1jIjZeTz2Ds1P4gs8vkMB7hZXev
 mVbIm3QznZpbingI6suz93496/t0160Pefj3hdjdnNqe24UrjqRXSXaAchC4tdkyJdWg
 JjjQ==
X-Gm-Message-State: AOAM533kleo+UTV1PTvSMmrK06pcgx5HQdXnYLrd9SBG0sWCTH8w7aBv
 fWWqqCUMqtz/edfwaTgitS+nFUvTT4yix0DtXLw=
X-Google-Smtp-Source: ABdhPJzdjixBlHwXzStQhUKKU6mUgnrY3S88+jIZBk29S2eq07JyrKnnbnUAJiA6e8+nCQCMloGuHeuHFCBlQgu31eE=
X-Received: by 2002:a4a:3e91:: with SMTP id t139mr16906483oot.90.1606773897183; 
 Mon, 30 Nov 2020 14:04:57 -0800 (PST)
MIME-Version: 1.0
References: <20201124193824.1118741-1-lee.jones@linaro.org>
 <20201124193824.1118741-3-lee.jones@linaro.org>
In-Reply-To: <20201124193824.1118741-3-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 30 Nov 2020 17:04:45 -0500
Message-ID: <CADnq5_OURGRBDONuMy9Bee2Jo+e6pfCaKyk8z6Fn60F2PcF_Ag@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 02/40] drm/amd/amdgpu/gmc_v10_0: Suppy
 some missing function doc descriptions
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
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dtY192MTBfMC5jOjI3
ODogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAndm1odWInIG5vdCBkZXNj
cmliZWQgaW4gJ2dtY192MTBfMF9mbHVzaF9ncHVfdGxiJwo+ICBkcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9nbWNfdjEwXzAuYzoyNzg6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBt
ZW1iZXIgJ2ZsdXNoX3R5cGUnIG5vdCBkZXNjcmliZWQgaW4gJ2dtY192MTBfMF9mbHVzaF9ncHVf
dGxiJwo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nbWNfdjEwXzAuYzozNzE6IHdhcm5p
bmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ2ZsdXNoX3R5cGUnIG5vdCBkZXNjcmli
ZWQgaW4gJ2dtY192MTBfMF9mbHVzaF9ncHVfdGxiX3Bhc2lkJwo+ICBkcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9nbWNfdjEwXzAuYzozNzE6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBv
ciBtZW1iZXIgJ2FsbF9odWInIG5vdCBkZXNjcmliZWQgaW4gJ2dtY192MTBfMF9mbHVzaF9ncHVf
dGxiX3Bhc2lkJwo+Cj4gQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNv
bT4KPiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4g
Q2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVsIFZldHRlciA8
ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8u
b3JnPgo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBkcmktZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+
IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBMZWUg
Sm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgoKQXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nbWNfdjEwXzAuYyB8IDQgKysrKwo+
ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvZ21jX3YxMF8wLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9nbWNfdjEwXzAuYwo+IGluZGV4IGQ5Mzk5MzI0YmU0NzQuLjQ4ODdiMGU2NmU5NzUgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ21jX3YxMF8wLmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nbWNfdjEwXzAuYwo+IEBAIC0yNzAsNiArMjcw
LDggQEAgc3RhdGljIHZvaWQgZ21jX3YxMF8wX2ZsdXNoX3ZtX2h1YihzdHJ1Y3QgYW1kZ3B1X2Rl
dmljZSAqYWRldiwgdWludDMyX3Qgdm1pZCwKPiAgICoKPiAgICogQGFkZXY6IGFtZGdwdV9kZXZp
Y2UgcG9pbnRlcgo+ICAgKiBAdm1pZDogdm0gaW5zdGFuY2UgdG8gZmx1c2gKPiArICogQHZtaHVi
OiB2bWh1YiB0eXBlCj4gKyAqIEBmbHVzaF90eXBlOiB0aGUgZmx1c2ggdHlwZQo+ICAgKgo+ICAg
KiBGbHVzaCB0aGUgVExCIGZvciB0aGUgcmVxdWVzdGVkIHBhZ2UgdGFibGUuCj4gICAqLwo+IEBA
IC0zNjIsNiArMzY0LDggQEAgc3RhdGljIHZvaWQgZ21jX3YxMF8wX2ZsdXNoX2dwdV90bGIoc3Ry
dWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsIHVpbnQzMl90IHZtaWQsCj4gICAqCj4gICAqIEBhZGV2
OiBhbWRncHVfZGV2aWNlIHBvaW50ZXIKPiAgICogQHBhc2lkOiBwYXNpZCB0byBiZSBmbHVzaAo+
ICsgKiBAZmx1c2hfdHlwZTogdGhlIGZsdXNoIHR5cGUKPiArICogQGFsbF9odWI6IFVzZWQgd2l0
aCBQQUNLRVQzX0lOVkFMSURBVEVfVExCU19BTExfSFVCKCkKPiAgICoKPiAgICogRmx1c2ggdGhl
IFRMQiBmb3IgdGhlIHJlcXVlc3RlZCBwYXNpZC4KPiAgICovCj4gLS0KPiAyLjI1LjEKPgo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJpLWRldmVs
IG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
