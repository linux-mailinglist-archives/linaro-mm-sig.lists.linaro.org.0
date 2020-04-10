Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9D11A4304
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Apr 2020 09:32:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9EA0366631
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Apr 2020 07:32:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 91DCE6663F; Fri, 10 Apr 2020 07:32:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7F4766611;
	Fri, 10 Apr 2020 07:32:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3EB2961942
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2020 07:32:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1BCAF66611; Fri, 10 Apr 2020 07:32:16 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 472AF61942
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2020 07:32:15 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F13B420757;
 Fri, 10 Apr 2020 07:32:13 +0000 (UTC)
Date: Fri, 10 Apr 2020 09:32:11 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Message-ID: <20200410073211.GA1668699@kroah.com>
References: <20200409171318.1730-1-vkor@vkten.in>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409171318.1730-1-vkor@vkten.in>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Subject: Re: [Linaro-mm-sig] [PATCH v2] staging: android: ion: use macro
 DEFINE_DEBUGFS_ATTRIBUTE to define debugfs fops
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

T24gVGh1LCBBcHIgMDksIDIwMjAgYXQgMTA6NDM6MThQTSArMDUzMCwgUiBWZWVyYSBLdW1hciB3
cm90ZToKPiBJdCBpcyBtb3JlIGNsZWFyIHRvIHVzZSBERUZJTkVfREVCVUdGU19BVFRSSUJVVEUg
dG8gZGVmaW5lIGRlYnVnZnMgZmlsZQo+IG9wZXJhdGlvbiByYXRoZXIgdGhhbiBERUZJTkVfU0lN
UExFX0FUVFJJQlVURS4KCk5vLCBpdCBpcyBub3QgIm1vcmUgY2xlYXIiLCB0aGUgdHdvIGRlZmlu
ZXMgYXJlIG5vdCB0aGUgc2FtZSB0aGluZywgdGhleQpkbyBkaWZmZXJlbnQgdGhpbmdzLiAgSWYg
dGhleSB3ZXJlIGp1c3QgaWRlbnRpY2FsLCB3ZSB3b3VsZCBub3QgbmVlZAp0aGVtIGJvdGggOikK
ClNvIHBsZWFzZSBiZSB2ZXJ5IGV4cGxpY2l0IGFzIHRvIF93aHlfIHlvdSB3YW50IHRvIGNoYW5n
ZSB0aGlzLCBhbmQgc2hvdwpob3cgeW91IGhhdmUgdmVyaWZpZWQgdGhhdCBjaGFuZ2luZyB0aGlz
IGlzIHRoZSBjb3JyZWN0IHRoaW5nIHRvIGRvLCBhbmQKaG93IHlvdSB0ZXN0ZWQuICBCZWNhdXNl
IHRoZSB1c2VyLXZpc2libGUgY2hhbmdlIGNhbiBiZSBxdWl0ZSBkaWZmZXJlbnQKd2l0aCB0aGlz
IHR5cGUgb2Yga2VybmVsIGNoYW5nZS4KCnRoYW5rcywKCmdyZWcgay1oCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
