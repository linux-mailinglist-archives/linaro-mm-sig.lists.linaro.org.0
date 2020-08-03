Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB03248512
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:48:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6520C60428
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:48:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 51C8D60EFE; Tue, 18 Aug 2020 12:48:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9F700666E1;
	Tue, 18 Aug 2020 12:32:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DDD8A60DF8
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 16:00:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D312561653; Mon,  3 Aug 2020 16:00:14 +0000 (UTC)
Received: from mail-vk1-f196.google.com (mail-vk1-f196.google.com
 [209.85.221.196])
 by lists.linaro.org (Postfix) with ESMTPS id 7BFC960DF8
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 16:00:13 +0000 (UTC)
Received: by mail-vk1-f196.google.com with SMTP id q72so1183963vkb.11
 for <linaro-mm-sig@lists.linaro.org>; Mon, 03 Aug 2020 09:00:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AQC5OSI+ot4HICgMI1hBiF+Gos4KF9rtoTAXqBLWz5k=;
 b=cOYjRFcKtqLTPhDRaFMjx47/46aDVQXMx6VxEOdMTnOk7grWctHVWr5q2QWqFAneU3
 qRVPKCRXUWLd7gttXkUXP2q9gm+5jdTs8ETPUcyFvJYM5QVSW4zdi52iXIWyA1GQfp5U
 dnKwwUUks0nCxHohOCJYQHgH9hsaTvxTBssCpuKSCcbFtzVtsa7gIx0i15dDAlUjSXPN
 OJFnp057UmmKliWJJ/vlFNCbKKYCsH/pAPLsMhCqg9k7LmKMr4zrArRYGspm6cz9hMsU
 FA19v7LEs2q0nPWMmRCs2zOTkgnsJ95aVuGqTgl3Kw9MzFCAL+XbTIxz852SEt9ATjdu
 3D1g==
X-Gm-Message-State: AOAM5311T3KowJiwDxnGiRSX53/AsrWNo4ADraJK5JQjt+BMxNAI1udf
 nvfX+dbGGtirfiP1OzvV1LEyjQMT+IyMc0H1NNAvLQ==
X-Google-Smtp-Source: ABdhPJxBkWFzXg/y1w5xTYtUJSHjvCQFO/a1nE0RcfXFpI2HgJqGujkazyU0S+p/ymKJ5J9VS+bR1YpMln1PD/g9du0=
X-Received: by 2002:a1f:9651:: with SMTP id y78mr1828501vkd.5.1596470412618;
 Mon, 03 Aug 2020 09:00:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200803144719.3184138-1-kaleshsingh@google.com>
 <20200803144719.3184138-3-kaleshsingh@google.com>
 <20200803154125.GA23808@casper.infradead.org>
In-Reply-To: <20200803154125.GA23808@casper.infradead.org>
From: Suren Baghdasaryan <surenb@google.com>
Date: Mon, 3 Aug 2020 09:00:00 -0700
Message-ID: <CAJuCfpFLikjaoopvt+vGN3W=m9auoK+DLQNgUf-xUbYfC=83Mw@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:32 +0000
Cc: Jonathan Corbet <corbet@lwn.net>,
 DRI mailing list <dri-devel@lists.freedesktop.org>, linux-doc@vger.kernel.org,
 Ioannis Ilkos <ilkos@google.com>, LKML <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, linaro-mm-sig@lists.linaro.org,
 Hridya Valsaraju <hridya@google.com>, Ingo Molnar <mingo@redhat.com>,
 John Stultz <john.stultz@linaro.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Kalesh Singh <kaleshsingh@google.com>, linux-fsdevel@vger.kernel.org,
 kernel-team <kernel-team@android.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 2/2] dmabuf/tracing: Add dma-buf trace
	events
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

T24gTW9uLCBBdWcgMywgMjAyMCBhdCA4OjQxIEFNIE1hdHRoZXcgV2lsY294IDx3aWxseUBpbmZy
YWRlYWQub3JnPiB3cm90ZToKPgo+IE9uIE1vbiwgQXVnIDAzLCAyMDIwIGF0IDAyOjQ3OjE5UE0g
KzAwMDAsIEthbGVzaCBTaW5naCB3cm90ZToKPiA+ICtzdGF0aWMgdm9pZCBkbWFfYnVmX2ZkX2lu
c3RhbGwoaW50IGZkLCBzdHJ1Y3QgZmlsZSAqZmlscCkKPiA+ICt7Cj4gPiArICAgICB0cmFjZV9k
bWFfYnVmX2ZkX3JlZl9pbmMoY3VycmVudCwgZmlscCk7Cj4gPiArfQo+Cj4gWW91J3JlIGFkZGlu
ZyBhIG5ldyBmaWxlX29wZXJhdGlvbiBpbiBvcmRlciB0byBqdXN0IGFkZCBhIG5ldyB0cmFjZXBv
aW50Pwo+IE5BQ0suCgpIaSBNYXR0aGV3LApUaGUgcGxhbiBpcyB0byBhdHRhY2ggYSBCUEYgdG8g
dGhpcyB0cmFjZXBvaW50IGluIG9yZGVyIHRvIHRyYWNrCmRtYS1idWYgdXNlcnMuIElmIHlvdSBm
ZWVsIHRoaXMgaXMgYW4gb3ZlcmtpbGwsIHdoYXQgd291bGQgeW91IHN1Z2dlc3QKYXMgYW4gYWx0
ZXJuYXRpdmU/Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==
