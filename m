Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 988A41FB17E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2020 15:03:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD69865F72
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2020 13:03:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AF861664FE; Tue, 16 Jun 2020 13:03:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B454561808;
	Tue, 16 Jun 2020 13:02:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9982F6171A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2020 13:02:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 816F161808; Tue, 16 Jun 2020 13:02:44 +0000 (UTC)
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by lists.linaro.org (Postfix) with ESMTPS id 6F8846171A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2020 13:02:43 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id s13so15830528otd.7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2020 06:02:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NzTqWXpX+jIvy6nNJlsuFOKnjF4HL8dCMVxHFmjhNpc=;
 b=L/WLTteF3F5rVKg/cO2JXHsreIsHcsS3IjisDEmXYUrx1l6/oQOiTabY4J3jikuZLb
 YaG9ptLFExzev7f/JXOOVb0eqafVc3ZIg9G33EgSh7F4mrc1OsV4izOqoYThZAn+K1pP
 ceIeU1ZP/vli9wvKj20puYB99SSaITO1OtSQIvlxSfHPrOFJdF/MRAS/ZBzINrfNlRHx
 apXaj7ZC9WCG7F1Zk/qOR7fh9KAN/CI8xgzrwzY5+HgdIOibgVdWjISpTgmQlCN1rAuf
 Vs3VP4cUC9Fx+YfxTge3G5fBCowXN1YnEnZklUwqMVPaTLFQpRMqFwfc2d7JxZ2c/x51
 eCvQ==
X-Gm-Message-State: AOAM530FO5EClWd4QjTWve53O+9k0UfIQQSvRhk/r3j68YXAbbnvT2V3
 vEx2UzlY5dc3CaTjRy9Obm5X02pcg/LzEbD3eTh2HfUG
X-Google-Smtp-Source: ABdhPJxsO1eVEcTPZvlTMUrXhz7ujf5MbjRiGA+lB51S5epUV5ph0XXmivVwvq7RJRM5fxua8F5YwdkG3RxhSDPGT/s=
X-Received: by 2002:a05:6830:242e:: with SMTP id
 k14mr2249753ots.36.1592312562394; 
 Tue, 16 Jun 2020 06:02:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200611114418.19852-1-sumit.semwal@linaro.org>
 <CAO_48GFVYOv8Km7fEh8iBPp7d5ziySBV0vB9nu_+oset6hBO8w@mail.gmail.com>
 <159231181752.18853.1290700688849491922@build.alporthouse.com>
In-Reply-To: <159231181752.18853.1290700688849491922@build.alporthouse.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 16 Jun 2020 18:32:31 +0530
Message-ID: <CAO_48GE8K_nDXs_LDU9caRdP-aK9DWV3vXcD4EuVCxyShCBbmg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Arnd Bergmann <arnd@arndb.de>, Chenbo Feng <fengc@google.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>,
 syzbot+3643a18836bce555bff6@syzkaller.appspotmail.com,
 Charan Teja Reddy <charante@codeaurora.org>,
 "# 3.4.x" <stable@vger.kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH v2] dma-buf: Move dma_buf_release() from
	fops to dentry_ops
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

SGkgQ2hyaXMsCgpPbiBUdWUsIDE2IEp1biAyMDIwIGF0IDE4OjIwLCBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cj4KPiBRdW90aW5nIFN1bWl0IFNlbXdhbCAo
MjAyMC0wNi0xNiAxMzo0MjoxMykKPiA+IEhlbGxvLAo+ID4KPiA+IElmIHRoZXJlIGFyZSBubyBv
YmplY3Rpb25zIHRvIHRoaXMsIEkgd2lsbCBwbGFuIHRvIG1lcmdlIGl0IHNvb24uCj4KPiBJIHdh
cyBnb2luZyB0byBzdWdnZXN0IHJ1bm5pbmcgaXQgYWdhaW5zdCBvdXIgQ0ksIGJ1dCB0aGF0J3Mg
dW5hdmFpbGFibGUKPiBhdCB0aGUgbW9tZW50Lgo+Cj4gVGhlcmUncyBhIHBhcnRpY3VsYXJseSBu
YXN0eSBCVUdfT04oKSBpbiBkbWFfYnVmX3JlbGVhc2UgdGhhdCB3ZSBoaXQKPiBpcnJlZ3VsYXJs
eSwgdGhhdCB0aGlzIG1pZ2h0IGhlbHAgd2l0aC4KVGhhbmtzIGZvciB5b3VyIHJlcGx5OyBpZiB0
aGUgQ0kgaXMgZ29pbmcgdG8gYmUgYXZhaWxhYmxlIGluIGEgY291cGxlCm9mIGRheXMsIHdlIGNv
dWxkIHdhaXQgLSBpdCdkIGJlIGRlZmluaXRlbHkgZ29vZCB0byBzZWUgYSBidWcgYmVpbmcKc3Bs
YXR0ZXJlZCBvdXQhCgo+IC1DaHJpcwoKQmVzdCwKU3VtaXQuCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
