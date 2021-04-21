Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEEC3662CC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Apr 2021 02:02:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6F8976684F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Apr 2021 00:02:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6197966852; Wed, 21 Apr 2021 00:02:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B66A466850;
	Wed, 21 Apr 2021 00:02:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 202C6667BE
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Apr 2021 00:02:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 118A26684D; Wed, 21 Apr 2021 00:02:13 +0000 (UTC)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
 [209.85.210.41])
 by lists.linaro.org (Postfix) with ESMTPS id 0E70C6684D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Apr 2021 00:01:55 +0000 (UTC)
Received: by mail-ot1-f41.google.com with SMTP id
 35-20020a9d05260000b029029c82502d7bso6020914otw.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 17:01:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=n1Y9JenQmqq/jFrbUY+vR+8982Oh/0y41VMP20Nx67g=;
 b=I256qdqF/W1ZYyfqKhAVrSOxQGKZrVW0Pwh7gUFb8SEF4DCvFDHkAVTiGhhglDV9ow
 PdtLe5Ej/UyQX9mpk6JpVcguY1rB/PWJyDg/kHbI6h/hv3tX2NEG1FeAnB+3R6lGeM+S
 4/OknexIa+xLZoMr79HvdonIopcKQrsebiPCmp+nm/TOmNzvbPFOAqLV7SxnXKaxBuBc
 29m++o2o16MyLxW3UiXTnc0ExyiqNiNDkR4J+RumFBSR2bioI9dxur65sqI6zUgTzQ3r
 LXYVic5GyeWH51bcKRJmYX7/wFbKIkmwbfNL/mEetUZAvYS72DGQpbYzXDswZg3agNYw
 phfg==
X-Gm-Message-State: AOAM533o51S3+aDRDG5Ye/sL+6GXlRoeiZbxz7OglJuPjPV2T8p1U706
 h6YjZWzVe6S/VIc0oIRgPOee57fJcBqSxsUxS2Q=
X-Google-Smtp-Source: ABdhPJxRmv0oaIQ8o8neeJ0EYrxNDJhIjGMeVuNsDPG6BueZp+kvjrvsztKO5sPtvnLnvKUbLNRWoTOmkOrtfFEhMcw=
X-Received: by 2002:a9d:75c4:: with SMTP id c4mr19093574otl.311.1618963314628; 
 Tue, 20 Apr 2021 17:01:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210416143725.2769053-1-lee.jones@linaro.org>
 <20210416143725.2769053-34-lee.jones@linaro.org>
 <d44d2325-4cba-2927-d5e9-1d8e0ab1649c@amd.com>
In-Reply-To: <d44d2325-4cba-2927-d5e9-1d8e0ab1649c@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 20 Apr 2021 20:01:43 -0400
Message-ID: <CADnq5_MH0FxYrr7FJEN-t_jF0-noRA3M7pRD5SROrpjOOZt8CQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Alex Deucher <alexander.deucher@amd.com>, Lee Jones <lee.jones@linaro.org>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 33/40] drm/amd/amdgpu/amdgpu_ring:
	Provide description for 'sched_score'
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
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3JpbmcuYzoxNjk6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFt
ZXRlciBvciBtZW1iZXIgJ3NjaGVkX3Njb3JlJyBub3QgZGVzY3JpYmVkIGluICdhbWRncHVfcmlu
Z19pbml0Jwo+ID4KPiA+IENjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5j
b20+Cj4gPiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
Cj4gPiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgo+ID4gQ2M6IERhbmllbCBW
ZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiA+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdh
bEBsaW5hcm8ub3JnPgo+ID4gQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBD
YzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gQ2M6IGxpbnV4LW1lZGlhQHZn
ZXIua2VybmVsLm9yZwo+ID4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+ID4g
U2lnbmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPgo+IFJldmll
d2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4KPiA+
IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfcmluZy5jIHwgMSAr
Cj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+ID4KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfcmluZy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3JpbmcuYwo+ID4gaW5kZXggNjg4NjI0ZWJlNDIxMS4uN2I2
MzRhMTUxN2Y5YyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9yaW5nLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9y
aW5nLmMKPiA+IEBAIC0xNTgsNiArMTU4LDcgQEAgdm9pZCBhbWRncHVfcmluZ191bmRvKHN0cnVj
dCBhbWRncHVfcmluZyAqcmluZykKPiA+ICAgICogQGlycV9zcmM6IGludGVycnVwdCBzb3VyY2Ug
dG8gdXNlIGZvciB0aGlzIHJpbmcKPiA+ICAgICogQGlycV90eXBlOiBpbnRlcnJ1cHQgdHlwZSB0
byB1c2UgZm9yIHRoaXMgcmluZwo+ID4gICAgKiBAaHdfcHJpbzogcmluZyBwcmlvcml0eSAoTk9S
TUFML0hJR0gpCj4gPiArICogQHNjaGVkX3Njb3JlOiBvcHRpb25hbCBzY29yZSBhdG9taWMgc2hh
cmVkIHdpdGggb3RoZXIgc2NoZWR1bGVycwo+ID4gICAgKgo+ID4gICAgKiBJbml0aWFsaXplIHRo
ZSBkcml2ZXIgaW5mb3JtYXRpb24gZm9yIHRoZSBzZWxlY3RlZCByaW5nIChhbGwgYXNpY3MpLgo+
ID4gICAgKiBSZXR1cm5zIDAgb24gc3VjY2VzcywgZXJyb3Igb24gZmFpbHVyZS4KPgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gYW1kLWdmeCBtYWls
aW5nIGxpc3QKPiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vYW1kLWdmeApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
