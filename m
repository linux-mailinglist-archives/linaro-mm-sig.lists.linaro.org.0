Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD1D1B82B4
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 25 Apr 2020 02:24:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A39E619D0
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 25 Apr 2020 00:24:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0D4F9619D4; Sat, 25 Apr 2020 00:24:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 58B8E619CF;
	Sat, 25 Apr 2020 00:24:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3CBD16199D
 for <linaro-mm-sig@lists.linaro.org>; Sat, 25 Apr 2020 00:24:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1FF10619CF; Sat, 25 Apr 2020 00:24:04 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by lists.linaro.org (Postfix) with ESMTPS id 469516199D
 for <linaro-mm-sig@lists.linaro.org>; Sat, 25 Apr 2020 00:24:03 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id g19so15674527otk.5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2020 17:24:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8DtbY+hrvIraJrx4Nh9U+69i+KyeK5TrEPRbni5wx1U=;
 b=ltjq44NJta3+ea6yuIdIr68O0FFn02cd6KMYf7JZYZVJg1lu9A/03vUwBksYg4sxM8
 YatQdySn4Cr5Li+hKD2zLI4mc6Dy2p+BWo1f/8HLfuNmejw9cvOpVGM86Gl9mdc3xF5M
 IXOUt/G7GclvcL2yaB/PX1IWisLLmLZBIccdVKNT/vcZ1LhKkSzbt6/W6ltIU1/SmW76
 RqyHRPWGR9K44y/PWn0fxLAkw+Vpny32QrpGSpvWakONi9HnsTf2HI2EaN47fOB/kvUJ
 95Gt8wlcUGThUEEPt8AtMV8kIWVlv/8Eg4OwcP3zO32v5TR1uPGRcrdxoYnTMGi/CtfJ
 6DlQ==
X-Gm-Message-State: AGi0PubnyeMzLefaXnoRJmctKqXk2NnoIIWUcFWpeluy60/+8jsm3r5b
 jPsBvay9gT/b+bhUFIjZ4dlb4t9lCINHUw7UcvFGlKGt
X-Google-Smtp-Source: APiQypI/oJ4eCDe/btPQXd2AND4zdGuWptjwylIaEjXOjM6KEi0hiu1hDHJSpsf2xW+KNi6jMm70KD4ysHR+K4zMdK4=
X-Received: by 2002:a9d:3988:: with SMTP id y8mr9388729otb.352.1587774242725; 
 Fri, 24 Apr 2020 17:24:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200424221758.15984-1-afd@ti.com>
In-Reply-To: <20200424221758.15984-1-afd@ti.com>
From: John Stultz <john.stultz@linaro.org>
Date: Fri, 24 Apr 2020 17:23:50 -0700
Message-ID: <CALAqxLUHYUkyCR7cFoLH89X_yrC3BMqc64iQoUiPyN5UqnYnvA@mail.gmail.com>
To: "Andrew F. Davis" <afd@ti.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Brian Starkey <Brian.Starkey@arm.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Liam Mark <lmark@codeaurora.org>
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: heaps: Initialize during core
	instead of subsys
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

T24gRnJpLCBBcHIgMjQsIDIwMjAgYXQgMzoxOCBQTSBBbmRyZXcgRi4gRGF2aXMgPGFmZEB0aS5j
b20+IHdyb3RlOgo+Cj4gU29tZSBjbGllbnRzIG9mIERNQS1IZWFwcyBwcm9iZSBlYXJsaWVyIHRo
YW4gc3Vic3lzX2luaXRjYWxsKCksIHRoaXMKPiBjYW4gY2F1c2UgaXNzdWVzIHdoZW4gdGhlc2Ug
Y2xpZW50cyBjYWxsIGRtYV9oZWFwX2FkZCgpIGJlZm9yZSB0aGUKPiBjb3JlIERNQS1IZWFwcyBm
cmFtZXdvcmsgaGFzIGluaXRpYWxpemVkLiBETUEtSGVhcHMgc2hvdWxkIGluaXRpYWxpemUKPiBk
dXJpbmcgY29yZSBzdGFydHVwIHRvIGdldCBhaGVhZCBvZiBhbGwgdXNlcnMuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBBbmRyZXcgRi4gRGF2aXMgPGFmZEB0aS5jb20+CgpObyBvYmplY3Rpb24gZnJvbSBt
ZSByaWdodCBvZmYuCgpBY2tlZC1ieTogSm9obiBTdHVsdHogPGpvaG4uc3R1bHR6QGxpbmFyby5v
cmc+Cgp0aGFua3MKLWpvaG4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK
