Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C62D12AC728
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Nov 2020 22:22:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 00882665BF
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Nov 2020 21:22:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E2A46665CF; Mon,  9 Nov 2020 21:22:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C2381665B5;
	Mon,  9 Nov 2020 21:21:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DF0A861900
 for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Nov 2020 21:21:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D3495665B5; Mon,  9 Nov 2020 21:21:29 +0000 (UTC)
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by lists.linaro.org (Postfix) with ESMTPS id A0ADD61900
 for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Nov 2020 21:21:28 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id c16so923573wmd.2
 for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Nov 2020 13:21:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GDp8yb+Sw0EolRsci9v+WvLZ9nSbjiU3CL4VUAU4p3U=;
 b=pEmyWDCd8NUleNXpNFcOUoPtL44G4FLV5b/4WnYAV1pp61F6TswezdYko18neiymop
 Ozmd+jg5Doh5XBq4yuCbpOH0Tj+K4WxGfFigrgUkRZwEt9aXtpftRewYDW8YxgSNjDUf
 /a2W+owr1mK9hQUt/ZfGNAGnkPPNLKHYIgnsOPaxWjiPdVMVOKbxFTL5BSsuV/e1zB1q
 Y/GAPCIZrMxNyWLUm1A0YzpUP8CtteFLiut+owT5WVSlN8fAwxj+NTSsJcOonsim+f5I
 aGsrfW/JjtS9kyCzfrsGJqrUWnDOBkAYHBAj3NOnvF4lhqoCoPjvgPE/Z5+5ZhjqUhTk
 JfWQ==
X-Gm-Message-State: AOAM533LidswfmX2nQO39tDZf0deB2DiYQ8IH1Mki2jHNPsNquqxxFUf
 aHP/zKAnODADjczg00Wb57tlgrMpdW5iYqUl1YI=
X-Google-Smtp-Source: ABdhPJyIn9jY/EM3NsfRCWQKiTNIKSQPUd00zlTTnc7nT1mAHIfsQMOpQ0BCDXxFJdSy6q+gIIZeHW6pK4msqPWqZAo=
X-Received: by 2002:a1c:46c6:: with SMTP id t189mr1159422wma.79.1604956887879; 
 Mon, 09 Nov 2020 13:21:27 -0800 (PST)
MIME-Version: 1.0
References: <20201109210725.24668-1-unixbhaskar@gmail.com>
In-Reply-To: <20201109210725.24668-1-unixbhaskar@gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 9 Nov 2020 16:21:16 -0500
Message-ID: <CADnq5_NOmgYM0_0fTQaYr+qn7M_Vrbo1E=mPmuoATQNjRRHTqg@mail.gmail.com>
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Dave Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, "Deucher,
 Alexander" <alexander.deucher@amd.com>,
 Christian Koenig <christian.koenig@amd.com>, Jean Delvare <jdelvare@suse.de>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] drivers: amdgpu: amdgpu_display: Fixed
 the spelling of falg to flag
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

T24gTW9uLCBOb3YgOSwgMjAyMCBhdCA0OjE2IFBNIEJoYXNrYXIgQ2hvd2RodXJ5IDx1bml4Ymhh
c2thckBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gcy9mYWxnL2ZsYWcvcAo+Cj4gU2lnbmVkLW9mZi1i
eTogQmhhc2thciBDaG93ZGh1cnkgPHVuaXhiaGFza2FyQGdtYWlsLmNvbT4KCkFwcGxpZWQuICBU
aGFua3MhCgpBbGV4Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
ZGlzcGxheS5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rpc3BsYXku
Ywo+IGluZGV4IDJlOGE4YjU3NjM5Zi4uOTIyMzUwMmMxZTViIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGlzcGxheS5jCj4gQEAgLTUwOSw3ICs1MDksNyBAQCB1
aW50MzJfdCBhbWRncHVfZGlzcGxheV9zdXBwb3J0ZWRfZG9tYWlucyhzdHJ1Y3QgYW1kZ3B1X2Rl
dmljZSAqYWRldiwKPiAgICAgICAgICAqIHRvIGF2b2lkIGhhbmcgY2F1c2VkIGJ5IHBsYWNlbWVu
dCBvZiBzY2Fub3V0IEJPIGluIEdUVCBvbiBjZXJ0YWluCj4gICAgICAgICAgKiBBUFVzLiBTbyBm
b3JjZSB0aGUgQk8gcGxhY2VtZW50IHRvIFZSQU0gaW4gY2FzZSB0aGlzIGFyY2hpdGVjdHVyZQo+
ICAgICAgICAgICogd2lsbCBub3QgYWxsb3cgVVNXQyBtYXBwaW5ncy4KPiAtICAgICAgICAqIEFs
c28sIGRvbid0IGFsbG93IEdUVCBkb21haW4gaWYgdGhlIEJPIGRvZW5zJ3QgaGF2ZSBVU1dDIGZh
bGcgc2V0Lgo+ICsgICAgICAgICogQWxzbywgZG9uJ3QgYWxsb3cgR1RUIGRvbWFpbiBpZiB0aGUg
Qk8gZG9lbnMndCBoYXZlIFVTV0MgZmxhZyBzZXQuCj4gICAgICAgICAgKi8KPiAgICAgICAgIGlm
ICgoYm9fZmxhZ3MgJiBBTURHUFVfR0VNX0NSRUFURV9DUFVfR1RUX1VTV0MpICYmCj4gICAgICAg
ICAgICAgYW1kZ3B1X2JvX3N1cHBvcnRfdXN3Yyhib19mbGFncykgJiYKPiAtLQo+IDIuMjYuMgo+
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBhbWQt
Z2Z4IG1haWxpbmcgbGlzdAo+IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9hbWQtZ2Z4Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
