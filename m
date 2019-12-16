Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 68885121B7C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Dec 2019 22:09:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 976CE61733
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Dec 2019 21:09:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 87089617CC; Mon, 16 Dec 2019 21:09:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 86CF461811;
	Mon, 16 Dec 2019 21:08:05 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0BD0461733
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Dec 2019 21:07:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F2FB86180C; Mon, 16 Dec 2019 21:07:54 +0000 (UTC)
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by lists.linaro.org (Postfix) with ESMTPS id 1F01661733
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Dec 2019 21:07:38 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id c16so3708677oic.3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Dec 2019 13:07:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xf+PaVfK+fxzSPWZXkO3BuD6UEDzGPf8/U5sJKPnSqc=;
 b=S2jk4eUZrvQZDtAiCmMDXUVulMlGHA9paNlz8oETWCLbpb4gYFM4jTuEmyvHjlx8jR
 JtRsajT03M3pQAFQ0u1Ww5QiymRCXSaEqDjrVCdi6Oy0sWr13qGzHpuoklhDtqhKg2wv
 AMtxsltv5+PXTAsqJoIkYUjRmBHLvaRNijcRVGtgioNR5Qh/dh8yOQoPEfK/MLefUs6l
 ++mYd84W6t1AR5PpucjqA0yFRhBPDM0/VAI/dv4ItgDwNupVgNzStb/gGYc4DwlWGioL
 wrfcsFKj94Knd1ElZnXl5x3jBaypURZgi7jFBQCvseFEtYVHp+OW/XlChlu9XgcdUQGx
 oBFA==
X-Gm-Message-State: APjAAAUPfHpmhsElR9RPII4B8cqLMRvilY/HwF8ZMnwT0cuEBNKxcGwN
 44L49hT7Vq5+CdvwCuh2LALY8dsCIUfyifP1eQMlX7Qj
X-Google-Smtp-Source: APXvYqzWzDWclkNVDspqgaIn1PCLoKAhYWLJAEqeDwyrdeQGyKLOwB+UvmXjFNWeRKfvZFp0VvkubgYEQrTULqVw92E=
X-Received: by 2002:aca:c551:: with SMTP id v78mr600481oif.161.1576530457340; 
 Mon, 16 Dec 2019 13:07:37 -0800 (PST)
MIME-Version: 1.0
References: <20191216161059.269492-1-colin.king@canonical.com>
In-Reply-To: <20191216161059.269492-1-colin.king@canonical.com>
From: John Stultz <john.stultz@linaro.org>
Date: Mon, 16 Dec 2019 13:07:26 -0800
Message-ID: <CALAqxLVsFr6LLKvz9a5CRdddqhmMXUwKmfwqf3LRBbhksk5gHg@mail.gmail.com>
To: Colin King <colin.king@canonical.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kernel-janitors@vger.kernel.org, lkml <linux-kernel@vger.kernel.org>,
 Liam Mark <lmark@codeaurora.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Sandeep Patil <sspatil@android.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Brian Starkey <brian.starkey@arm.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH][next] dma-buf: fix resource leak on
	-ENOTTY error return path
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

T24gTW9uLCBEZWMgMTYsIDIwMTkgYXQgODoxMSBBTSBDb2xpbiBLaW5nIDxjb2xpbi5raW5nQGNh
bm9uaWNhbC5jb20+IHdyb3RlOgo+Cj4gRnJvbTogQ29saW4gSWFuIEtpbmcgPGNvbGluLmtpbmdA
Y2Fub25pY2FsLmNvbT4KPgo+IFRoZSAtRU5PVFRZIGVycm9yIHJldHVybiBwYXRoIGRvZXMgbm90
IGZyZWUgdGhlIGFsbG9jYXRlZAo+IGtkYXRhIGFzIGl0IHJldHVybnMgZGlyZWN0bHkuIEZpeCB0
aGlzIGJ5IHJldHVybmluZyB2aWEgdGhlCj4gZXJyb3IgaGFuZGxpbmcgbGFiZWwgZXJyLgo+Cj4g
QWRkcmVzc2VzLUNvdmVyaXR5OiAoIlJlc291cmNlIGxlYWsiKQo+IEZpeGVzOiBjMDJhODFmYmE3
NGYgKCJkbWEtYnVmOiBBZGQgZG1hLWJ1ZiBoZWFwcyBmcmFtZXdvcmsiKQo+IFNpZ25lZC1vZmYt
Ynk6IENvbGluIElhbiBLaW5nIDxjb2xpbi5raW5nQGNhbm9uaWNhbC5jb20+CgpBY2tlZC1ieTog
Sm9obiBTdHVsdHogPGpvaG4uc3R1bHR6QGxpbmFyby5vcmc+CgpUaGFua3Mgc28gbXVjaCBmb3Ig
c3VibWl0dGluZyB0aGlzIQoKU3VtaXQsIGRvIHlvdSBtaW5kIHF1ZXVlaW5nIHRoaXMgdXAgZm9y
IGRybS1taXNjLW5leHQ/Cgp0aGFua3MKLWpvaG4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK
