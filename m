Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A16982B2286
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Nov 2020 18:33:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C953B666ED
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Nov 2020 17:33:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BDBBD666EE; Fri, 13 Nov 2020 17:33:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 62B9A666F0;
	Fri, 13 Nov 2020 17:32:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 34FFE666EE
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Nov 2020 17:32:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 28AF1666F0; Fri, 13 Nov 2020 17:32:28 +0000 (UTC)
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by lists.linaro.org (Postfix) with ESMTPS id 5AE96666F2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Nov 2020 17:32:15 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id c16so9295855wmd.2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Nov 2020 09:32:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nB0sqPZdl7dQLoXl7ubMEUx/Fs5H1HyujTYlOBisxFw=;
 b=HfZOB7EYjvcpgn7JrlbwhccfguWV0r681SMCeJbzFvvbjNm00ozNpLPfWEMWl4630t
 3mkpCY5nwyJa2kcLUO0PKFf4pTUgA2hXlVb6twya/2liZAKjxUl0T9Vn7jI4HBE8RusY
 GEKeqVges6CfaV1XRC+VfzhJNMmVnRIy7PYxuiNzQYC7ZKJc+Jz6W70Xfs15mDR9uB0c
 LkOkARC7gdC75Q6LQbwsj7jfzUjo+pswNQ9YxXxFUWfrStTwuHkzmppDTNWMMrhChl2X
 74dHocQLmeZHimrqnF5ydgChpULtqQZHxzV9a6gOiXGSxcfZ65WNCk07llcuWgoj8wnf
 cKTQ==
X-Gm-Message-State: AOAM531vj8GU/DnBoQ/M8iCJ1Z/1c7/yxgRBUIH5jdVHOeumPQTKGl6w
 b9y2xWKtW3L6ej70hEgZttuwUPMVIwIjuEMBIdI=
X-Google-Smtp-Source: ABdhPJwLUWp9h2RgHmnYgvG6nAKpZckkeYcM9u4+qoAUdVIw1MKwoRmYok6qE1X+JE0iF7PSBR6qtULvVKQcTNTZYNg=
X-Received: by 2002:a1c:80cb:: with SMTP id b194mr3585107wmd.73.1605288733517; 
 Fri, 13 Nov 2020 09:32:13 -0800 (PST)
MIME-Version: 1.0
References: <20201113134938.4004947-1-lee.jones@linaro.org>
 <20201113134938.4004947-32-lee.jones@linaro.org>
In-Reply-To: <20201113134938.4004947-32-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 13 Nov 2020 12:32:02 -0500
Message-ID: <CADnq5_NrurURuTvTHF-94EOy2kwmd1mgmY6tF2BN-ywVqH73ag@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 31/40] drm/amd/amdgpu/amdgpu_vm_sdma:
 Fix 'amdgpu_vm_sdma_prepare()'s doc-rot
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
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92bV9zZG1h
LmM6NjM6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ3Jlc3YnIG5vdCBk
ZXNjcmliZWQgaW4gJ2FtZGdwdV92bV9zZG1hX3ByZXBhcmUnCj4gIGRyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV92bV9zZG1hLmM6NjM6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRl
ciBvciBtZW1iZXIgJ3N5bmNfbW9kZScgbm90IGRlc2NyaWJlZCBpbiAnYW1kZ3B1X3ZtX3NkbWFf
cHJlcGFyZScKPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZtX3NkbWEuYzo2
Mzogd2FybmluZzogRXhjZXNzIGZ1bmN0aW9uIHBhcmFtZXRlciAnb3duZXInIGRlc2NyaXB0aW9u
IGluICdhbWRncHVfdm1fc2RtYV9wcmVwYXJlJwo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfdm1fc2RtYS5jOjYzOiB3YXJuaW5nOiBFeGNlc3MgZnVuY3Rpb24gcGFyYW1ldGVy
ICdleGNsdXNpdmUnIGRlc2NyaXB0aW9uIGluICdhbWRncHVfdm1fc2RtYV9wcmVwYXJlJwo+Cj4g
Q2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KPiBDYzogIkNocmlz
dGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gQ2M6IERhdmlkIEFpcmxp
ZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNo
Pgo+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+IENjOiBhbWQt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25l
c0BsaW5hcm8ub3JnPgoKQXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCj4gLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92bV9zZG1hLmMgfCA0ICsrLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdm1fc2RtYS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZtX3NkbWEuYwo+IGluZGV4IGRiNzkwNTc0ZGMyZTguLmE4
M2E2NDY3NTljNTggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X3ZtX3NkbWEuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92
bV9zZG1hLmMKPiBAQCAtNTEsOCArNTEsOCBAQCBzdGF0aWMgaW50IGFtZGdwdV92bV9zZG1hX21h
cF90YWJsZShzdHJ1Y3QgYW1kZ3B1X2JvICp0YWJsZSkKPiAgICogYW1kZ3B1X3ZtX3NkbWFfcHJl
cGFyZSAtIHByZXBhcmUgU0RNQSBjb21tYW5kIHN1Ym1pc3Npb24KPiAgICoKPiAgICogQHA6IHNl
ZSBhbWRncHVfdm1fdXBkYXRlX3BhcmFtcyBkZWZpbml0aW9uCj4gLSAqIEBvd25lcjogb3duZXIg
d2UgbmVlZCB0byBzeW5jIHRvCj4gLSAqIEBleGNsdXNpdmU6IGV4Y2x1c2l2ZSBtb3ZlIGZlbmNl
IHdlIG5lZWQgdG8gc3luYyB0bwo+ICsgKiBAcmVzdjogcmVzZXJ2YXRpb24gb2JqZWN0IHdpdGgg
ZW1iZWRkZWQgZmVuY2UKPiArICogQHN5bmNfbW9kZTogc3luY2hyb25pemF0aW9uIG1vZGUKPiAg
ICoKPiAgICogUmV0dXJuczoKPiAgICogTmVnYXRpdiBlcnJubywgMCBmb3Igc3VjY2Vzcy4KPiAt
LQo+IDIuMjUuMQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpLWRldmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==
