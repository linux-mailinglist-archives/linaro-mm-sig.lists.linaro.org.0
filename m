Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DA83224850A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:47:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06BE260665
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:47:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EAF5E60EFE; Tue, 18 Aug 2020 12:47:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0D185666DE;
	Tue, 18 Aug 2020 12:32:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 367C561513
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 15:41:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 173ED61653; Mon,  3 Aug 2020 15:41:46 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by lists.linaro.org (Postfix) with ESMTPS id BDF7961513
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 15:41:44 +0000 (UTC)
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1k2cab-0007Dl-Uy; Mon, 03 Aug 2020 15:41:26 +0000
Date: Mon, 3 Aug 2020 16:41:25 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Kalesh Singh <kaleshsingh@google.com>
Message-ID: <20200803154125.GA23808@casper.infradead.org>
References: <20200803144719.3184138-1-kaleshsingh@google.com>
 <20200803144719.3184138-3-kaleshsingh@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200803144719.3184138-3-kaleshsingh@google.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:33 +0000
Cc: linux-doc@vger.kernel.org, kernel-team@android.com,
 dri-devel@lists.freedesktop.org, Jonathan Corbet <corbet@lwn.net>,
 Ioannis Ilkos <ilkos@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, linaro-mm-sig@lists.linaro.org,
 Hridya Valsaraju <hridya@google.com>, Ingo Molnar <mingo@redhat.com>,
 John Stultz <john.stultz@linaro.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
 linux-media@vger.kernel.org
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

T24gTW9uLCBBdWcgMDMsIDIwMjAgYXQgMDI6NDc6MTlQTSArMDAwMCwgS2FsZXNoIFNpbmdoIHdy
b3RlOgo+ICtzdGF0aWMgdm9pZCBkbWFfYnVmX2ZkX2luc3RhbGwoaW50IGZkLCBzdHJ1Y3QgZmls
ZSAqZmlscCkKPiArewo+ICsJdHJhY2VfZG1hX2J1Zl9mZF9yZWZfaW5jKGN1cnJlbnQsIGZpbHAp
Owo+ICt9CgpZb3UncmUgYWRkaW5nIGEgbmV3IGZpbGVfb3BlcmF0aW9uIGluIG9yZGVyIHRvIGp1
c3QgYWRkIGEgbmV3IHRyYWNlcG9pbnQ/Ck5BQ0suCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
