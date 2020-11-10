Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E26442AE488
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Nov 2020 00:58:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0DF3E665EE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 23:58:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 00D9F665FA; Tue, 10 Nov 2020 23:58:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D36DE665EF;
	Tue, 10 Nov 2020 23:58:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CF65B6192C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 23:58:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BC438665EF; Tue, 10 Nov 2020 23:58:08 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id 84AA96192C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 23:58:07 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id d142so176091wmd.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 15:58:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=sVHw44prgkhLl+wZoJDl9y1Sv84cjPWTxQBG3axW3YI=;
 b=BF29BApCxShA1FxEluX2eBRq1fZQ7qglkRyWQQmOpt1VLCmz5WrvQze/y+duFetvTP
 eczErOHE8MotGFlPO8DJ61ZiyhTKGQBYkB8Dzv1/wnPHp8fNOwuGm4kvBtTnygW7A1tq
 7lMvSzsvTYX+/ZIuZtuE9zWm7O6AnTgj0kzR7JeXeE/eErkaYDjCjb+d6xUmzcGTVnaw
 LL4ZOAQ0X/kdvdwnVRaDJkgX4OIse9W56H2VrcNTl8m5dSKj0WURzWD5UquR3dTYHLtv
 pSu+cy9eAeVMRa3RE6XNR9nZuQlZ32mHrZHktBjEECbcsJh4l9WprPQE1eAo43Gdw10h
 tkyw==
X-Gm-Message-State: AOAM5326a3258dY9OwzVTL1ApFWh/oZhxAgsDojk7EI6dKsCjqUgXthj
 xaX60WPnqEyWQWlSTWjjIPl47ARwsFKBV9g3EunGybI4
X-Google-Smtp-Source: ABdhPJwGVm8zxKOpbuvLzIOHTQhYo2DrNr+mXrvd1xPnYkBEHOZz9oYFfEfo+lAFTQEnLFs0aW5uGXu88lIbYUyf+QQ=
X-Received: by 2002:a7b:c157:: with SMTP id z23mr639254wmi.70.1605052686774;
 Tue, 10 Nov 2020 15:58:06 -0800 (PST)
MIME-Version: 1.0
References: <20201110193112.988999-1-lee.jones@linaro.org>
 <20201110193112.988999-15-lee.jones@linaro.org>
In-Reply-To: <20201110193112.988999-15-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 10 Nov 2020 18:57:55 -0500
Message-ID: <CADnq5_M28RPCQR27JXOiugvPPfHh2CnCedVFmBfkMb3kZ8RzzA@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 14/30] drm/radeon/evergreen_dma: Fix
 doc-rot of function parameter 'resv'
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

T24gVHVlLCBOb3YgMTAsIDIwMjAgYXQgMjozMSBQTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IEZpeGVzIHRoZSBmb2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vZXZlcmdyZWVuX2RtYS5jOjEx
Mjogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAncmVzdicgbm90IGRlc2Ny
aWJlZCBpbiAnZXZlcmdyZWVuX2NvcHlfZG1hJwo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL2V2
ZXJncmVlbl9kbWEuYzoxMTI6IHdhcm5pbmc6IEV4Y2VzcyBmdW5jdGlvbiBwYXJhbWV0ZXIgJ2Zl
bmNlJyBkZXNjcmlwdGlvbiBpbiAnZXZlcmdyZWVuX2NvcHlfZG1hJwo+Cj4gQ2M6IEFsZXggRGV1
Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KPiBDYzogIkNocmlzdGlhbiBLw7ZuaWci
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBs
aW51eC5pZT4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBTdW1p
dCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6
IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3Jn
PgoKQXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRl
b24vZXZlcmdyZWVuX2RtYS5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9u
L2V2ZXJncmVlbl9kbWEuYyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vZXZlcmdyZWVuX2RtYS5j
Cj4gaW5kZXggYTQ2ZWU2YzIwOTlkZC4uNzY3ODU3ZDRhOGM1YyAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vcmFkZW9uL2V2ZXJncmVlbl9kbWEuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9yYWRlb24vZXZlcmdyZWVuX2RtYS5jCj4gQEAgLTk4LDcgKzk4LDcgQEAgdm9pZCBldmVyZ3Jl
ZW5fZG1hX3JpbmdfaWJfZXhlY3V0ZShzdHJ1Y3QgcmFkZW9uX2RldmljZSAqcmRldiwKPiAgICog
QHNyY19vZmZzZXQ6IHNyYyBHUFUgYWRkcmVzcwo+ICAgKiBAZHN0X29mZnNldDogZHN0IEdQVSBh
ZGRyZXNzCj4gICAqIEBudW1fZ3B1X3BhZ2VzOiBudW1iZXIgb2YgR1BVIHBhZ2VzIHRvIHhmZXIK
PiAtICogQGZlbmNlOiByYWRlb24gZmVuY2Ugb2JqZWN0Cj4gKyAqIEByZXN2OiByZXNlcnZhdGlv
biBvYmplY3Qgd2l0aCBlbWJlZGRlZCBmZW5jZQo+ICAgKgo+ICAgKiBDb3B5IEdQVSBwYWdpbmcg
dXNpbmcgdGhlIERNQSBlbmdpbmUgKGV2ZXJncmVlbi1jYXltYW4pLgo+ICAgKiBVc2VkIGJ5IHRo
ZSByYWRlb24gdHRtIGltcGxlbWVudGF0aW9uIHRvIG1vdmUgcGFnZXMgaWYKPiAtLQo+IDIuMjUu
MQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBk
cmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVs
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
