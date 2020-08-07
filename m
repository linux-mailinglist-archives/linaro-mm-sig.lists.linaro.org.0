Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 653DE24857E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:57:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 85F0160428
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:57:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 78E2C60E39; Tue, 18 Aug 2020 12:57:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 368066670A;
	Tue, 18 Aug 2020 12:33:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 19950617B9
 for <linaro-mm-sig@lists.linaro.org>; Fri,  7 Aug 2020 00:27:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EF24A61951; Fri,  7 Aug 2020 00:27:54 +0000 (UTC)
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by lists.linaro.org (Postfix) with ESMTPS id 23628617B9
 for <linaro-mm-sig@lists.linaro.org>; Fri,  7 Aug 2020 00:27:54 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id p4so318033qkf.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 06 Aug 2020 17:27:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DGA8+gwrB3sAonXBmChAGNY7ZvvzV2hTqZrY8zZK8EE=;
 b=Av4lfUxCPiN0StU9GLKLCMFLANu3dI05kEJaupkE7Ln9pa28DraVsNGD9r/tqJHbNe
 aMgMk6GBbB2GD2gRudVe5qgorBD1Nv5vAqcZz3die8qFlZffGsTFWqtQ03M7qz1RbKL+
 KLiNMb3b+RE8rReM8jLiw1yrgmxSooN8jMpza+2IwjM7K6GKzSiPs7bPmbPOF3ky/YQL
 2wk/VnOLnhRqf92Iod8Xyy5HybpdFt1cu6x7t+8qwAbeavDH3CGd2vj9PtJklXMezScW
 MsstMRfR8vBLZZzde28UFfJowJOqZlrxqjLPbWnr2fYsXaB62sq+Jtm1bgcYXOf36M1E
 0kUw==
X-Gm-Message-State: AOAM533f25GrrSw1E0i475Tg186GzCpiP0wmeCEkL5NtlVen4cKwKrmj
 njFtV2pBPSFIEoc6CkI6O/DnBf8Yfqvo1a9aqGwQbw==
X-Google-Smtp-Source: ABdhPJxYSpi1BHzeBCHwCIqOzLWVTcTjGnDSiBqngNyrcb+IxPDN8WOHCv0iGeIsP7xXL3Opes7weirBZfL8IM+8VEk=
X-Received: by 2002:a37:a088:: with SMTP id
 j130mr11365723qke.147.1596760073565; 
 Thu, 06 Aug 2020 17:27:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200805112655.17696-1-colin.king@canonical.com>
In-Reply-To: <20200805112655.17696-1-colin.king@canonical.com>
From: Hridya Valsaraju <hridya@google.com>
Date: Thu, 6 Aug 2020 17:27:17 -0700
Message-ID: <CA+wgaPPL_sdo+fkQa3pqNmTadg9X6mfJZy5nyR5YTt4L6pHWtg@mail.gmail.com>
To: Colin King <colin.king@canonical.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:33 +0000
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 linaro-mm-sig@lists.linaro.org, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, Suren Baghdasaryan <surenb@google.com>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] staging: ion: fix spelling mistake in
 function name "detatch" -> "detach"
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

T24gV2VkLCBBdWcgNSwgMjAyMCBhdCA0OjI2IEFNIENvbGluIEtpbmcgPGNvbGluLmtpbmdAY2Fu
b25pY2FsLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBDb2xpbiBJYW4gS2luZyA8Y29saW4ua2luZ0Bj
YW5vbmljYWwuY29tPgo+Cj4gVGhlcmUgaXMgYSBzcGVsbGluZyBtaXN0YWtlIGluIHRoZSBmdW5j
dGlvbiBuYW1lIGlvbl9kbWFfYnVmX2RldGF0Y2guCj4gRml4IGl0IGJ5IHJlbW92aW5nIHRoZSBl
eHRyYW5lb3VzIHQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDb2xpbiBJYW4gS2luZyA8Y29saW4ua2lu
Z0BjYW5vbmljYWwuY29tPgo+IC0tLQoKVGhhbmtzIENvbGluIQpBY2tlZC1ieTogSHJpZHlhIFZh
bHNhcmFqdSA8aHJpZHlhQGdvb2dsZS5jb20+Cgo+ICBkcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9p
b24vaW9uLmMgfCA2ICsrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lv
bi9pb24uYyBiL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYwo+IGluZGV4IDNjOWYw
OTUwNmZmYS4uZTFmZTAzY2ViN2YxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9hbmRy
b2lkL2lvbi9pb24uYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYwo+
IEBAIC0yMDUsOCArMjA1LDggQEAgc3RhdGljIGludCBpb25fZG1hX2J1Zl9hdHRhY2goc3RydWN0
IGRtYV9idWYgKmRtYWJ1ZiwKPiAgICAgICAgIHJldHVybiAwOwo+ICB9Cj4KPiAtc3RhdGljIHZv
aWQgaW9uX2RtYV9idWZfZGV0YXRjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLAo+IC0gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNo
bWVudCkKPiArc3RhdGljIHZvaWQgaW9uX2RtYV9idWZfZGV0YWNoKHN0cnVjdCBkbWFfYnVmICpk
bWFidWYsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkbWFfYnVmX2F0
dGFjaG1lbnQgKmF0dGFjaG1lbnQpCj4gIHsKPiAgICAgICAgIHN0cnVjdCBpb25fZG1hX2J1Zl9h
dHRhY2htZW50ICphID0gYXR0YWNobWVudC0+cHJpdjsKPiAgICAgICAgIHN0cnVjdCBpb25fYnVm
ZmVyICpidWZmZXIgPSBkbWFidWYtPnByaXY7Cj4gQEAgLTMzMSw3ICszMzEsNyBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IGRtYV9idWZfb3BzIGRtYV9idWZfb3BzID0gewo+ICAgICAgICAgLm1tYXAg
PSBpb25fbW1hcCwKPiAgICAgICAgIC5yZWxlYXNlID0gaW9uX2RtYV9idWZfcmVsZWFzZSwKPiAg
ICAgICAgIC5hdHRhY2ggPSBpb25fZG1hX2J1Zl9hdHRhY2gsCj4gLSAgICAgICAuZGV0YWNoID0g
aW9uX2RtYV9idWZfZGV0YXRjaCwKPiArICAgICAgIC5kZXRhY2ggPSBpb25fZG1hX2J1Zl9kZXRh
Y2gsCj4gICAgICAgICAuYmVnaW5fY3B1X2FjY2VzcyA9IGlvbl9kbWFfYnVmX2JlZ2luX2NwdV9h
Y2Nlc3MsCj4gICAgICAgICAuZW5kX2NwdV9hY2Nlc3MgPSBpb25fZG1hX2J1Zl9lbmRfY3B1X2Fj
Y2VzcywKPiAgfTsKPiAtLQo+IDIuMjcuMAo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
